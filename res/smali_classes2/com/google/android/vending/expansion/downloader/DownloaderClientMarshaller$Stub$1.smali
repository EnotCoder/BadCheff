.class Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;
.super Ljava/lang/Object;
.source "DownloaderClientMarshaller.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    .line 173
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 180
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->-$$Nest$fputmServiceMessenger(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;Landroid/os/Messenger;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->-$$Nest$fgetmItf(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->-$$Nest$fgetmServiceMessenger(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onServiceConnected(Landroid/os/Messenger;)V

    .line 183
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 188
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->-$$Nest$fputmServiceMessenger(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;Landroid/os/Messenger;)V

    .line 189
    return-void
.end method
