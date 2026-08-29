.class public final synthetic Lorg/godotengine/godot/GodotRenderView$-CC;
.super Ljava/lang/Object;
.source "GodotRenderView.java"


# direct methods
.method public static $default$canCapturePointer(Lorg/godotengine/godot/GodotRenderView;)Z
    .locals 1
    .param p0, "_this"    # Lorg/godotengine/godot/GodotRenderView;

    .line 72
    invoke-interface {p0}, Lorg/godotengine/godot/GodotRenderView;->getView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/godotengine/godot/utils/DeviceUtils;->isNativeXRDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/godotengine/godot/GodotRenderView;->getInputHandler()Lorg/godotengine/godot/input/GodotInputHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotInputHandler;->canCapturePointer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
