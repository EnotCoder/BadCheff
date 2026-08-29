package com.google.android.vending.licensing;

import android.util.Log;
import com.google.android.vending.licensing.util.URIQueryDecoder;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class StrictPolicy implements Policy {
    private static final String TAG = "StrictPolicy";
    private int mLastResponse = Policy.RETRY;
    private String mLicensingUrl = null;

    @Override // com.google.android.vending.licensing.Policy
    public void processServerResponse(int response, ResponseData rawData) {
        this.mLastResponse = response;
        if (response == 561) {
            Map<String, String> extras = decodeExtras(rawData);
            this.mLicensingUrl = extras.get("LU");
        }
    }

    @Override // com.google.android.vending.licensing.Policy
    public boolean allowAccess() {
        return this.mLastResponse == 256;
    }

    @Override // com.google.android.vending.licensing.Policy
    public String getLicensingUrl() {
        return this.mLicensingUrl;
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
