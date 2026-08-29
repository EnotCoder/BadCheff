.class Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;
.super Ljava/lang/Object;
.source "DownloaderServiceMarshaller.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mMsg:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Messenger;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->mMsg:Landroid/os/Messenger;

    .line 75
    return-void
.end method

.method private send(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "method"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .line 64
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 65
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->mMsg:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 71
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onClientUpdated(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "clientMessenger"    # Landroid/os/Messenger;

    .line 106
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 107
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "EMH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public requestAbortDownload()V
    .locals 2

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    .line 80
    return-void
.end method

.method public requestContinueDownload()V
    .locals 2

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public requestDownloadStatus()V
    .locals 2

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public requestPauseDownload()V
    .locals 2

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public setDownloadFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "flags"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;->send(ILandroid/os/Bundle;)V

    .line 92
    return-void
.end method
