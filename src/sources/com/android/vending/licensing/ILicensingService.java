package com.android.vending.licensing;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ILicensingService extends IInterface {
    public static final String DESCRIPTOR = "com.android.vending.licensing.ILicensingService";

    void checkLicense(long j, String str, ILicenseResultListener iLicenseResultListener) throws RemoteException;

    public static class Default implements ILicensingService {
        @Override // com.android.vending.licensing.ILicensingService
        public void checkLicense(long nonce, String packageName, ILicenseResultListener listener) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ILicensingService {
        static final int TRANSACTION_checkLicense = 1;

        public Stub() {
            attachInterface(this, ILicensingService.DESCRIPTOR);
        }

        public static ILicensingService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(ILicensingService.DESCRIPTOR);
            if (iin != null && (iin instanceof ILicensingService)) {
                return (ILicensingService) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(ILicensingService.DESCRIPTOR);
            }
            switch (code) {
                case 1598968902:
                    reply.writeString(ILicensingService.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            long _arg0 = data.readLong();
                            String _arg1 = data.readString();
                            ILicenseResultListener _arg2 = ILicenseResultListener.Stub.asInterface(data.readStrongBinder());
                            checkLicense(_arg0, _arg1, _arg2);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements ILicensingService {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return ILicensingService.DESCRIPTOR;
            }

            @Override // com.android.vending.licensing.ILicensingService
            public void checkLicense(long nonce, String packageName, ILicenseResultListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(ILicensingService.DESCRIPTOR);
                    _data.writeLong(nonce);
                    _data.writeString(packageName);
                    _data.writeStrongInterface(listener);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
