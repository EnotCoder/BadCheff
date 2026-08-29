.class Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;
.super Ljava/lang/Object;
.source "DownloaderClientMarshaller.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$MessengerHandlerClient;
    }
.end annotation


# instance fields
.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDownloaderServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

.field final mMessenger:Landroid/os/Messenger;

.field private final mMsgHandler:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$MessengerHandlerClient;

.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$fgetmItf(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Lcom/google/android/vending/expansion/downloader/IDownloaderClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceMessenger(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mServiceMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessage(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)V
    .locals 2
    .param p1, "itf"    # Lcom/google/android/vending/expansion/downloader/IDownloaderClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/expansion/downloader/IDownloaderClient;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 165
    .local p2, "downloaderService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 125
    new-instance v0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$MessengerHandlerClient;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$MessengerHandlerClient;-><init>(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mMsgHandler:Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$MessengerHandlerClient;

    .line 126
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    .line 173
    new-instance v0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub$1;-><init>(Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mConnection:Landroid/content/ServiceConnection;

    .line 166
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 167
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mDownloaderServiceClass:Ljava/lang/Class;

    .line 168
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 159
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EMH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 158
    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onServiceConnected(Landroid/os/Messenger;)V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, "bun":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 149
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 150
    const-string v2, "progress"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .line 151
    .local v1, "dpi":Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    invoke-interface {v2, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 152
    .end local v1    # "dpi":Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;
    goto :goto_0

    .line 155
    .end local v0    # "bun":Landroid/os/Bundle;
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mItf:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "newState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    .line 156
    nop

    .line 162
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .line 194
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mContext:Landroid/content/Context;

    .line 195
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mDownloaderServiceClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "bindIntent":Landroid/content/Intent;
    const-string v1, "EMH"

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mBound:Z

    .line 205
    :goto_0
    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .line 209
    iget-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mBound:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mBound:Z

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mContext:Landroid/content/Context;

    .line 214
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method
