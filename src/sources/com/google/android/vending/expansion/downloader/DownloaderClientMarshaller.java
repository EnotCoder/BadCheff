package com.google.android.vending.expansion.downloader;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.google.android.vending.expansion.downloader.impl.DownloaderService;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class DownloaderClientMarshaller {
    public static final int DOWNLOAD_REQUIRED = 2;
    public static final int LVL_CHECK_REQUIRED = 1;
    public static final int MSG_ONDOWNLOADPROGRESS = 11;
    public static final int MSG_ONDOWNLOADSTATE_CHANGED = 10;
    public static final int MSG_ONSERVICECONNECTED = 12;
    public static final int NO_DOWNLOAD_REQUIRED = 0;
    public static final String PARAM_MESSENGER = "EMH";
    public static final String PARAM_NEW_STATE = "newState";
    public static final String PARAM_PROGRESS = "progress";

    private static class Proxy implements IDownloaderClient {
        private Messenger mServiceMessenger;

        @Override // com.google.android.vending.expansion.downloader.IDownloaderClient
        public void onDownloadStateChanged(int newState) {
            Bundle params = new Bundle(1);
            params.putInt(DownloaderClientMarshaller.PARAM_NEW_STATE, newState);
            send(10, params);
        }

        @Override // com.google.android.vending.expansion.downloader.IDownloaderClient
        public void onDownloadProgress(DownloadProgressInfo progress) {
            Bundle params = new Bundle(1);
            params.putParcelable("progress", progress);
            send(11, params);
        }

        private void send(int method, Bundle params) {
            Message m = Message.obtain((Handler) null, method);
            m.setData(params);
            try {
                this.mServiceMessenger.send(m);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        public Proxy(Messenger msg) {
            this.mServiceMessenger = msg;
        }

        @Override // com.google.android.vending.expansion.downloader.IDownloaderClient
        public void onServiceConnected(Messenger m) {
        }
    }

    private static class Stub implements IStub {
        private boolean mBound;
        private ServiceConnection mConnection;
        private Context mContext;
        private Class<?> mDownloaderServiceClass;
        private IDownloaderClient mItf;
        final Messenger mMessenger;
        private final MessengerHandlerClient mMsgHandler;
        private Messenger mServiceMessenger;

        private static class MessengerHandlerClient extends Handler {
            private final WeakReference<Stub> mDownloader;

            public MessengerHandlerClient(Stub downloader) {
                this.mDownloader = new WeakReference<>(downloader);
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                Stub downloader = this.mDownloader.get();
                if (downloader != null) {
                    downloader.handleMessage(msg);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 10:
                    this.mItf.onDownloadStateChanged(msg.getData().getInt(DownloaderClientMarshaller.PARAM_NEW_STATE));
                    break;
                case 11:
                    Bundle bun = msg.getData();
                    Context context = this.mContext;
                    if (context != null) {
                        bun.setClassLoader(context.getClassLoader());
                        DownloadProgressInfo dpi = (DownloadProgressInfo) msg.getData().getParcelable("progress");
                        this.mItf.onDownloadProgress(dpi);
                    }
                    break;
                case 12:
                    this.mItf.onServiceConnected((Messenger) msg.getData().getParcelable("EMH"));
                    break;
            }
        }

        public Stub(IDownloaderClient itf, Class<?> downloaderService) {
            this.mItf = null;
            MessengerHandlerClient messengerHandlerClient = new MessengerHandlerClient(this);
            this.mMsgHandler = messengerHandlerClient;
            this.mMessenger = new Messenger(messengerHandlerClient);
            this.mConnection = new ServiceConnection() { // from class: com.google.android.vending.expansion.downloader.DownloaderClientMarshaller.Stub.1
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName className, IBinder service) {
                    Stub.this.mServiceMessenger = new Messenger(service);
                    Stub.this.mItf.onServiceConnected(Stub.this.mServiceMessenger);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName className) {
                    Stub.this.mServiceMessenger = null;
                }
            };
            this.mItf = itf;
            this.mDownloaderServiceClass = downloaderService;
        }

        @Override // com.google.android.vending.expansion.downloader.IStub
        public void connect(Context c) {
            this.mContext = c;
            Intent bindIntent = new Intent(c, this.mDownloaderServiceClass);
            bindIntent.putExtra("EMH", this.mMessenger);
            if (c.bindService(bindIntent, this.mConnection, 2)) {
                this.mBound = true;
            }
        }

        @Override // com.google.android.vending.expansion.downloader.IStub
        public void disconnect(Context c) {
            if (this.mBound) {
                c.unbindService(this.mConnection);
                this.mBound = false;
            }
            this.mContext = null;
        }

        @Override // com.google.android.vending.expansion.downloader.IStub
        public Messenger getMessenger() {
            return this.mMessenger;
        }
    }

    public static IDownloaderClient CreateProxy(Messenger msg) {
        return new Proxy(msg);
    }

    public static IStub CreateStub(IDownloaderClient itf, Class<?> downloaderService) {
        return new Stub(itf, downloaderService);
    }

    public static int startDownloadServiceIfRequired(Context context, PendingIntent notificationClient, Class<?> serviceClass) throws PackageManager.NameNotFoundException {
        return DownloaderService.startDownloadServiceIfRequired(context, notificationClient, serviceClass);
    }

    public static int startDownloadServiceIfRequired(Context context, Intent notificationClient, Class<?> serviceClass) throws PackageManager.NameNotFoundException {
        return DownloaderService.startDownloadServiceIfRequired(context, notificationClient, serviceClass);
    }
}
