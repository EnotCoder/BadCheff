.class public final Lorg/godotengine/godot/vulkan/VkThread;
.super Ljava/lang/Thread;
.source "VkThread.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/vulkan/VkThread$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 )2\u00020\u0001:\u0001)B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001fJ\u0016\u0010!\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\"\u001a\u00020\u001fJ\u0006\u0010#\u001a\u00020\u001fJ\u000e\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\tJ\u0006\u0010&\u001a\u00020\u001fJ\u0008\u0010\'\u001a\u00020\u001fH\u0016J\u0008\u0010(\u001a\u00020\u001fH\u0002R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lorg/godotengine/godot/vulkan/VkThread;",
        "Ljava/lang/Thread;",
        "vkSurfaceView",
        "Lorg/godotengine/godot/vulkan/VkSurfaceView;",
        "vkRenderer",
        "Lorg/godotengine/godot/vulkan/VkRenderer;",
        "(Lorg/godotengine/godot/vulkan/VkSurfaceView;Lorg/godotengine/godot/vulkan/VkRenderer;)V",
        "eventQueue",
        "Ljava/util/ArrayList;",
        "Ljava/lang/Runnable;",
        "Lkotlin/collections/ArrayList;",
        "exited",
        "",
        "hasSurface",
        "height",
        "",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lockCondition",
        "Ljava/util/concurrent/locks/Condition;",
        "kotlin.jvm.PlatformType",
        "readyToDraw",
        "getReadyToDraw",
        "()Z",
        "rendererInitialized",
        "rendererResumed",
        "resumed",
        "shouldExit",
        "surfaceChanged",
        "width",
        "onPause",
        "",
        "onResume",
        "onSurfaceChanged",
        "onSurfaceCreated",
        "onSurfaceDestroyed",
        "queueEvent",
        "event",
        "requestExitAndWait",
        "run",
        "threadExiting",
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
.field public static final Companion:Lorg/godotengine/godot/vulkan/VkThread$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private exited:Z

.field private hasSurface:Z

.field private height:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final lockCondition:Ljava/util/concurrent/locks/Condition;

.field private rendererInitialized:Z

.field private rendererResumed:Z

.field private resumed:Z

.field private shouldExit:Z

.field private surfaceChanged:Z

.field private final vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

.field private final vkSurfaceView:Lorg/godotengine/godot/vulkan/VkSurfaceView;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/vulkan/VkThread$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/vulkan/VkThread$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/vulkan/VkThread;->Companion:Lorg/godotengine/godot/vulkan/VkThread$Companion;

    .line 45
    const-class v0, Lorg/godotengine/godot/vulkan/VkThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/vulkan/VkSurfaceView;Lorg/godotengine/godot/vulkan/VkRenderer;)V
    .locals 1
    .param p1, "vkSurfaceView"    # Lorg/godotengine/godot/vulkan/VkSurfaceView;
    .param p2, "vkRenderer"    # Lorg/godotengine/godot/vulkan/VkRenderer;

    const-string v0, "vkSurfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vkRenderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkSurfaceView:Lorg/godotengine/godot/vulkan/VkSurfaceView;

    iput-object p2, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->eventQueue:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    .line 43
    return-void
.end method

.method private final getReadyToDraw()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->hasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->resumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final threadExiting()V
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 78
    .local v1, "$i$a$-withLock-VkThread$threadExiting$1":I
    :try_start_0
    sget-object v2, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    const-string v3, "Exiting render thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-virtual {v2}, Lorg/godotengine/godot/vulkan/VkRenderer;->onRenderThreadExiting()V

    .line 81
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->exited:Z

    .line 82
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 83
    nop

    .end local v1    # "$i$a$-withLock-VkThread$threadExiting$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    return-void

    .line 77
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method


# virtual methods
.method public final onPause()V
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 129
    .local v1, "$i$a$-withLock-VkThread$onPause$1":I
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->resumed:Z

    .line 130
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 131
    nop

    .end local v1    # "$i$a$-withLock-VkThread$onPause$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    return-void

    .line 128
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final onResume()V
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 119
    .local v1, "$i$a$-withLock-VkThread$onResume$1":I
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->resumed:Z

    .line 120
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 121
    nop

    .end local v1    # "$i$a$-withLock-VkThread$onResume$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    return-void

    .line 118
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final onSurfaceChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 146
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 147
    .local v1, "$i$a$-withLock-VkThread$onSurfaceChanged$1":I
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->hasSurface:Z

    .line 148
    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->surfaceChanged:Z

    .line 149
    iput p1, p0, Lorg/godotengine/godot/vulkan/VkThread;->width:I

    .line 150
    iput p2, p0, Lorg/godotengine/godot/vulkan/VkThread;->height:I

    .line 152
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 153
    nop

    .end local v1    # "$i$a$-withLock-VkThread$onSurfaceChanged$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 154
    return-void

    .line 146
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final onSurfaceCreated()V
    .locals 0

    .line 140
    return-void
.end method

