.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

.field private mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

.field private final mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

.field private mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;)V
    .locals 2
    .param p1, "info"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .param p2, "service"    # Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
    .param p3, "notification"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    .line 54
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    .line 55
    iput-object p3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    .line 56
    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APKXDL (Linux; U; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mUserAgent:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private addRequestHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p2, "request"    # Ljava/net/HttpURLConnection;

    .line 699
    iget-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "If-Match"

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_1
    return-void
.end method

.method private cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z
    .locals 1
    .param p1, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    .line 480
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 3
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result v0

    const/16 v1, 0xc3

    packed-switch v0, :pswitch_data_0

    .line 265
    :pswitch_0
    return-void

    .line 256
    :pswitch_1
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v1, 0xc4

    const-string v2, "waiting for wifi or for download over cellular to be authorized"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 260
    :pswitch_2
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string v2, "roaming is not allowed"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 263
    :pswitch_3
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v1, 0xc5

    const-string v2, "waiting for wifi"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 253
    :pswitch_4
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string v2, "waiting for network to return"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 251
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getControl()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getStatus()I

    move-result v0

    .line 382
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 384
    :pswitch_0
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getStatus()I

    move-result v2

    const-string v3, "download paused"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 388
    .end local v0    # "status":I
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_0
    .end packed-switch
.end method

.method private cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V
    .locals 2
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "finalStatus"    # I

    .line 321
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 322
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 324
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 326
    :cond_0
    return-void
.end method

.method private closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 1
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    .line 363
    :try_start_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 373
    :goto_0
    return-void
.end method

.method private executeDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "request"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState-IA;)V

    .line 220
    .local v0, "innerState":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 222
    .local v1, "data":[B
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->setupDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 225
    invoke-direct {p0, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->addRequestHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Ljava/net/HttpURLConnection;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 231
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->sendRequest(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Ljava/net/HttpURLConnection;)I

    move-result v2

    .line 233
    .local v2, "responseCode":I
    invoke-direct {p0, p1, v0, p2, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleExceptionalStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Ljava/net/HttpURLConnection;I)V

    .line 239
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->processResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Ljava/net/HttpURLConnection;)V

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->openResponseEntity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 241
    .local v3, "entityStream":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mNotification:Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 242
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->transferData(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    .line 243
    return-void
.end method

.method private finalizeDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 9
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 298
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->syncDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 299
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 300
    .local v0, "tempFilename":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "finalFilename":Ljava/lang/String;
    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v2, "startFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v3, "destFile":Ljava/io/File;
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 305
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v5, 0x1ec

    const-string v6, "unable to finalize destination file"

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v4

    .line 310
    :cond_1
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v5, 0x1e7

    const-string v6, "file delivered with incorrect size. probably due to network not browser configured"

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v4

    .line 314
    .end local v2    # "startFile":Ljava/io/File;
    .end local v3    # "destFile":Ljava/io/File;
    :cond_2
    :goto_0
    return-void
.end method

.method private getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I
    .locals 3
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    .line 760
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 761
    const/16 v0, 0xc3

    return v0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 763
    iput-boolean v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    .line 764
    const/16 v0, 0xc2

    return v0

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reached max retries for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LVLDL"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/16 v0, 0x1ef

    return v0
.end method

.method private handleEndOfStream(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 464
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 466
    iget-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 468
    .local v0, "lengthMismatched":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 469
    invoke-direct {p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v2, 0x1e9

    const-string v3, "mismatched content length"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 473
    :cond_1
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result v2

    const-string v3, "closed socket before end of file"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 477
    :cond_2
    return-void
.end method

.method private handleExceptionalStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Ljava/net/HttpURLConnection;I)V
    .locals 2
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "connection"    # Ljava/net/HttpURLConnection;
    .param p4, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;,
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload;
        }
    .end annotation

    .line 664
    const/16 v0, 0x1f7

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 665
    invoke-direct {p0, p1, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleServiceUnavailable(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 667
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xce

    goto :goto_0

    .line 668
    :cond_1
    const/16 v0, 0xc8

    :goto_0
    nop

    .line 669
    .local v0, "expectedStatus":I
    if-eq p4, v0, :cond_2

    .line 670
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleOtherStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;I)V

    goto :goto_1

    .line 673
    :cond_2
    const/4 v1, 0x0

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    .line 675
    :goto_1
    return-void
.end method

.method private handleOtherStatus(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;I)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 683
    invoke-static {p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 685
    const/16 v0, 0x12c

    if-lt p3, v0, :cond_1

    const/16 v0, 0x190

    if-lt p3, v0, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    const/16 v0, 0x1ed

    .local v0, "finalStatus":I
    goto :goto_1

    .line 687
    .end local v0    # "finalStatus":I
    :cond_1
    :goto_0
    iget-boolean v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_2

    .line 688
    const/16 v0, 0x1e9

    .restart local v0    # "finalStatus":I
    goto :goto_1

    .line 690
    .end local v0    # "finalStatus":I
    :cond_2
    const/16 v0, 0x1ee

    .restart local v0    # "finalStatus":I
    goto :goto_1

    .line 684
    .end local v0    # "finalStatus":I
    :cond_3
    move v0, p3

    .line 692
    .restart local v0    # "finalStatus":I
    :goto_1
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1
.end method

.method private handleServiceUnavailable(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 4
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    .line 716
    const-string v0, "Retry-After"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "retryAfterValue":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 722
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 723
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    if-ltz v1, :cond_2

    .line 726
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 728
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    const v2, 0x15180

    if-le v1, v2, :cond_1

    .line 729
    iput v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 727
    :cond_0
    iput v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 731
    :cond_1
    :goto_0
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    sget-object v2, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    .line 732
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    goto :goto_1

    .line 724
    :cond_2
    const/4 v1, 0x0

    iput v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_1
    goto :goto_2

    .line 734
    :catch_0
    move-exception v1

    .line 738
    :cond_3
    :goto_2
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v2, 0xc2

    const-string v3, "got 503 Service Unavailable, will retry later"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1
.end method

.method private logNetworkState()V
    .locals 3

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Net "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 531
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->getNetworkAvailabilityState(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Up"

    goto :goto_0

    .line 532
    :cond_0
    const-string v1, "Down"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    const-string v1, "LVLDL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method private notifyDownloadCompleted(IZIIZLjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "countRetry"    # Z
    .param p3, "retryAfter"    # I
    .param p4, "redirectCount"    # I
    .param p5, "gotData"    # Z
    .param p6, "filename"    # Ljava/lang/String;

    .line 828
    invoke-direct/range {p0 .. p6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->updateDownloadDatabase(IZIIZLjava/lang/String;)V

    .line 830
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->isStatusCompleted(I)Z

    .line 833
    return-void
.end method

.method private openResponseEntity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 5
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "response"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 519
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 522
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while getting entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 523
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "response"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 542
    iget-boolean v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_0

    .line 544
    return-void

    .line 547
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->readResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Ljava/net/HttpURLConnection;)V

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v2, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->generateSaveFile(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError; {:try_start_0 .. :try_end_0} :catch_2

    .line 553
    nop

    .line 555
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 567
    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 558
    .local v0, "exc":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, "pathFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 561
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 566
    :cond_1
    nop

    .line 572
    .end local v0    # "exc":Ljava/io/FileNotFoundException;
    .end local v1    # "pathFile":Ljava/io/File;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->updateDatabaseFromHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 574
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkConnectivity(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 575
    return-void

    .line 563
    .restart local v0    # "exc":Ljava/io/FileNotFoundException;
    .restart local v1    # "pathFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 564
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "while opening destination file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 565
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1ec

    invoke-direct {v3, p0, v5, v4, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 551
    .end local v0    # "exc":Ljava/io/FileNotFoundException;
    .end local v1    # "pathFile":Ljava/io/File;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 552
    .local v0, "exc":Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    iget v2, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mStatus:I

    iget-object v3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1
.end method

.method private readFromResponse(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .locals 5
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "data"    # [B
    .param p4, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 494
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 497
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 498
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 499
    invoke-direct {p0, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cannotResume(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)Z

    move-result v1

    const-string v2, "while reading response: "

    if-eqz v1, :cond_0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v3, 0x1e9

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 505
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 506
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readResponseHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;Ljava/net/HttpURLConnection;)V
    .locals 8
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "response"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 591
    const-string v0, "Content-Disposition"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 593
    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    .line 595
    :cond_0
    const-string v1, "Content-Location"

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_1

    .line 597
    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    .line 599
    :cond_1
    const-string v1, "ETag"

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_2

    .line 601
    iput-object v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 603
    :cond_2
    const/4 v1, 0x0

    .line 604
    .local v1, "headerTransferEncoding":Ljava/lang/String;
    const-string v2, "Transfer-Encoding"

    invoke-virtual {p3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_3

    .line 606
    move-object v1, v0

    .line 608
    :cond_3
    const/4 v2, 0x0

    .line 609
    .local v2, "headerContentType":Ljava/lang/String;
    const-string v3, "Content-Type"

    invoke-virtual {p3, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_5

    .line 611
    move-object v2, v0

    .line 612
    const-string v3, "application/vnd.android.obb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 613
    :cond_4
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1e7

    const-string v5, "file delivered with incorrect Mime type"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v3

    .line 618
    :cond_5
    :goto_0
    if-nez v1, :cond_7

    .line 619
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v3, v3

    .line 620
    .local v3, "contentLength":J
    if-eqz v0, :cond_7

    .line 622
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    .line 628
    const-string v5, "LVLDL"

    const-string v6, "Incorrect file size delivered."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 630
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 649
    .end local v3    # "contentLength":J
    :cond_7
    :goto_1
    iget-object v3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v3, :cond_9

    if-eqz v1, :cond_8

    .line 651
    const-string v3, "chunked"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    .line 652
    .local v3, "noSizeInfo":Z
    :goto_2
    if-nez v3, :cond_a

    .line 656
    return-void

    .line 653
    :cond_a
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v5, 0x1ef

    const-string v6, "can\'t know size of download, giving up"

    invoke-direct {v4, p0, v5, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v4
.end method

.method private reportProgress(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 7
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 395
    .local v0, "now":J
    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iget v3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    sub-int/2addr v2, v3

    const/16 v3, 0x1000

    if-le v2, v3, :cond_0

    iget-wide v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 400
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v3, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 401
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownloadCurrentBytes(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)V

    .line 403
    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    iput v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    .line 404
    iput-wide v0, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    .line 406
    iget v2, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    iget-wide v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->mBytesSoFar:J

    add-long/2addr v2, v4

    .line 415
    .local v2, "totalBytesSoFar":J
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->notifyUpdateBytes(J)V

    .line 417
    .end local v2    # "totalBytesSoFar":J
    :cond_0
    return-void
.end method

.method private sendRequest(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Ljava/net/HttpURLConnection;)I
    .locals 5
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "request"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 748
    const-string v0, "while trying to execute request: "

    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 752
    :catch_0
    move-exception v1

    .line 753
    .local v1, "ex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->logNetworkState()V

    .line 754
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->getFinalStatusForHttpError(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 755
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 749
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 750
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 751
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1ef

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setupDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 9
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 777
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 779
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1ec

    if-eqz v0, :cond_3

    .line 785
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 787
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 788
    .local v2, "fileLength":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 791
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 792
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    goto :goto_0

    .line 793
    :cond_0
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 801
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    nop

    .line 806
    long-to-int v1, v2

    iput v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    .line 807
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    const-wide/16 v7, -0x1

    cmp-long v1, v4, v7

    if-eqz v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-wide v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 810
    :cond_1
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 811
    iput-boolean v6, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    goto :goto_0

    .line 802
    :catch_0
    move-exception v4

    .line 803
    .local v4, "exc":Ljava/io/FileNotFoundException;
    new-instance v5, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "while opening destination for resuming: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 804
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v1, v6, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 795
    .end local v4    # "exc":Ljava/io/FileNotFoundException;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 796
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1e9

    const-string v5, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v1, p0, v4, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 781
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "fileLength":J
    :cond_3
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const-string v2, "found invalid internal destination filename"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 816
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_5

    .line 817
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 819
    :cond_5
    return-void
.end method

.method private syncDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    .locals 8
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    .line 332
    const-string v0, "file "

    const-string v1, "exception while closing file: "

    const-string v2, "IOException while closing synced file: "

    const-string v3, "LVLDL"

    const/4 v4, 0x0

    .line 334
    .local v4, "downloadedFileStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v4, v5

    .line 335
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    nop

    .line 347
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 352
    :goto_0
    goto/16 :goto_1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    .line 349
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 342
    :catch_2
    move-exception v0

    .line 343
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v5, "exception while syncing file: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    nop

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    if-eqz v4, :cond_0

    .line 347
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 340
    :catch_3
    move-exception v0

    .line 341
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException trying to sync "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    nop

    .end local v0    # "ex":Ljava/io/IOException;
    if-eqz v4, :cond_0

    .line 347
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 338
    :catch_4
    move-exception v5

    .line 339
    .local v5, "ex":Ljava/io/SyncFailedException;
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " sync failed: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 345
    nop

    .end local v5    # "ex":Ljava/io/SyncFailedException;
    if-eqz v4, :cond_0

    .line 347
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 336
    :catch_5
    move-exception v5

    .line 337
    .local v5, "ex":Ljava/io/FileNotFoundException;
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " not found: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 345
    nop

    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_0

    .line 347
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 355
    :cond_0
    :goto_1
    return-void

    .line 345
    :goto_2
    if-eqz v4, :cond_1

    .line 347
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 352
    :goto_3
    goto :goto_4

    .line 350
    :catch_6
    move-exception v2

    .line 351
    .local v2, "ex":Ljava/lang/RuntimeException;
    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 348
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v1

    .line 349
    .local v1, "ex":Ljava/io/IOException;
    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "ex":Ljava/io/IOException;
    goto :goto_3

    .line 354
    :cond_1
    :goto_4
    throw v0
.end method

.method private transferData(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .locals 2
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
    .param p3, "data"    # [B
    .param p4, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 277
    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->readFromResponse(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    move-result v0

    .line 278
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->handleEndOfStream(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 280
    return-void

    .line 283
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    .line 284
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->writeDataToDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;[BI)V

    .line 285
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    .line 286
    iget v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->reportProgress(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->checkPausedOrCanceled(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V

    .line 290
    .end local v0    # "bytesRead":I
    goto :goto_0
.end method

.method private updateDatabaseFromHeaders(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;)V
    .locals 2
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "innerState"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;

    .line 582
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v1, p2, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 584
    return-void
.end method

.method private updateDownloadDatabase(IZIIZLjava/lang/String;)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "countRetry"    # Z
    .param p3, "retryAfter"    # I
    .param p4, "redirectCount"    # I
    .param p5, "gotData"    # Z
    .param p6, "filename"    # Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 839
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p3, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    .line 840
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput p4, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    .line 841
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    .line 842
    if-nez p2, :cond_0

    .line 843
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    goto :goto_0

    .line 844
    :cond_0
    const/4 v0, 0x1

    if-eqz p5, :cond_1

    .line 845
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iput v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    goto :goto_0

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget v2, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    .line 849
    :goto_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    .line 850
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method private writeDataToDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;[BI)V
    .locals 6
    .param p1, "state"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .param p2, "data"    # [B
    .param p3, "bytesRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
        }
    .end annotation

    .line 429
    :try_start_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    .line 432
    :cond_0
    iget-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 434
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->closeDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "ex":Ljava/io/IOException;
    invoke-static {}, Lcom/google/android/vending/expansion/downloader/Helpers;->isExternalMediaMounted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 443
    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v1

    .line 444
    .local v1, "availableBytes":J
    int-to-long v3, p3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 445
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v4, 0x1f2

    const-string v5, "insufficient space while writing destination file"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 448
    :cond_1
    new-instance v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "while writing destination file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 449
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1ec

    invoke-direct {v3, p0, v5, v4, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 438
    .end local v1    # "availableBytes":J
    :cond_2
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;

    const/16 v2, 0x1f3

    const-string v3, "external media not mounted while writing destination file"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 141
    const-string v1, ": "

    const-string v2, "LVLDL"

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 143
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mService:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-direct {v0, v3, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;-><init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)V

    move-object v8, v0

    .line 144
    .local v8, "state":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    const/4 v3, 0x0

    .line 145
    .local v3, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/16 v9, 0x1eb

    .line 148
    .local v9, "finalStatus":I
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    move-object v4, v0

    .line 152
    .local v4, "pm":Landroid/os/PowerManager;
    const-string v0, "org.godot.game:wakelock"

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    move-object v3, v0

    .line 153
    const-wide/32 v5, 0x124f80

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 161
    const/4 v0, 0x0

    move v5, v0

    .line 162
    .local v5, "finished":Z
    :goto_0
    if-nez v5, :cond_0

    .line 170
    new-instance v0, Ljava/net/URL;

    iget-object v6, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 171
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 172
    .local v7, "request":Ljava/net/HttpURLConnection;
    const-string v0, "User-Agent"

    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    invoke-direct {p0, v8, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->executeDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$RetryDownload; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    const/4 v0, 0x1

    .line 179
    .end local v5    # "finished":Z
    .local v0, "finished":Z
    :try_start_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    const/4 v5, 0x0

    .line 181
    .end local v7    # "request":Ljava/net/HttpURLConnection;
    .local v5, "request":Ljava/net/HttpURLConnection;
    move v5, v0

    goto :goto_1

    .line 179
    .end local v0    # "finished":Z
    .local v5, "finished":Z
    .restart local v7    # "request":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v0

    move-object v10, v0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    const/4 v0, 0x0

    .line 181
    .end local v7    # "request":Ljava/net/HttpURLConnection;
    .local v0, "request":Ljava/net/HttpURLConnection;
    nop

    .end local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v8    # "state":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .end local v9    # "finalStatus":I
    throw v10

    .line 176
    .end local v0    # "request":Ljava/net/HttpURLConnection;
    .restart local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .restart local v7    # "request":Ljava/net/HttpURLConnection;
    .restart local v8    # "state":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;
    .restart local v9    # "finalStatus":I
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 180
    const/4 v0, 0x0

    .line 181
    .end local v7    # "request":Ljava/net/HttpURLConnection;
    .restart local v0    # "request":Ljava/net/HttpURLConnection;
    nop

    .line 182
    .end local v0    # "request":Ljava/net/HttpURLConnection;
    .end local v6    # "url":Ljava/net/URL;
    :goto_1
    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0, v8}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->finalizeDestinationFile(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;)V
    :try_end_2
    .catch Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    const/16 v0, 0xc8

    .line 203
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v5    # "finished":Z
    .end local v9    # "finalStatus":I
    .local v0, "finalStatus":I
    if-eqz v3, :cond_1

    .line 204
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    const/4 v3, 0x0

    move-object v9, v3

    goto :goto_2

    .line 203
    :cond_1
    move-object v9, v3

    .line 207
    .end local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .local v9, "wakeLock":Landroid/os/PowerManager$WakeLock;
    :goto_2
    invoke-direct {p0, v8, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 208
    iget-boolean v3, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v4, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v5, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v6, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v7, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v1, p0

    move v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    .line 210
    goto :goto_4

    .line 197
    .end local v0    # "finalStatus":I
    .restart local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .local v9, "finalStatus":I
    :catchall_1
    move-exception v0

    .line 199
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    const/16 v0, 0x1eb

    .line 203
    .end local v9    # "finalStatus":I
    .local v0, "finalStatus":I
    if-eqz v3, :cond_1

    .line 204
    :goto_3
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    const/4 v1, 0x0

    move-object v9, v1

    .end local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    goto :goto_2

    .line 190
    .end local v0    # "finalStatus":I
    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .restart local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .restart local v9    # "finalStatus":I
    :catch_1
    move-exception v0

    .line 192
    .local v0, "error":Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborting request for download "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->mInfo:Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->printStackTrace()V

    .line 195
    iget v1, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$StopRequest;->mFinalStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v0, v1

    .line 203
    .end local v9    # "finalStatus":I
    .local v0, "finalStatus":I
    if-eqz v3, :cond_1

    .line 204
    goto :goto_3

    .line 211
    .end local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .local v9, "wakeLock":Landroid/os/PowerManager$WakeLock;
    :goto_4
    return-void

    .line 203
    .end local v0    # "finalStatus":I
    .restart local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .local v9, "finalStatus":I
    :catchall_2
    move-exception v0

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 205
    const/4 v3, 0x0

    move-object v10, v3

    goto :goto_5

    .line 203
    :cond_2
    move-object v10, v3

    .line 207
    .end local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    .local v10, "wakeLock":Landroid/os/PowerManager$WakeLock;
    :goto_5
    invoke-direct {p0, v8, v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->cleanupDestination(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;I)V

    .line 208
    iget-boolean v3, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mCountRetry:Z

    iget v4, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRetryAfter:I

    iget v5, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mRedirectCount:I

    iget-boolean v6, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mGotData:Z

    iget-object v7, v8, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v1, p0

    move v2, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;->notifyDownloadCompleted(IZIIZLjava/lang/String;)V

    .line 210
    throw v0
.end method
