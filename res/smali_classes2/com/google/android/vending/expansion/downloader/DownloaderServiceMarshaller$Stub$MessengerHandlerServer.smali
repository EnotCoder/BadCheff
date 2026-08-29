.class Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$MessengerHandlerServer;
.super Landroid/os/Handler;
.source "DownloaderServiceMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessengerHandlerServer"
.end annotation


# instance fields
.field private final mDownloader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)V
    .locals 1
    .param p1, "downloader"    # Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$MessengerHandlerServer;->mDownloader:Ljava/lang/ref/WeakReference;

    .line 122
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 126
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$MessengerHandlerServer;->mDownloader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    .line 127
    .local v0, "downloader":Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;
    if-eqz v0, :cond_0

    .line 128
    invoke-static {v0, p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->-$$Nest$mhandleMessage(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;Landroid/os/Message;)V

    .line 130
    :cond_0
    return-void
.end method
