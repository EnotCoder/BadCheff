package org.godotengine.godot.utils;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.util.Base64;
import android.util.Log;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes2.dex */
public class GodotNetUtils {
    private WifiManager.MulticastLock multicastLock;

    public GodotNetUtils(Context context) {
        if (PermissionsUtil.hasManifestPermission(context, "android.permission.CHANGE_WIFI_MULTICAST_STATE")) {
            WifiManager wifi = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            WifiManager.MulticastLock multicastLockCreateMulticastLock = wifi.createMulticastLock("GodotMulticastLock");
            this.multicastLock = multicastLockCreateMulticastLock;
            multicastLockCreateMulticastLock.setReferenceCounted(true);
        }
    }

    public void multicastLockAcquire() {
        WifiManager.MulticastLock multicastLock = this.multicastLock;
        if (multicastLock == null) {
            return;
        }
        try {
            multicastLock.acquire();
        } catch (RuntimeException e) {
            Log.e("Godot", "Exception during multicast lock acquire: " + e);
        }
    }

    public void multicastLockRelease() {
        WifiManager.MulticastLock multicastLock = this.multicastLock;
        if (multicastLock == null) {
            return;
        }
        try {
            multicastLock.release();
        } catch (RuntimeException e) {
            Log.e("Godot", "Exception during multicast lock release: " + e);
        }
    }

    public static String getCACertificates() {
        try {
            KeyStore ks = KeyStore.getInstance("AndroidCAStore");
            StringBuilder writer = new StringBuilder();
            if (ks != null) {
                ks.load(null, null);
                Enumeration<String> aliases = ks.aliases();
                while (aliases.hasMoreElements()) {
                    String alias = aliases.nextElement();
                    X509Certificate cert = (X509Certificate) ks.getCertificate(alias);
                    writer.append("-----BEGIN CERTIFICATE-----\n");
                    writer.append(Base64.encodeToString(cert.getEncoded(), 0));
                    writer.append("-----END CERTIFICATE-----\n");
                }
            }
            return writer.toString();
        } catch (Exception e) {
            Log.e("Godot", "Exception while reading CA certificates: " + e);
            return "";
        }
    }
}