.method public final onSurfaceDestroyed()V
    .locals 3

    .line 160
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 161
    .local v1, "$i$a$-withLock-VkThread$onSurfaceDestroyed$1":I
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->hasSurface:Z

    .line 162
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 163
    nop

    .end local v1    # "$i$a$-withLock-VkThread$onSurfaceDestroyed$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 164
    return-void

    .line 160
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Runnable;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 91
    .local v1, "$i$a$-withLock-VkThread$queueEvent$1":I
    :try_start_0
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 93
    nop

    .end local v1    # "$i$a$-withLock-VkThread$queueEvent$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    return-void

    .line 90
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final requestExitAndWait()V
    .locals 6

    .line 100
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 101
    .local v1, "$i$a$-withLock-VkThread$requestExitAndWait$1":I
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->shouldExit:Z

    .line 102
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 103
    :goto_0
    iget-boolean v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->exited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 104
    nop

    .line 105
    :try_start_1
    sget-object v2, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/godotengine/godot/vulkan/VkThread;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting on exit for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .end local v2    # "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 111
    :cond_0
    nop

    .end local v1    # "$i$a$-withLock-VkThread$requestExitAndWait$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 112
    return-void

    .line 100
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public run()V
    .locals 8

    .line 170
    nop

    .line 171
    :goto_0
    nop

    .line 172
    :try_start_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 173
    .local v0, "event":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 174
    .local v2, "$i$a$-withLock-VkThread$run$1":I
    :goto_1
    nop

    .line 176
    :try_start_1
    iget-boolean v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->shouldExit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 177
    nop

    .end local v2    # "$i$a$-withLock-VkThread$run$1":I
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    .end local v0    # "event":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkThread;->threadExiting()V

    .restart local v0    # "event":Lkotlin/jvm/internal/Ref$ObjectRef;
    return-void

    .line 182
    .restart local v2    # "$i$a$-withLock-VkThread$run$1":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->eventQueue:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 184
    goto :goto_2

    .line 187
    :cond_1
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkThread;->getReadyToDraw()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 188
    iget-boolean v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererResumed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "getSurface(...)"

    if-nez v3, :cond_2

    .line 189
    :try_start_4
    iput-boolean v4, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererResumed:Z

    .line 190
    iget-object v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-virtual {v3}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkResume()V

    .line 192
    iget-boolean v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererInitialized:Z

    if-nez v3, :cond_2

    .line 193
    iput-boolean v4, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererInitialized:Z

    .line 194
    iget-object v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    iget-object v4, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkSurfaceView:Lorg/godotengine/godot/vulkan/VkSurfaceView;

    invoke-virtual {v4}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkSurfaceCreated(Landroid/view/Surface;)V

    .line 198
    :cond_2
    iget-boolean v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->surfaceChanged:Z

    if-eqz v3, :cond_3

    .line 199
    iget-object v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    iget-object v4, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkSurfaceView:Lorg/godotengine/godot/vulkan/VkSurfaceView;

    invoke-virtual {v4}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, p0, Lorg/godotengine/godot/vulkan/VkThread;->width:I

    iget v7, p0, Lorg/godotengine/godot/vulkan/VkThread;->height:I

    invoke-virtual {v3, v4, v6, v7}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkSurfaceChanged(Landroid/view/Surface;II)V

    .line 200
    iput-boolean v5, p0, Lorg/godotengine/godot/vulkan/VkThread;->surfaceChanged:Z

    .line 204
    :cond_3
    nop

    .line 217
    :goto_2
    nop

    .end local v2    # "$i$a$-withLock-VkThread$run$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    :try_start_5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 220
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 221
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 222
    :cond_4
    goto/16 :goto_0

    .line 226
    :cond_5
    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-virtual {v1}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkDrawFrame()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "event":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto/16 :goto_0

    .line 205
    .restart local v0    # "event":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v2    # "$i$a$-withLock-VkThread$run$1":I
    :cond_6
    :try_start_6
    iget-boolean v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererResumed:Z

    if-eqz v3, :cond_7

    .line 208
    iput-boolean v5, p0, Lorg/godotengine/godot/vulkan/VkThread;->rendererResumed:Z

    .line 209
    iget-object v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->vkRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-virtual {v3}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkPause()V

    .line 215
    :cond_7
    iget-object v3, p0, Lorg/godotengine/godot/vulkan/VkThread;->lockCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 173
    .end local v2    # "$i$a$-withLock-VkThread$run$1":I
    :catchall_0
    move-exception v2

    :try_start_7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 233
    .end local v0    # "event":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "ex":Ljava/lang/IllegalStateException;
    :try_start_8
    sget-object v1, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    const-string v2, "IllegalStateException"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    nop

    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    goto :goto_3

    .line 228
    :catch_1
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/lang/InterruptedException;
    sget-object v1, Lorg/godotengine/godot/vulkan/VkThread;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 233
    nop

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_3
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkThread;->threadExiting()V

    .line 234
    nop

    .line 235
    return-void

    .line 233
    :goto_4
    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkThread;->threadExiting()V

    throw v0
.end method
