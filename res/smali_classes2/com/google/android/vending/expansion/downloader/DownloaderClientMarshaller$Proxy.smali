.class Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;
.super Ljava/lang/Object;
.source "DownloaderClientMarshaller.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Messenger;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;->mServiceMessenger:Landroid/os/Messenger;

    .line 105
    return-void
.end method

.method private send(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .line 94
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 95
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 2
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .line 88
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 89
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 2
    .param p1, "newState"    # I

    .line 81
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 82
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "newState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const/16 v1, 0xa

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    .line 112
    return-void
.end method
