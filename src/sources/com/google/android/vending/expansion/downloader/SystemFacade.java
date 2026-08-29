package com.google.android.vending.expansion.downloader;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
class SystemFacade {
    private Context mContext;
    private NotificationManager mNotificationManager;

    public SystemFacade(Context context) {
        this.mContext = context;
        this.mNotificationManager = (NotificationManager) context.getSystemService("notification");
    }

    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    public Integer getActiveNetworkType() {
        ConnectivityManager connectivity = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        if (connectivity == null) {
            Log.w(Constants.TAG, "couldn't get connectivity manager");
            return null;
        }
        NetworkInfo activeInfo = connectivity.getActiveNetworkInfo();
        if (activeInfo == null) {
            return null;
        }
        return Integer.valueOf(activeInfo.getType());
    }

    public boolean isNetworkRoaming() {
        ConnectivityManager connectivity = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        boolean z = false;
        if (connectivity == null) {
            Log.w(Constants.TAG, "couldn't get connectivity manager");
            return false;
        }
        NetworkInfo info = connectivity.getActiveNetworkInfo();
        boolean isMobile = info != null && info.getType() == 0;
        TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
        if (tm == null) {
            Log.w(Constants.TAG, "couldn't get telephony manager");
            return false;
        }
        if (isMobile && tm.isNetworkRoaming()) {
            z = true;
        }
        boolean isRoaming = z;
        return isRoaming;
    }

    public Long getMaxBytesOverMobile() {
        return 2147483647L;
    }

    public Long getRecommendedMaxBytesOverMobile() {
        return 2097152L;
    }

    public void sendBroadcast(Intent intent) {
        this.mContext.sendBroadcast(intent);
    }

    public boolean userOwnsPackage(int uid, String packageName) throws PackageManager.NameNotFoundException {
        return this.mContext.getPackageManager().getApplicationInfo(packageName, 0).uid == uid;
    }

    public void postNotification(long id, Notification notification) {
        this.mNotificationManager.notify((int) id, notification);
    }

    public void cancelNotification(long id) {
        this.mNotificationManager.cancel((int) id);
    }

    public void cancelAllNotifications() {
        this.mNotificationManager.cancelAll();
    }

    public void startThread(Thread thread) {
        thread.start();
    }
}
