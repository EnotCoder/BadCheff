package com.google.android.vending.expansion.downloader.impl;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CustomIntentService extends Service {
    private static final String LOG_TAG = "CustomIntentService";
    private static final int WHAT_MESSAGE = -10;
    private String mName;
    private boolean mRedelivery;
    private volatile ServiceHandler mServiceHandler;
    private volatile Looper mServiceLooper;

    protected abstract void onHandleIntent(Intent intent);

    protected abstract boolean shouldStop();

    public CustomIntentService(String paramString) {
        this.mName = paramString;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent paramIntent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread localHandlerThread = new HandlerThread("IntentService[" + this.mName + "]");
        localHandlerThread.start();
        this.mServiceLooper = localHandlerThread.getLooper();
        this.mServiceHandler = new ServiceHandler(this.mServiceLooper);
    }

    @Override // android.app.Service
    public void onDestroy() {
        Thread localThread = this.mServiceLooper.getThread();
        if (localThread != null && localThread.isAlive()) {
            localThread.interrupt();
        }
        this.mServiceLooper.quit();
        Log.d(LOG_TAG, "onDestroy");
    }

    @Override // android.app.Service
    public void onStart(Intent paramIntent, int startId) {
        if (!this.mServiceHandler.hasMessages(WHAT_MESSAGE)) {
            Message localMessage = this.mServiceHandler.obtainMessage();
            localMessage.arg1 = startId;
            localMessage.obj = paramIntent;
            localMessage.what = WHAT_MESSAGE;
            this.mServiceHandler.sendMessage(localMessage);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent paramIntent, int flags, int startId) {
        onStart(paramIntent, startId);
        return this.mRedelivery ? 3 : 2;
    }

    public void setIntentRedelivery(boolean enabled) {
        this.mRedelivery = enabled;
    }

    private final class ServiceHandler extends Handler {
        public ServiceHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message paramMessage) {
            CustomIntentService.this.onHandleIntent((Intent) paramMessage.obj);
            if (CustomIntentService.this.shouldStop()) {
                Log.d(CustomIntentService.LOG_TAG, "stopSelf");
                CustomIntentService.this.stopSelf(paramMessage.arg1);
                Log.d(CustomIntentService.LOG_TAG, "afterStopSelf");
            }
        }
    }
}
