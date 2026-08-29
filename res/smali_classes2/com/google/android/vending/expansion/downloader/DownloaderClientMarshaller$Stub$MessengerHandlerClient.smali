.class Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$MessengerHandlerClient;
.super Landroid/os/Handler;
.source "DownloaderClientMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessengerHandlerClient"
.end annotation


# instance fields
.field private final mDownloader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)V
    .locals 1
    .param p1, "downloader"    # Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$MessengerHandlerClient;->mDownloader:Ljava/lang/ref/WeakReference;

    .line 132
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 136
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$MessengerHandlerClient;->mDownloader:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    .line 137
    .local v0, "downloader":Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;
    if-eqz v0, :cond_0

    .line 138
    invoke-static {v0, p1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->-$$Nest$mhandleMessage(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;Landroid/os/Message;)V

    .line 140
    :cond_0
    return-void
.end method
