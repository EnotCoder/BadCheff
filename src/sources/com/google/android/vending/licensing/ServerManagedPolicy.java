package com.google.android.vending.licensing;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.vending.licensing.util.URIQueryDecoder;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ServerManagedPolicy implements Policy {
    private static final String DEFAULT_MAX_RETRIES = "0";
    private static final String DEFAULT_RETRY_COUNT = "0";
    private static final String DEFAULT_RETRY_UNTIL = "0";
    private static final String DEFAULT_VALIDITY_TIMESTAMP = "0";
    private static final long MILLIS_PER_MINUTE = 60000;
    private static final String PREFS_FILE = "com.google.android.vending.licensing.ServerManagedPolicy";
    private static final String PREF_LAST_RESPONSE = "lastResponse";
    private static final String PREF_LICENSING_URL = "licensingUrl";
    private static final String PREF_MAX_RETRIES = "maxRetries";
    private static final String PREF_RETRY_COUNT = "retryCount";
    private static final String PREF_RETRY_UNTIL = "retryUntil";
    private static final String PREF_VALIDITY_TIMESTAMP = "validityTimestamp";
    private static final String TAG = "ServerManagedPolicy";
    private int mLastResponse;
    private long mLastResponseTime = 0;
    private String mLicensingUrl;
    private long mMaxRetries;
    private PreferenceObfuscator mPreferences;
    private long mRetryCount;
    private long mRetryUntil;
    private long mValidityTimestamp;

    public ServerManagedPolicy(Context context, Obfuscator obfuscator) {
        SharedPreferences sp = context.getSharedPreferences(PREFS_FILE, 0);
        PreferenceObfuscator preferenceObfuscator = new PreferenceObfuscator(sp, obfuscator);
        this.mPreferences = preferenceObfuscator;
        this.mLastResponse = Integer.parseInt(preferenceObfuscator.getString(PREF_LAST_RESPONSE, Integer.toString(Policy.RETRY)));
        this.mValidityTimestamp = Long.parseLong(this.mPreferences.getString(PREF_VALIDITY_TIMESTAMP, "0"));
        this.mRetryUntil = Long.parseLong(this.mPreferences.getString(PREF_RETRY_UNTIL, "0"));
        this.mMaxRetries = Long.parseLong(this.mPreferences.getString(PREF_MAX_RETRIES, "0"));
        this.mRetryCount = Long.parseLong(this.mPreferences.getString(PREF_RETRY_COUNT, "0"));
        this.mLicensingUrl = this.mPreferences.getString(PREF_LICENSING_URL, null);
    }

    @Override // com.google.android.vending.licensing.Policy
    public void processServerResponse(int response, ResponseData rawData) {
        if (response != 291) {
            setRetryCount(0L);
        } else {
            setRetryCount(this.mRetryCount + 1);
        }
        Map<String, String> extras = decodeExtras(rawData);
        if (response == 256) {
            this.mLastResponse = response;
            setLicensingUrl(null);
            setValidityTimestamp(extras.get("VT"));
            setRetryUntil(extras.get("GT"));
            setMaxRetries(extras.get("GR"));
        } else if (response == 561) {
            setValidityTimestamp("0");
            setRetryUntil("0");
            setMaxRetries("0");
            setLicensingUrl(extras.get("LU"));
        }
        setLastResponse(response);
        this.mPreferences.commit();
    }

    private void setLastResponse(int l) {
        this.mLastResponseTime = System.currentTimeMillis();
        this.mLastResponse = l;
        this.mPreferences.putString(PREF_LAST_RESPONSE, Integer.toString(l));
    }

    private void setRetryCount(long c) {
        this.mRetryCount = c;
        this.mPreferences.putString(PREF_RETRY_COUNT, Long.toString(c));
    }

    public long getRetryCount() {
        return this.mRetryCount;
    }

    private void setValidityTimestamp(String validityTimestamp) {
        Long lValidityTimestamp;
        try {
            lValidityTimestamp = Long.valueOf(Long.parseLong(validityTimestamp));
        } catch (NumberFormatException e) {
            Log.w(TAG, "License validity timestamp (VT) missing, caching for a minute");
            Long lValidityTimestamp2 = Long.valueOf(System.currentTimeMillis() + 60000);
            validityTimestamp = Long.toString(lValidityTimestamp2.longValue());
            lValidityTimestamp = lValidityTimestamp2;
        }
        this.mValidityTimestamp = lValidityTimestamp.longValue();
        this.mPreferences.putString(PREF_VALIDITY_TIMESTAMP, validityTimestamp);
    }

    public long getValidityTimestamp() {
        return this.mValidityTimestamp;
    }

    private void setRetryUntil(String retryUntil) {
        Long lRetryUntil;
        try {
            lRetryUntil = Long.valueOf(Long.parseLong(retryUntil));
        } catch (NumberFormatException e) {
            Log.w(TAG, "License retry timestamp (GT) missing, grace period disabled");
            retryUntil = "0";
            lRetryUntil = 0L;
        }
        this.mRetryUntil = lRetryUntil.longValue();
        this.mPreferences.putString(PREF_RETRY_UNTIL, retryUntil);
    }

    public long getRetryUntil() {
        return this.mRetryUntil;
    }

    private void setMaxRetries(String maxRetries) {
        Long lMaxRetries;
        try {
            lMaxRetries = Long.valueOf(Long.parseLong(maxRetries));
        } catch (NumberFormatException e) {
            Log.w(TAG, "Licence retry count (GR) missing, grace period disabled");
            maxRetries = "0";
            lMaxRetries = 0L;
        }
        this.mMaxRetries = lMaxRetries.longValue();
        this.mPreferences.putString(PREF_MAX_RETRIES, maxRetries);
    }

    public long getMaxRetries() {
        return this.mMaxRetries;
    }

    private void setLicensingUrl(String url) {
        this.mLicensingUrl = url;
        this.mPreferences.putString(PREF_LICENSING_URL, url);
    }

    @Override // com.google.android.vending.licensing.Policy
    public String getLicensingUrl() {
        return this.mLicensingUrl;
    }

    @Override // com.google.android.vending.licensing.Policy
    public boolean allowAccess() {
        long ts = System.currentTimeMillis();
        int i = this.mLastResponse;
        if (i == 256) {
            if (ts <= this.mValidityTimestamp) {
                return true;
            }
        } else if (i == 291 && ts < this.mLastResponseTime + 60000) {
            return ts <= this.mRetryUntil || this.mRetryCount <= this.mMaxRetries;
        }
        return false;
    }

    private Map<String, String> decodeExtras(ResponseData rawData) {
        Map<String, String> results = new HashMap<>();
        if (rawData == null) {
            return results;
        }
        try {
            URI rawExtras = new URI("?" + rawData.extra);
            URIQueryDecoder.DecodeQuery(rawExtras, results);
        } catch (URISyntaxException e) {
            Log.w(TAG, "Invalid syntax error while decoding extras data from server.");
        }
        return results;
    }
}
