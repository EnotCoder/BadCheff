.class public Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;
.super Ljava/lang/Object;
.source "DownloaderServiceMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;,
        Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;
    }
.end annotation


# static fields
.field public static final MSG_REQUEST_ABORT_DOWNLOAD:I = 0x1

.field public static final MSG_REQUEST_CLIENT_UPDATE:I = 0x6

.field public static final MSG_REQUEST_CONTINUE_DOWNLOAD:I = 0x4

.field public static final MSG_REQUEST_DOWNLOAD_STATE:I = 0x5

.field public static final MSG_REQUEST_PAUSE_DOWNLOAD:I = 0x2

.field public static final MSG_SET_DOWNLOAD_FLAGS:I = 0x3

.field public static final PARAMS_FLAGS:Ljava/lang/String; = "flags"

.field public static final PARAM_MESSENGER:Ljava/lang/String; = "EMH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    .locals 1
    .param p0, "msg"    # Landroid/os/Messenger;

    .line 185
    new-instance v0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Proxy;-><init>(Landroid/os/Messenger;)V

    return-object v0
.end method

.method public static CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderService;)Lcom/google/android/vending/expansion/downloader/IStub;
    .locals 1
    .param p0, "itf"    # Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    .line 198
    new-instance v0, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;

    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller$Stub;-><init>(Lcom/google/android/vending/expansion/downloader/IDownloaderService;)V

    return-object v0
.end method
