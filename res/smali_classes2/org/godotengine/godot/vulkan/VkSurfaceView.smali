.class public Lorg/godotengine/godot/vulkan/VkSurfaceView;
.super Landroid/view/SurfaceView;
.source "VkSurfaceView.kt"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0010\u0018\u0000 \u001f2\u00020\u00012\u00020\u0002:\u0001\u001fB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u000fH\u0004J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u000fJ\u0008\u0010\u0014\u001a\u00020\u000fH\u0004J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0007J(\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001aH\u0016J\u0010\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006 "
    }
    d2 = {
        "Lorg/godotengine/godot/vulkan/VkSurfaceView;",
        "Landroid/view/SurfaceView;",
        "Landroid/view/SurfaceHolder$Callback;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "renderer",
        "Lorg/godotengine/godot/vulkan/VkRenderer;",
        "vkThread",
        "Lorg/godotengine/godot/vulkan/VkThread;",
        "getVkThread",
        "()Lorg/godotengine/godot/vulkan/VkThread;",
        "vkThread$delegate",
        "Lkotlin/Lazy;",
        "pauseRenderThread",
        "",
        "queueOnVkThread",
        "runnable",
        "Ljava/lang/Runnable;",
        "requestRenderThreadExitAndWait",
        "resumeRenderThread",
        "startRenderer",
        "surfaceChanged",
        "holder",
        "Landroid/view/SurfaceHolder;",
        "format",
        "",
        "width",
        "height",
        "surfaceCreated",
        "surfaceDestroyed",
        "Companion",
        "lib_templateDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;


# instance fields
.field private renderer:Lorg/godotengine/godot/vulkan/VkRenderer;

.field private final vkThread$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->Companion:Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lorg/godotengine/godot/vulkan/VkSurfaceView$vkThread$2;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView$vkThread$2;-><init>(Lorg/godotengine/godot/vulkan/VkSurfaceView;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->vkThread$delegate:Lkotlin/Lazy;

    .line 71
    nop

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->setClickable(Z)V

    .line 73
    invoke-virtual {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 74
    nop

    .line 52
    return-void
.end method

.method public static final synthetic access$getRenderer$p(Lorg/godotengine/godot/vulkan/VkSurfaceView;)Lorg/godotengine/godot/vulkan/VkRenderer;
    .locals 1
    .param p0, "$this"    # Lorg/godotengine/godot/vulkan/VkSurfaceView;

    .line 52
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->renderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    return-object v0
.end method

.method private final getVkThread()Lorg/godotengine/godot/vulkan/VkThread;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->vkThread$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/vulkan/VkThread;

    return-object v0
.end method


# virtual methods
.method protected final pauseRenderThread()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->onPause()V

    .line 113
    return-void
.end method

.method public final queueOnVkThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/vulkan/VkThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public final requestRenderThreadExitAndWait()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->requestExitAndWait()V

    .line 120
    return-void
.end method

.method protected final resumeRenderThread()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->onResume()V

    .line 104
    return-void
.end method

.method public final startRenderer(Lorg/godotengine/godot/vulkan/VkRenderer;)V
    .locals 3
    .param p1, "renderer"    # Lorg/godotengine/godot/vulkan/VkRenderer;

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->Companion:Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;

    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->renderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "startRenderer must only be invoked once"

    invoke-virtual {v0, v1, v2}, Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;->checkState(ZLjava/lang/Object;)V

    .line 84
    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView;->renderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 85
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->start()V

    .line 86
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/godotengine/godot/vulkan/VkThread;->onSurfaceChanged(II)V

    .line 124
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->onSurfaceCreated()V

    .line 132
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getVkThread()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkThread;->onSurfaceDestroyed()V

    .line 128
    return-void
.end method
