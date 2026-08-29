.class public abstract Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.source "DownloaderService.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOADS_CHANGED:Ljava/lang/String; = "downloadsChanged"

.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "lvldownloader.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_DOWNLOAD_STATUS:Ljava/lang/String; = "lvldownloader.intent.action.DOWNLOAD_STATUS"

.field public static final CONTROL_PAUSED:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final DOWNLOAD_REQUIRED:I = 0x2

.field public static final EXTRA_FILE_NAME:Ljava/lang/String; = "downloadId"

.field public static final EXTRA_IS_WIFI_REQUIRED:Ljava/lang/String; = "isWifiRequired"

.field public static final EXTRA_MESSAGE_HANDLER:Ljava/lang/String; = "EMH"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "EPN"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "EPI"

.field public static final EXTRA_STATUS_CURRENT_FILE_SIZE:Ljava/lang/String; = "CFS"

.field public static final EXTRA_STATUS_CURRENT_PROGRESS:Ljava/lang/String; = "CFP"

.field public static final EXTRA_STATUS_STATE:Ljava/lang/String; = "ESS"

.field public static final EXTRA_STATUS_TOTAL_PROGRESS:Ljava/lang/String; = "TFP"

.field public static final EXTRA_STATUS_TOTAL_SIZE:Ljava/lang/String; = "ETS"

.field private static final LOG_TAG:Ljava/lang/String; = "LVLDL"

.field public static final LVL_CHECK_REQUIRED:I = 0x1

.field public static final NETWORK_CANNOT_USE_ROAMING:I = 0x5

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_NO_CONNECTION:I = 0x2

.field public static final NETWORK_OK:I = 0x1

.field public static final NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE:I = 0x4

.field public static final NETWORK_TYPE_DISALLOWED_BY_REQUESTOR:I = 0x6

.field public static final NETWORK_UNUSABLE_DUE_TO_SIZE:I = 0x3

.field public static final NETWORK_WIFI:I = 0x2

.field public static final NO_DOWNLOAD_REQUIRED:I = 0x0

.field private static final SMOOTHING_FACTOR:F = 0.005f

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANNOT_RESUME:I = 0x1e9

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0x1f3

.field public static final STATUS_FILE_ALREADY_EXISTS_ERROR:I = 0x1e8

.field public static final STATUS_FILE_DELIVERED_INCORRECTLY:I = 0x1e7

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_FORBIDDEN:I = 0x193

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0x1f2

.field public static final STATUS_PAUSED_BY_APP:I = 0xc1

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_QUEUED_FOR_WIFI:I = 0xc5

.field public static final STATUS_QUEUED_FOR_WIFI_OR_CELLULAR_PERMISSION:I = 0xc4

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final STATUS_WAITING_FOR_NETWORK:I = 0xc3

.field public static final STATUS_WAITING_TO_RETRY:I = 0xc2

.field private static final TEMP_EXT:Ljava/lang/String; = ".tmp"

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field private static sIsRunning:Z


# instance fields
.field private mAlarmIntent:Landroid/app/PendingIntent;

.field mAverageDownloadSpeed:F

.field mBytesAtSample:J

.field mBytesSoFar:J

.field private mClientMessenger:Landroid/os/Messenger;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mControl:I

.field mFileCount:I

.field private mIsAtLeast3G:Z

.field private mIsAtLeast4G:Z

.field private mIsCellularConnection:Z

.field private mIsConnected:Z

.field private mIsFailover:Z

.field private mIsRoaming:Z

.field mMillisecondsAtSample:J

.field private mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mServiceMessenger:Landroid/os/Messenger;

.field private final mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mStateChanged:Z

.field private mStatus:I

