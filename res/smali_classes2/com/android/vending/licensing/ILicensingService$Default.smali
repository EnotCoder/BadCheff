.class public Lcom/android/vending/licensing/ILicensingService$Default;
.super Ljava/lang/Object;
.source "ILicensingService.java"

# interfaces
.implements Lcom/android/vending/licensing/ILicensingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/ILicensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V
    .locals 0
    .param p1, "nonce"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/vending/licensing/ILicenseResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
