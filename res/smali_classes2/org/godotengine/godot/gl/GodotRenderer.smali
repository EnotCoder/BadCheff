.class public Lorg/godotengine/godot/gl/GodotRenderer;
.super Ljava/lang/Object;
.source "GodotRenderer.java"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private activityJustResumed:Z

.field private final pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Lorg/godotengine/godot/gl/GodotRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->activityJustResumed:Z

    .line 52
    invoke-static {}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 53
    return-void
.end method


# virtual methods
.method public onActivityPaused()V
    .locals 0

    .line 96
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onRendererPaused()V

    .line 97
    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->activityJustResumed:Z

    .line 93
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 56
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->activityJustResumed:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onRendererResumed()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->activityJustResumed:Z

    .line 61
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->step()Z

    move-result v0

    .line 62
    .local v0, "swapBuffers":Z
    iget-object v1, p0, Lorg/godotengine/godot/gl/GodotRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 63
    .local v2, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v2, p1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onGLDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 64
    .end local v2    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 66
    :cond_1
    return v0
.end method

.method public onRenderThreadExiting()V
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Destroying Godot Engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->ondestroy()V

    .line 73
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 76
    const/4 v0, 0x0

    invoke-static {v0, p2, p3}, Lorg/godotengine/godot/GodotLib;->resize(Landroid/view/Surface;II)V

    .line 77
    iget-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 78
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1, p1, p2, p3}, Lorg/godotengine/godot/plugin/GodotPlugin;->onGLSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 79
    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 83
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/godotengine/godot/GodotLib;->newcontext(Landroid/view/Surface;)V

    .line 84
    iget-object v0, p0, Lorg/godotengine/godot/gl/GodotRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    invoke-virtual {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getAllPlugins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 85
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1, p1, p2}, Lorg/godotengine/godot/plugin/GodotPlugin;->onGLSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 86
    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method
