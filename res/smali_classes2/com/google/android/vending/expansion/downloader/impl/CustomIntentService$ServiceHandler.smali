.class final Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "CustomIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;


# direct methods
.method public constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 97
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    .line 98
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "paramMessage"    # Landroid/os/Message;

    .line 103
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    invoke-virtual {v0}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->shouldStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "stopSelf"

    const-string v1, "CustomIntentService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService$ServiceHandler;->this$0:Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/google/android/vending/expansion/downloader/impl/CustomIntentService;->stopSelf(I)V

    .line 108
    const-string v0, "afterStopSelf"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method
