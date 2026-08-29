.class Lorg/godotengine/godot/GodotGLRenderView;
.super Lorg/godotengine/godot/gl/GLSurfaceView;
.source "GodotGLRenderView.java"

# interfaces
.implements Lorg/godotengine/godot/GodotRenderView;


# instance fields
.field private final customPointerIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final godot:Lorg/godotengine/godot/Godot;

.field private final godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

.field private final host:Lorg/godotengine/godot/GodotHost;

.field private final inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;


# direct methods
.method public static synthetic $r8$lambda$4-Mphc72qMMQcbTfWFqid_eyUTw(Lorg/godotengine/godot/GodotGLRenderView;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/GodotGLRenderView;->lambda$onActivityPaused$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$vnVcXpKW1PK5cbakP14v5EQoFQY(Lorg/godotengine/godot/GodotGLRenderView;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/GodotGLRenderView;->lambda$onActivityResumed$1()V

    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/input/GodotInputHandler;Lorg/godotengine/godot/xr/XRMode;Z)V
    .locals 2
    .param p1, "host"    # Lorg/godotengine/godot/GodotHost;
    .param p2, "godot"    # Lorg/godotengine/godot/Godot;
    .param p3, "inputHandler"    # Lorg/godotengine/godot/input/GodotInputHandler;
    .param p4, "xrMode"    # Lorg/godotengine/godot/xr/XRMode;
    .param p5, "useDebugOpengl"    # Z

    .line 87
    invoke-interface {p1}, Lorg/godotengine/godot/GodotHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->customPointerIcons:Landroid/util/SparseArray;

    .line 89
    iput-object p1, p0, Lorg/godotengine/godot/GodotGLRenderView;->host:Lorg/godotengine/godot/GodotHost;

    .line 90
    iput-object p2, p0, Lorg/godotengine/godot/GodotGLRenderView;->godot:Lorg/godotengine/godot/Godot;

    .line 91
    iput-object p3, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 92
    new-instance v0, Lorg/godotengine/godot/gl/GodotRenderer;

    invoke-direct {v0}, Lorg/godotengine/godot/gl/GodotRenderer;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotGLRenderView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, p5}, Lorg/godotengine/godot/GodotGLRenderView;->init(Lorg/godotengine/godot/xr/XRMode;ZZ)V

    .line 97
    return-void
.end method