.field mTotalLength:J

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNotification(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    .locals 0

    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingIntent(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateChanged(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPendingIntent(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic -$$Nest$smisServiceRunning()Z
    .locals 1

    invoke-static {}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isServiceRunning()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smsetServiceRunning(Z)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    const-string v0, "LVLDownloadService"

    invoke-direct {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;-><init>(Ljava/lang/String;)V

    .line 453
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 454
    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceMessenger:Landroid/os/Messenger;

    .line 70
    return-void
.end method

.method private cancelAlarms()V
    .locals 3

    .line 972
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 973
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 974
    .local v0, "alarms":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 975
    const-string v1, "LVLDL"

    const-string v2, "couldn\'t get alarm manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    return-void

    .line 978
    :cond_0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 979
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 981
    .end local v0    # "alarms":Landroid/app/AlarmManager;
    :cond_1
    return-void
.end method

.method private static isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "db"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .line 610
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v0, v1, :cond_0

    .line 611
    const/4 v0, 0x1

    return v0

    .line 613
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static declared-synchronized isServiceRunning()Z
    .locals 2

    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    monitor-enter v0

    .line 622
    :try_start_0
    sget-boolean v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 622
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isStatusClientError(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 176
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 191
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    const/16 v0, 0x258

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 169
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStatusInformational(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 155
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStatusServerError(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 183
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .param p0, "status"    # I

    .line 162
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scheduleAlarm(J)V
    .locals 7
    .param p1, "wakeUp"    # J

    .line 948
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 949
    .local v0, "alarms":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 950
    const-string v1, "LVLDL"

    const-string v2, "couldn\'t get alarm manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    return-void

    .line 958
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getAlarmReceiverClassName()Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "EPI"

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 961
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 965
    nop

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, p1

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 965
    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 969
    return-void
.end method

.method private static declared-synchronized setServiceRunning(Z)V
    .locals 1
    .param p0, "isRunning"    # Z

    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    monitor-enter v0

    .line 626
    :try_start_0
    sput-boolean p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit v0

    return-void

    .line 625
    .end local p0    # "isRunning":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 641
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "className":Ljava/lang/String;
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "classPackage"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 673
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 672
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 675
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    .line 679
    .local v1, "status":I
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v3

    .line 683
    .local v3, "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    invoke-static {v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 684
    const/4 v1, 0x1

    .line 687
    :cond_0
    iget v4, v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    if-nez v4, :cond_3

    .line 688
    invoke-virtual {v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v4

    .line 689
    .local v4, "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    if-eqz v4, :cond_2

    .line 690
    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 691
    .local v6, "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    iget-object v7, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-wide v8, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    const/4 v10, 0x1

    invoke-static {p0, v7, v8, v9, v10}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 692
    const/4 v1, 0x2

    .line 693
    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateStatus(I)Z

    .line 694
    goto :goto_1

    .line 690
    .end local v6    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 698
    .end local v4    # "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_2
    :goto_1
    goto :goto_2

    .line 699
    :cond_3
    const/4 v1, 0x2

    .line 701
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 704
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v2, "fileIntent":Landroid/content/Intent;
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v4, "EPI"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 707
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 710
    .end local v2    # "fileIntent":Landroid/content/Intent;
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 631
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 632
    const-string v0, "EPI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 633
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {p0, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v1

    return v1
.end method

.method private updateNetworkState(Landroid/net/NetworkInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 519
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    .line 520
    .local v0, "isConnected":Z
    iget-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 521
    .local v1, "isFailover":Z
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 522
    .local v2, "isCellularConnection":Z
    iget-boolean v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 523
    .local v3, "isRoaming":Z
    iget-boolean v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 524
    .local v4, "isAtLeast3G":Z
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 525
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 526
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 527
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    .line 528
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkType(II)V

    goto :goto_0

    .line 530
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    .line 531
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    .line 532
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    .line 533
    const/4 v6, -0x1

    invoke-direct {p0, v6, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkType(II)V

    .line 535
    :goto_0
    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-ne v0, v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsFailover:Z

    if-ne v1, v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    if-ne v2, v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    if-ne v3, v6, :cond_1

    iget-boolean v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    if-eq v4, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    iput-boolean v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStateChanged:Z

    .line 569
    return-void
.end method

.method private updateNetworkType(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "subType"    # I

    .line 468
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 477
    :sswitch_0
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 478
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 479
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    .line 480
    goto :goto_0

    .line 472
    :sswitch_1
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 473
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 474
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    .line 475
    goto :goto_0

    .line 482
    :sswitch_2
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 483
    packed-switch p2, :pswitch_data_0

    .line 511
    :pswitch_0
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    .line 512
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 513
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    goto :goto_0

    .line 507
    :pswitch_1
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 508
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    .line 509
    goto :goto_0

    .line 498
    :pswitch_2
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 499
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    .line 500
    goto :goto_0

    .line 489
    :pswitch_3
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast3G:Z

    .line 490
    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsAtLeast4G:Z

    .line 491
    nop

    .line 516
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public generateSaveFile(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filesize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
        }
    .end annotation

    .line 1235
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1237
    .local v1, "expPath":Ljava/io/File;
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/Helpers;->isExternalMediaMounted()Z

    move-result v2

    const-string v3, "LVLDL"

    if-eqz v2, :cond_2

    .line 1243
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1248
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-ltz v4, :cond_0

    .line 1252
    return-object v0

    .line 1249
    :cond_0
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 v3, 0x1f2

    const-string v4, "insufficient space on external storage"

    invoke-direct {v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1244
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File already exists: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 v3, 0x1e8

    const-string v4, "requested destination file already exists"

    invoke-direct {v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1238
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External media not mounted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;

    const/16 v3, 0x1f3

    const-string v4, "external media is not yet mounted"

    invoke-direct {v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public generateTempSaveFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public abstract getAlarmReceiverClassName()Ljava/lang/String;
.end method

.method public getControl()I
    .locals 1

    .line 1282
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    return v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkError"    # I

    .line 1260
    packed-switch p1, :pswitch_data_0

    .line 1277
    const-string v0, "unknown error with network connectivity"

    return-object v0

    .line 1274
    :pswitch_0
    const-string v0, "download was requested to not use the current network type"

    return-object v0

    .line 1271
    :pswitch_1
    const-string v0, "download cannot use the current network connection because it is roaming"

    return-object v0

    .line 1262
    :pswitch_2
    const-string v0, "download size exceeds recommended limit for mobile network"

    return-object v0

    .line 1265
    :pswitch_3
    const-string v0, "download size exceeds limit for mobile network"

    return-object v0

    .line 1268
    :pswitch_4
    const-string v0, "no network connection available"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I
    .locals 3
    .param p1, "db"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    .line 1174
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-eqz v0, :cond_3

    .line 1175
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1176
    return v1

    .line 1177
    :cond_0
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    .line 1178
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsRoaming:Z

    if-eqz v2, :cond_1

    .line 1179
    const/4 v1, 0x5

    return v1

    .line 1180
    :cond_1
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_2

    .line 1181
    return v1

    .line 1183
    :cond_2
    const/4 v1, 0x6

    return v1

    .line 1186
    .end local v0    # "flags":I
    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method public abstract getPublicKey()Ljava/lang/String;
.end method

.method public abstract getSALT()[B
.end method

.method public getStatus()I
    .locals 1

    .line 1286
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    return v0
.end method

.method public handleFileUpdated(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;ILjava/lang/String;J)Z
    .locals 5
    .param p1, "db"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .param p2, "index"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileSize"    # J

    .line 928
    invoke-virtual {p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v0

    .line 929
    .local v0, "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    if-eqz v0, :cond_1

    .line 930
    iget-object v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 932
    .local v1, "oldFile":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 933
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    const/4 v2, 0x0

    return v2

    .line 938
    :cond_0
    invoke-static {p0, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, "deleteFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 940
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 941
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 944
    .end local v1    # "oldFile":Ljava/lang/String;
    .end local v2    # "deleteFile":Ljava/lang/String;
    .end local v3    # "f":Ljava/io/File;
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, p3, p4, p5, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method public isWiFi()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mIsCellularConnection:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyUpdateBytes(J)V
    .locals 17
    .param p1, "totalBytesSoFar"    # J

    .line 1297
    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 1298
    .local v11, "currentTime":J
    iget-wide v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    .line 1300
    sub-long v1, v11, v1

    .line 1301
    .local v1, "timePassed":J
    iget-wide v3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesAtSample:J

    sub-long v3, v9, v3

    .line 1302
    .local v3, "bytesInSample":J
    long-to-float v5, v3

    long-to-float v6, v1

    div-float/2addr v5, v6

    .line 1303
    .local v5, "currentSpeedSample":F
    iget v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    const/4 v7, 0x0

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_0

    .line 1304
    const v7, 0x3ba3d70a    # 0.005f

    mul-float v7, v7, v5

    const v8, 0x3f7eb852    # 0.995f

    mul-float v6, v6, v8

    add-float/2addr v7, v6

    iput v7, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    goto :goto_0

    .line 1307
    :cond_0
    iput v5, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    .line 1309
    :goto_0
    iget-wide v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    sub-long/2addr v6, v9

    long-to-float v6, v6

    iget v7, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    div-float/2addr v6, v7

    float-to-long v1, v6

    .line 1310
    .end local v3    # "bytesInSample":J
    .end local v5    # "currentSpeedSample":F
    .local v1, "timeRemaining":J
    move-wide v13, v1

    goto :goto_1

    .line 1311
    .end local v1    # "timeRemaining":J
    :cond_1
    const-wide/16 v1, -0x1

    move-wide v13, v1

    .line 1313
    .local v13, "timeRemaining":J
    :goto_1
    iput-wide v11, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mMillisecondsAtSample:J

    .line 1314
    iput-wide v9, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesAtSample:J

    .line 1315
    iget-object v15, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    new-instance v8, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    iget-wide v2, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    iget v6, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mAverageDownloadSpeed:F

    move-object v1, v8

    move-wide/from16 v4, p1

    move/from16 v16, v6

    move-wide v6, v13

    move-object v0, v8

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;-><init>(JJJF)V

    invoke-virtual {v15, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 1322
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "paramIntent"    # Landroid/content/Intent;

    .line 399
    const-string v0, "LVLDL"

    const-string v1, "Service Bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onClientUpdated(Landroid/os/Messenger;)V
    .locals 1
    .param p1, "clientMessenger"    # Landroid/os/Messenger;

    .line 1342
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mClientMessenger:Landroid/os/Messenger;

    .line 1343
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setMessenger(Landroid/os/Messenger;)V

    .line 1344
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1191
    invoke-super {p0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onCreate()V

    .line 1193
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1194
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1193
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1196
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1197
    .local v1, "applicationLabel":Ljava/lang/CharSequence;
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-direct {v2, p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationLabel":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1202
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1165
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mServiceStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 1170
    invoke-super {p0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onDestroy()V

    .line 1171
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1014
    move-object/from16 v1, p0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1018
    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v3

    .line 1019
    .local v3, "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    const-string v4, "EPI"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1020
    move-object/from16 v5, p1

    :try_start_1
    invoke-virtual {v5, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 1022
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    .line 1024
    iget-object v6, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v6, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setClientIntent(Landroid/app/PendingIntent;)V

    .line 1025
    iput-object v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v6, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_9

    .line 1027
    iget-object v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v7, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->setClientIntent(Landroid/app/PendingIntent;)V

    .line 1035
    :goto_0
    iget-object v6, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v3, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isLVLCheckRequired(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1036
    invoke-virtual {v1, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateLVL(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1037
    return-void

    .line 1041
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v6

    .line 1042
    .local v6, "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    .line 1043
    iput-wide v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    .line 1044
    array-length v9, v6

    iput v9, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mFileCount:I

    .line 1045
    array-length v9, v6

    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0xc8

    if-ge v10, v9, :cond_3

    aget-object v12, v6, v10

    .line 1048
    .local v12, "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    iget v13, v12, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    if-ne v13, v11, :cond_2

    .line 1050
    iget-object v11, v12, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-wide v13, v12, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-static {v1, v11, v13, v14, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1051
    iput v2, v12, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 1052
    iput-wide v7, v12, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1056
    :cond_2
    iget-wide v13, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    iget-wide v7, v12, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    add-long/2addr v13, v7

    iput-wide v13, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mTotalLength:J

    .line 1057
    iget-wide v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    iget-wide v13, v12, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    add-long/2addr v7, v13

    iput-wide v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    .line 1045
    .end local v12    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x0

    goto :goto_1

    .line 1061
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->pollNetworkState()V

    .line 1062
    iget-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 1069
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;

    invoke-direct {v0, v1, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$InnerBroadcastReceiver;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/app/Service;)V

    iput-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1070
    new-instance v0, Landroid/content/IntentFilter;

    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1073
    iget-object v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1076
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_4
    array-length v0, v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_8

    aget-object v8, v6, v7

    .line 1077
    .local v8, "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    iget-wide v9, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1079
    .local v9, "startingCount":J
    iget v12, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    if-eq v12, v11, :cond_5

    .line 1080
    new-instance v12, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;

    iget-object v13, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-direct {v12, v8, v1, v13}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;)V

    .line 1081
    .local v12, "dt":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    .line 1082
    const-wide/16 v13, 0x1388

    invoke-direct {v1, v13, v14}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->scheduleAlarm(J)V

    .line 1083
    invoke-virtual {v12}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->run()V

    .line 1084
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    .line 1086
    .end local v12    # "dt":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
    :cond_5
    invoke-virtual {v3, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateFromDb(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 1087
    const/4 v12, 0x0

    .line 1089
    .local v12, "setWakeWatchdog":Z
    iget v13, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    sparse-switch v13, :sswitch_data_0

    .line 1143
    move v15, v12

    .end local v12    # "setWakeWatchdog":Z
    .local v15, "setWakeWatchdog":Z
    const/16 v0, 0x13

    .local v0, "notifyStatus":I
    goto :goto_3

    .line 1138
    .end local v0    # "notifyStatus":I
    .end local v15    # "setWakeWatchdog":Z
    .restart local v12    # "setWakeWatchdog":Z
    :sswitch_0
    const/16 v0, 0xe

    .line 1139
    .restart local v0    # "notifyStatus":I
    const/4 v12, 0x1

    .line 1140
    goto :goto_3

    .line 1133
    .end local v0    # "notifyStatus":I
    :sswitch_1
    const/16 v0, 0x11

    .line 1134
    .restart local v0    # "notifyStatus":I
    const/4 v12, 0x1

    .line 1135
    goto :goto_3

    .line 1128
    .end local v0    # "notifyStatus":I
    :sswitch_2
    const/16 v0, 0x12

    .line 1129
    .restart local v0    # "notifyStatus":I
    const/4 v12, 0x1

    .line 1130
    goto :goto_3

    .line 1101
    .end local v0    # "notifyStatus":I
    :sswitch_3
    const/16 v0, 0xd

    .line 1102
    .restart local v0    # "notifyStatus":I
    const-wide/16 v13, 0x0

    iput-wide v13, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 1103
    invoke-virtual {v3, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 1104
    const/4 v12, 0x1

    .line 1105
    goto :goto_3

    .line 1092
    .end local v0    # "notifyStatus":I
    :sswitch_4
    invoke-virtual {v1, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateLVL(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1159
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1093
    return-void

    .line 1095
    :sswitch_5
    const-wide/16 v13, 0x0

    move v15, v12

    .end local v12    # "setWakeWatchdog":Z
    .restart local v15    # "setWakeWatchdog":Z
    :try_start_3
    iget-wide v11, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    iget-wide v13, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    sub-long/2addr v13, v9

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    .line 1096
    iget-object v11, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v11, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v11, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(II)Z

    .line 1097
    nop

    .line 1076
    .end local v8    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v9    # "startingCount":J
    .end local v15    # "setWakeWatchdog":Z
    add-int/lit8 v7, v7, 0x1

    const/16 v11, 0xc8

    goto :goto_2

    .line 1117
    .restart local v8    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .restart local v9    # "startingCount":J
    .restart local v12    # "setWakeWatchdog":Z
    :sswitch_6
    move v15, v12

    .end local v12    # "setWakeWatchdog":Z
    .restart local v15    # "setWakeWatchdog":Z
    iget-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    .line 1118
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1119
    const/16 v0, 0x8

    .line 1120
    .restart local v0    # "notifyStatus":I
    const/4 v12, 0x1

    .line 1121
    .end local v15    # "setWakeWatchdog":Z
    .restart local v12    # "setWakeWatchdog":Z
    goto :goto_3

    .line 1124
    .end local v0    # "notifyStatus":I
    .end local v12    # "setWakeWatchdog":Z
    .restart local v15    # "setWakeWatchdog":Z
    :cond_6
    const/16 v0, 0x9

    .line 1125
    .restart local v0    # "notifyStatus":I
    const/4 v12, 0x1

    .line 1126
    .end local v15    # "setWakeWatchdog":Z
    .restart local v12    # "setWakeWatchdog":Z
    goto :goto_3

    .line 1111
    .end local v0    # "notifyStatus":I
    :sswitch_7
    move v15, v12

    .end local v12    # "setWakeWatchdog":Z
    .restart local v15    # "setWakeWatchdog":Z
    const/4 v0, 0x6

    .line 1112
    .restart local v0    # "notifyStatus":I
    const/4 v12, 0x1

    .line 1113
    .end local v15    # "setWakeWatchdog":Z
    .restart local v12    # "setWakeWatchdog":Z
    goto :goto_3

    .line 1107
    .end local v0    # "notifyStatus":I
    :sswitch_8
    move v15, v12

    .end local v12    # "setWakeWatchdog":Z
    .restart local v15    # "setWakeWatchdog":Z
    const/4 v0, 0x7

    .line 1108
    .restart local v0    # "notifyStatus":I
    nop

    .line 1146
    .end local v15    # "setWakeWatchdog":Z
    .restart local v12    # "setWakeWatchdog":Z
    :goto_3
    if-eqz v12, :cond_7

    .line 1147
    const-wide/32 v13, 0xea60

    invoke-direct {v1, v13, v14}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->scheduleAlarm(J)V

    goto :goto_4

    .line 1149
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->cancelAlarms()V

    .line 1152
    :goto_4
    iget-object v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v7, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1159
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1153
    return-void

    .line 1157
    .end local v0    # "notifyStatus":I
    .end local v8    # "info":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v9    # "startingCount":J
    .end local v12    # "setWakeWatchdog":Z
    :cond_8
    :try_start_4
    iget-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1159
    .end local v3    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "infos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1160
    nop

    .line 1161
    return-void

    .line 1029
    .restart local v3    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_9
    :try_start_5
    const-string v0, "LVLDL"

    const-string v6, "Downloader started in bad state without notification intent."

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1159
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1030
    return-void

    .line 1159
    .end local v3    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_5
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->setServiceRunning(Z)V

    .line 1160
    throw v0

    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_8
        0xc2 -> :sswitch_7
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_6
        0xc5 -> :sswitch_6
        0xc8 -> :sswitch_5
        0x193 -> :sswitch_4
        0x1e7 -> :sswitch_3
        0x1ea -> :sswitch_2
        0x1f2 -> :sswitch_1
        0x1f3 -> :sswitch_0
    .end sparse-switch
.end method

.method pollNetworkState()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 576
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    .line 582
    const-string v0, "LVLDL"

    const-string v1, "couldn\'t get connectivity manager to poll network state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 586
    :cond_2
    nop

    .line 587
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 588
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->updateNetworkState(Landroid/net/NetworkInfo;)V

    .line 590
    .end local v0    # "activeInfo":Landroid/net/NetworkInfo;
    :goto_0
    return-void
.end method

.method public requestAbortDownload()V
    .locals 1

    .line 715
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    .line 716
    const/16 v0, 0x1ea

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    .line 717
    return-void
.end method

.method public requestContinueDownload()V
    .locals 3

    .line 732
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 733
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    .line 735
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 736
    .local v0, "fileIntent":Landroid/content/Intent;
    const-string v1, "EPI"

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 737
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 738
    return-void
.end method

.method public requestDownloadStatus()V
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->resendState()V

    .line 1338
    return-void
.end method

.method public requestPauseDownload()V
    .locals 1

    .line 721
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mControl:I

    .line 722
    const/16 v0, 0xc1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mStatus:I

    .line 723
    return-void
.end method

.method public setDownloadFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 727
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateFlags(I)Z

    .line 728
    return-void
.end method

.method protected shouldStop()Z
    .locals 2

    .line 1328
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    .line 1329
    .local v0, "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    iget v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    if-nez v1, :cond_0

    .line 1330
    const/4 v1, 0x1

    return v1

    .line 1332
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateLVL(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 909
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 910
    .local v0, "c":Landroid/content/Context;
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 911
    .local v1, "h":Landroid/os/Handler;
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Landroid/content/Context;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 912
    return-void
.end method
