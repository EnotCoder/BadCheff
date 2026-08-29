package org.godotengine.godot;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.vending.expansion.downloader.impl.DownloaderService;

/* JADX INFO: loaded from: classes2.dex */
public class GodotDownloaderService extends DownloaderService {
    private static final String BASE64_PUBLIC_KEY = "REPLACE THIS WITH YOUR PUBLIC KEY";
    private static final byte[] SALT = {1, 43, -12, -1, 54, 98, -100, -12, 43, 2, -8, -4, 9, 5, -106, -108, -33, 45, -1, 84};

    @Override // com.google.android.vending.expansion.downloader.impl.DownloaderService
    public String getPublicKey() {
        SharedPreferences prefs = getApplicationContext().getSharedPreferences("app_data_keys", 0);
        Log.d("GODOT", "getting public key:" + prefs.getString("store_public_key", null));
        return prefs.getString("store_public_key", null);
    }

    @Override // com.google.android.vending.expansion.downloader.impl.DownloaderService
    public byte[] getSALT() {
        return SALT;
    }

    @Override // com.google.android.vending.expansion.downloader.impl.DownloaderService
    public String getAlarmReceiverClassName() {
        Log.d("GODOT", "getAlarmReceiverClassName()");
        return GodotDownloaderAlarmReceiver.class.getName();
    }
}
