.class Lcom/android/vending/licensing/ILicenseResultListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILicenseResultListener.java"

# interfaces
.implements Lcom/android/vending/licensing/ILicenseResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/ILicenseResultListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/vending/licensing/ILicenseResultListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 85
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/vending/licensing/ILicenseResultListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "com.android.vending.licensing.ILicenseResultListener"

    return-object v0
.end method

.method public verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.vending.licensing.ILicenseResultListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/vending/licensing/ILicenseResultListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    nop

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    throw v1
.end method
