.class Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;
.super Ljava/lang/Object;
.source "DownloaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LVLRunnable"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 747
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    .line 749
    invoke-static {p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$fputmPendingIntent(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/PendingIntent;)V

    .line 750
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 756
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$smsetServiceRunning(Z)V

    .line 757
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$fgetmNotification(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 758
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/google/android/vending/licensing/APKExpansionPolicy;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/android/vending/licensing/AESObfuscator;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .line 762
    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSALT()[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/vending/licensing/APKExpansionPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    .line 766
    .local v1, "aep":Lcom/google/android/vending/licensing/APKExpansionPolicy;
    invoke-virtual {v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->resetPolicy()V

    .line 770
    new-instance v2, Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .line 771
    invoke-virtual {v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPublicKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 773
    .local v2, "checker":Lcom/google/android/vending/licensing/LicenseChecker;
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V

    invoke-virtual {v2, v3}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 899
    return-void
.end method
