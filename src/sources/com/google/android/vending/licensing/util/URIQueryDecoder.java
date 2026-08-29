package com.google.android.vending.licensing.util;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Map;
import java.util.Scanner;

/* JADX INFO: loaded from: classes2.dex */
public class URIQueryDecoder {
    private static final String TAG = "URIQueryDecoder";

    public static void DecodeQuery(URI encodedURI, Map<String, String> results) {
        String value;
        Scanner scanner = new Scanner(encodedURI.getRawQuery());
        scanner.useDelimiter("&");
        while (scanner.hasNext()) {
            try {
                String param = scanner.next();
                String[] valuePair = param.split("=");
                if (valuePair.length == 1) {
                    value = null;
                } else if (valuePair.length == 2) {
                    value = URLDecoder.decode(valuePair[1], "UTF-8");
                } else {
                    throw new IllegalArgumentException("query parameter invalid");
                }
                String name = URLDecoder.decode(valuePair[0], "UTF-8");
                results.put(name, value);
            } catch (UnsupportedEncodingException e) {
                Log.e(TAG, "UTF-8 Not Recognized as a charset.  Device configuration Error.");
                return;
            }
        }
    }
}