.method private init(Lorg/godotengine/godot/xr/XRMode;ZZ)V
    .locals 18
    .param p1, "xrMode"    # Lorg/godotengine/godot/xr/XRMode;
    .param p2, "translucent"    # Z
    .param p3, "useDebugOpengl"    # Z

    .line 250
    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/GodotGLRenderView;->setPreserveEGLContextOnPause(Z)V

    .line 251
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/GodotGLRenderView;->setFocusableInTouchMode(Z)V

    .line 252
    sget-object v1, Lorg/godotengine/godot/GodotGLRenderView$1;->$SwitchMap$org$godotengine$godot$xr$XRMode:[I

    invoke-virtual/range {p1 .. p1}, Lorg/godotengine/godot/xr/XRMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 271
    if-eqz p2, :cond_0

    .line 272
    invoke-virtual/range {p0 .. p0}, Lorg/godotengine/godot/GodotGLRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 255
    :pswitch_0
    new-instance v1, Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;

    invoke-direct {v1}, Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;-><init>()V

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/GodotGLRenderView;->setEGLConfigChooser(Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;)V

    .line 258
    new-instance v1, Lorg/godotengine/godot/xr/ovr/OvrContextFactory;

    invoke-direct {v1}, Lorg/godotengine/godot/xr/ovr/OvrContextFactory;-><init>()V

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/GodotGLRenderView;->setEGLContextFactory(Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;)V

    .line 261
    new-instance v1, Lorg/godotengine/godot/xr/ovr/OvrWindowSurfaceFactory;

    invoke-direct {v1}, Lorg/godotengine/godot/xr/ovr/OvrWindowSurfaceFactory;-><init>()V

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/GodotGLRenderView;->setEGLWindowSurfaceFactory(Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 262
    move/from16 v2, p3

    goto :goto_1

    .line 278
    :cond_0
    :goto_0
    new-instance v1, Lorg/godotengine/godot/xr/regular/RegularContextFactory;

    move/from16 v2, p3

    invoke-direct {v1, v2}, Lorg/godotengine/godot/xr/regular/RegularContextFactory;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/GodotGLRenderView;->setEGLContextFactory(Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;)V

    .line 286
    new-instance v1, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x18

    const/4 v9, 0x0

    new-instance v17, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;

    const/16 v11, 0x8

    const/16 v12, 0x8

    const/16 v13, 0x8

    const/16 v14, 0x8

    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object/from16 v10, v17

    invoke-direct/range {v10 .. v16}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;-><init>(IIIIII)V

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;-><init>(IIIIIILorg/godotengine/godot/xr/regular/RegularConfigChooser;)V

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/GodotGLRenderView;->setEGLConfigChooser(Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;)V

    .line 291
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onActivityPaused$0()V
    .locals 1

    .line 112
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->focusout()V

    .line 114
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GodotRenderer;->onActivityPaused()V

    .line 115
    return-void
.end method

.method private synthetic lambda$onActivityResumed$1()V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GodotRenderer;->onActivityResumed()V

    .line 128
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->focusin()V

    .line 129
    return-void
.end method


# virtual methods
.method public synthetic canCapturePointer()Z
    .locals 1

    invoke-static {p0}, Lorg/godotengine/godot/GodotRenderView$-CC;->$default$canCapturePointer(Lorg/godotengine/godot/GodotRenderView;)Z

    move-result v0

    return v0
.end method

.method public configurePointerIcon(ILjava/lang/String;FF)V
    .locals 4
    .param p1, "pointerType"    # I
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "hotSpotX"    # F
    .param p4, "hotSpotY"    # F

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lorg/godotengine/godot/GodotGLRenderView;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getDirectoryAccessHandler()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->filesystemFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/GodotGLRenderView;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getDirectoryAccessHandler()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 212
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 213
    .local v2, "imageInputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 217
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "imageInputStream":Ljava/io/InputStream;
    :cond_1
    :goto_0
    invoke-static {v0, p3, p4}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v1

    .line 218
    .local v1, "customPointerIcon":Landroid/view/PointerIcon;
    iget-object v2, p0, Lorg/godotengine/godot/GodotGLRenderView;->customPointerIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "customPointerIcon":Landroid/view/PointerIcon;
    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/godotengine/godot/GodotGLRenderView;->customPointerIcons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    return-object v0
.end method

.method public getView()Landroid/view/SurfaceView;
    .locals 0

    .line 101
    return-object p0
.end method

.method public onActivityDestroyed()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->requestRenderThreadExitAndWait()V

    .line 140
    return-void
.end method

.method public onActivityPaused()V
    .locals 1

    .line 111
    new-instance v0, Lorg/godotengine/godot/GodotGLRenderView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/GodotGLRenderView$$ExternalSyntheticLambda1;-><init>(Lorg/godotengine/godot/GodotGLRenderView;)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotGLRenderView;->queueEvent(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    .line 125
    new-instance v0, Lorg/godotengine/godot/GodotGLRenderView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/GodotGLRenderView$$ExternalSyntheticLambda0;-><init>(Lorg/godotengine/godot/GodotGLRenderView;)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotGLRenderView;->queueEvent(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public onActivityStarted()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->resumeGLThread()V

    .line 135
    return-void
.end method

.method public onActivityStopped()V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->pauseGLThread()V

    .line 121
    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 171
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 166
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 161
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lorg/godotengine/godot/gl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 156
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lorg/godotengine/godot/gl/GLSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onPointerCaptureChange(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 176
    invoke-super {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView;->onPointerCaptureChange(Z)V

    .line 177
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 178
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 244
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/godotengine/godot/gl/GLSurfaceView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 150
    invoke-super {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public queueOnRenderThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 106
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/GodotGLRenderView;->queueEvent(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public releasePointerCapture()V
    .locals 2

    .line 190
    invoke-super {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->releasePointerCapture()V

    .line 191
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 192
    return-void
.end method

.method public requestPointerCapture()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->canCapturePointer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-super {p0}, Lorg/godotengine/godot/gl/GLSurfaceView;->requestPointerCapture()V

    .line 184
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 186
    :cond_0
    return-void
.end method

.method public setPointerIcon(I)V
    .locals 2
    .param p1, "pointerType"    # I

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 233
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->customPointerIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PointerIcon;

    .line 234
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotGLRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 237
    :cond_0
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotGLRenderView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 239
    .end local v0    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_1
    return-void
.end method

.method public startRenderer()V
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/godotengine/godot/GodotGLRenderView;->godotRenderer:Lorg/godotengine/godot/gl/GodotRenderer;

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotGLRenderView;->setRenderer(Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;)V

    .line 297
    return-void
.end method
