.class public Lorg/godotengine/godot/gl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;,
        Lorg/godotengine/godot/gl/GLSurfaceView$GLWrapper;,
        Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;,
        Lorg/godotengine/godot/gl/GLSurfaceView$SimpleEGLConfigChooser;,
        Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;,
        Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;,
        Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lorg/godotengine/godot/gl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;,
        Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;,
        Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;,
        Lorg/godotengine/godot/gl/GLSurfaceView$LogWriter;,
        Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;,
        Lorg/godotengine/godot/gl/GLSurfaceView$BaseConfigChooser;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sGLThreadManager:Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

.field private mGLWrapper:Lorg/godotengine/godot/gl/GLSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/gl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmDebugFlags(Lorg/godotengine/godot/gl/GLSurfaceView;)I
    .locals 0

    iget p0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEGLConfigChooser(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;
    .locals 0

    iget-object p0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLConfigChooser:Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEGLContextClientVersion(Lorg/godotengine/godot/gl/GLSurfaceView;)I
    .locals 0

    iget p0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLContextClientVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEGLContextFactory(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;
    .locals 0

    iget-object p0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLContextFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEGLWindowSurfaceFactory(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 0

    iget-object p0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGLWrapper(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$GLWrapper;
    .locals 0

    iget-object p0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLWrapper:Lorg/godotengine/godot/gl/GLSurfaceView$GLWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreserveEGLContextOnPause(Lorg/godotengine/godot/gl/GLSurfaceView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderer(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;
    .locals 0

    iget-object p0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mRenderer:Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;
    .locals 1

    sget-object v0, Lorg/godotengine/godot/gl/GLSurfaceView;->sGLThreadManager:Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1914
    new-instance v0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager-IA;)V

    sput-object v0, Lorg/godotengine/godot/gl/GLSurfaceView;->sGLThreadManager:Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1916
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 217
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->init()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1916
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 226
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->init()V

    .line 227
    return-void
.end method

.method private checkRenderThreadState()V
    .locals 2

    .line 1888
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    if-nez v0, :cond_0

    .line 1892
    return-void

    .line 1889
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 246
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 254
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 239
    nop

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 239
    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .line 291
    iget v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .line 509
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 625
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 629
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mRenderer:Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    .line 630
    const/4 v0, 0x1

    .line 631
    .local v0, "renderMode":I
    iget-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 634
    :cond_0
    new-instance v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    iget-object v2, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    .line 635
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 636
    invoke-virtual {v1, v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 638
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->start()V

    .line 640
    .end local v0    # "renderMode":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mDetached:Z

    .line 641
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 651
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mDetached:Z

    .line 652
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 653
    return-void
.end method

.method protected final pauseGLThread()V
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->onPause()V

    .line 584
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 616
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 520
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->requestRender()V

    .line 521
    return-void
.end method

.method protected final requestRenderThreadExitAndWait()V
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 606
    :cond_0
    return-void
.end method

.method protected final resumeGLThread()V
    .locals 1

    .line 596
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->onResume()V

    .line 597
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .line 283
    iput p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mDebugFlags:I

    .line 284
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .line 446
    new-instance v8, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v8}, Lorg/godotengine/godot/gl/GLSurfaceView;->setEGLConfigChooser(Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;)V

    .line 448
    return-void
.end method

.method public setEGLConfigChooser(Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;

    .line 409
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->checkRenderThreadState()V

    .line 410
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLConfigChooser:Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;

    .line 411
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .line 428
    new-instance v0, Lorg/godotengine/godot/gl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->setEGLConfigChooser(Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;)V

    .line 429
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 477
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->checkRenderThreadState()V

    .line 478
    iput p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLContextClientVersion:I

    .line 479
    return-void
.end method

.method public setEGLContextFactory(Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;

    .line 378
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->checkRenderThreadState()V

    .line 379
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLContextFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;

    .line 380
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 392
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->checkRenderThreadState()V

    .line 393
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 394
    return-void
.end method

.method public setGLWrapper(Lorg/godotengine/godot/gl/GLSurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lorg/godotengine/godot/gl/GLSurfaceView$GLWrapper;

    .line 270
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLWrapper:Lorg/godotengine/godot/gl/GLSurfaceView$GLWrapper;

    .line 271
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .line 315
    iput-boolean p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 316
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .line 498
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 499
    return-void
.end method

.method public setRenderer(Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    .line 352
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->checkRenderThreadState()V

    .line 353
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLConfigChooser:Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lorg/godotengine/godot/gl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView;Z)V

    iput-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLConfigChooser:Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLContextFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView;Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory-IA;)V

    iput-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLContextFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;

    .line 359
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 360
    new-instance v0, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView$DefaultWindowSurfaceFactory-IA;)V

    iput-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 362
    :cond_2
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mRenderer:Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    .line 363
    new-instance v0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    iget-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    .line 364
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->start()V

    .line 365
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 545
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 546
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 528
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 529
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 537
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 538
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "finishDrawing"    # Ljava/lang/Runnable;

    .line 554
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView;->mGLThread:Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0, p2}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->requestRenderAndNotify(Ljava/lang/Runnable;)V

    .line 557
    :cond_0
    return-void
.end method
