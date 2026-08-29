.class Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerState"
.end annotation


# instance fields
.field public mBytesNotified:I

.field public mBytesSoFar:I

.field public mBytesThisSession:I

.field public mContinuingDownload:Z

.field public mHeaderContentDisposition:Ljava/lang/String;

.field public mHeaderContentLength:Ljava/lang/String;

.field public mHeaderContentLocation:Ljava/lang/String;

.field public mHeaderETag:Ljava/lang/String;

.field public mTimeLastNotification:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesSoFar:I

    .line 95
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesThisSession:I

    .line 97
    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mContinuingDownload:Z

    .line 101
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mBytesNotified:I

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;->mTimeLastNotification:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadThread$InnerState;-><init>()V

    return-void
.end method
