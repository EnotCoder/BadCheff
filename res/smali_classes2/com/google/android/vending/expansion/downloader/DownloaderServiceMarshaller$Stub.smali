.class Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;
.super Ljava/lang/Object;
.source "DownloaderServiceMarshaller.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$MessengerHandlerServer;
    }
.end annotation


# instance fields
.field private mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field final mMessenger:Landroid/os/Messenger;

.field private final mMsgHandler:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$MessengerHandlerServer;


# direct methods
.method static bridge synthetic -$$Nest$mhandleMessage(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/IDownloaderService;)V
    .locals 2
    .param p1, "itf"    # Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 115
    new-instance v0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$MessengerHandlerServer;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$MessengerHandlerServer;-><init>(Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mMsgHandler:Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub$MessengerHandlerServer;

    .line 116
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    .line 159
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 160
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EMH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    goto :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestDownloadStatus()V

    .line 149
    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestContinueDownload()V

    .line 140
    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->setDownloadFlags(I)V

    .line 146
    goto :goto_0

    .line 142
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestPauseDownload()V

    .line 143
    goto :goto_0

    .line 136
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    invoke-interface {v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->requestAbortDownload()V

    .line 137
    nop

    .line 155
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .line 170
    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .line 175
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method
