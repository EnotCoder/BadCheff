.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# instance fields
.field public mControl:I

.field public mCurrentBytes:J

.field public mETag:Ljava/lang/String;

.field public final mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public final mIndex:I

.field mInitialized:Z

.field public mLastMod:J

.field public mNumFailed:I

.field public mRedirectCount:I

.field public mRetryAfter:I

.field public mStatus:I

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFuzz:I

    .line 47
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 48
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    .line 49
    return-void
.end method


# virtual methods
.method public logVerboseInfo()V
    .locals 4

    .line 78
    const-string v0, "Service adding new entry"

    const-string v1, "LVLDL"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FILENAME: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI     : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONTROL : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATUS  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED_C: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETRY_AF: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REDIRECT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAST_MOD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOTAL   : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CURRENT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ETAG    : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public resetDownload()V
    .locals 3

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 53
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    .line 54
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 56
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    .line 57
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    .line 58
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    .line 59
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    .line 60
    return-void
.end method

.method public restartTime(J)J
    .locals 5
    .param p1, "now"    # J

    .line 66
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_0

    .line 67
    return-wide p1

    .line 69
    :cond_0
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    if-lez v1, :cond_1

    .line 70
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    return-wide v2

    .line 72
    :cond_1
    iget-wide v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    iget v3, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFuzz:I

    add-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    shl-int v0, v4, v0

    mul-int v3, v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1
.end method
