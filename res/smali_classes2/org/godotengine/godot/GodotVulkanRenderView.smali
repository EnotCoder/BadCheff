.class Lorg/godotengine/godot/GodotVulkanRenderView;
.super Lorg/godotengine/godot/vulkan/VkSurfaceView;
.source "GodotVulkanRenderView.java"

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

.field private final host:Lorg/godotengine/godot/GodotHost;

.field private final mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

.field private final mRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;


# direct methods
.method public static synthetic $r8$lambda$bYwjnKb3QBRs1Ot8xvAUPqdLQlg(Lorg/godotengine/godot/GodotVulkanRenderView;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->lambda$onActivityResumed$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tPt6F_HlnK20rT32JQWTaNWB0Ko(Lorg/godotengine/godot/GodotVulkanRenderView;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->lambda$onActivityPaused$0()V

    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/input/GodotInputHandler;)V
    .locals 2
    .param p1, "host"    # Lorg/godotengine/godot/GodotHost;
    .param p2, "godot"    # Lorg/godotengine/godot/Godot;
    .param p3, "inputHandler"    # Lorg/godotengine/godot/input/GodotInputHandler;

    .line 61
    invoke-interface {p1}, Lorg/godotengine/godot/GodotHost;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->customPointerIcons:Landroid/util/SparseArray;

    .line 63
    iput-object p1, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->host:Lorg/godotengine/godot/GodotHost;

    .line 64
    iput-object p2, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->godot:Lorg/godotengine/godot/Godot;

    .line 65
    iput-object p3, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 66
    new-instance v0, Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-direct {v0}, Lorg/godotengine/godot/vulkan/VkRenderer;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotVulkanRenderView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 70
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotVulkanRenderView;->setFocusableInTouchMode(Z)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotVulkanRenderView;->setClickable(Z)V

    .line 72
    return-void
.end method

.method private synthetic lambda$onActivityPaused$0()V
    .locals 1

    .line 92
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->focusout()V

    .line 94
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkPause()V

    .line 95
    return-void
.end method

.method private synthetic lambda$onActivityResumed$1()V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-virtual {v0}, Lorg/godotengine/godot/vulkan/VkRenderer;->onVkResume()V

    .line 113
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->focusin()V

    .line 114
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

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getDirectoryAccessHandler()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->filesystemFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 189
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getDirectoryAccessHandler()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 192
    .local v1, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 193
    .local v2, "imageInputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 197
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "imageInputStream":Ljava/io/InputStream;
    :cond_1
    :goto_0
    invoke-static {v0, p3, p4}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v1

    .line 198
    .local v1, "customPointerIcon":Landroid/view/PointerIcon;
    iget-object v2, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->customPointerIcons:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "customPointerIcon":Landroid/view/PointerIcon;
    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->customPointerIcons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    return-object v0
.end method

.method public getView()Landroid/view/SurfaceView;
    .locals 0

    .line 81
    return-object p0
.end method

.method public onActivityDestroyed()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->requestRenderThreadExitAndWait()V

    .line 120
    return-void
.end method

.method public onActivityPaused()V
    .locals 1

    .line 91
    new-instance v0, Lorg/godotengine/godot/GodotVulkanRenderView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/GodotVulkanRenderView$$ExternalSyntheticLambda0;-><init>(Lorg/godotengine/godot/GodotVulkanRenderView;)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotVulkanRenderView;->queueOnVkThread(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    .line 110
    new-instance v0, Lorg/godotengine/godot/GodotVulkanRenderView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/GodotVulkanRenderView$$ExternalSyntheticLambda1;-><init>(Lorg/godotengine/godot/GodotVulkanRenderView;)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotVulkanRenderView;->queueOnVkThread(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method

.method public onActivityStarted()V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->resumeRenderThread()V

    .line 106
    return-void
.end method

.method public onActivityStopped()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->pauseRenderThread()V

    .line 101
    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 151
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 146
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

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

    .line 141
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

    .line 136
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

    .line 170
    invoke-super {p0, p1}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->onPointerCaptureChange(Z)V

    .line 171
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 172
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 130
    invoke-super {p0, p1}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 131
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public queueOnRenderThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/Runnable;

    .line 86
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/GodotVulkanRenderView;->queueOnVkThread(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public releasePointerCapture()V
    .locals 2

    .line 164
    invoke-super {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->releasePointerCapture()V

    .line 165
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 166
    return-void
.end method

.method public requestPointerCapture()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->canCapturePointer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-super {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->requestPointerCapture()V

    .line 158
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mInputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->onPointerCaptureChange(Z)V

    .line 160
    :cond_0
    return-void
.end method

.method public setPointerIcon(I)V
    .locals 2
    .param p1, "pointerType"    # I

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->customPointerIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PointerIcon;

    .line 214
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotVulkanRenderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    .line 217
    :cond_0
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotVulkanRenderView;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 219
    .end local v0    # "pointerIcon":Landroid/view/PointerIcon;
    :cond_1
    return-void
.end method

.method public startRenderer()V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/godotengine/godot/GodotVulkanRenderView;->mRenderer:Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotVulkanRenderView;->startRenderer(Lorg/godotengine/godot/vulkan/VkRenderer;)V

    .line 77
    return-void
.end method
