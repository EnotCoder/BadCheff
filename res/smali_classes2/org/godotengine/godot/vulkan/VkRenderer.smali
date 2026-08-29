.class public final Lorg/godotengine/godot/vulkan/VkRenderer;
.super Ljava/lang/Object;
.source "VkRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/vulkan/VkRenderer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/godotengine/godot/vulkan/VkRenderer;",
        "",
        "()V",
        "pluginRegistry",
        "Lorg/godotengine/godot/plugin/GodotPluginRegistry;",
        "onRenderThreadExiting",
        "",
        "onVkDrawFrame",
        "onVkPause",
        "onVkResume",
        "onVkSurfaceChanged",
        "surface",
        "Landroid/view/Surface;",
        "width",
        "",
        "height",
        "onVkSurfaceCreated",
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
.field public static final Companion:Lorg/godotengine/godot/vulkan/VkRenderer$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/vulkan/VkRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/vulkan/VkRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/vulkan/VkRenderer;->Companion:Lorg/godotengine/godot/vulkan/VkRenderer$Companion;

    .line 55
    const-class v0, Lorg/godotengine/godot/vulkan/VkRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/vulkan/VkRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    const-string v1, "getPluginRegistry(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/godotengine/godot/vulkan/VkRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 52
    return-void
.end method


# virtual methods
.method public final onRenderThreadExiting()V
    .locals 2

    .line 110
    sget-object v0, Lorg/godotengine/godot/vulkan/VkRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Destroying Godot Engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->ondestroy()V

    .line 112
    return-void
.end method

.method public final onVkDrawFrame()V
    .locals 2

    .line 86
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->step()Z

    .line 87
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

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

    .line 88
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onVkDrawFrame()V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public final onVkPause()V
    .locals 0

    .line 103
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onRendererPaused()V

    .line 104
    return-void
.end method

.method public final onVkResume()V
    .locals 0

    .line 96
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->onRendererResumed()V

    .line 97
    return-void
.end method

.method public final onVkSurfaceChanged(Landroid/view/Surface;II)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p1, p2, p3}, Lorg/godotengine/godot/GodotLib;->resize(Landroid/view/Surface;II)V

    .line 77
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

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
    invoke-virtual {v1, p1, p2, p3}, Lorg/godotengine/godot/plugin/GodotPlugin;->onVkSurfaceChanged(Landroid/view/Surface;II)V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public final onVkSurfaceCreated(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Lorg/godotengine/godot/GodotLib;->newcontext(Landroid/view/Surface;)V

    .line 66
    iget-object v0, p0, Lorg/godotengine/godot/vulkan/VkRenderer;->pluginRegistry:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

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

    .line 67
    .local v1, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v1, p1}, Lorg/godotengine/godot/plugin/GodotPlugin;->onVkSurfaceCreated(Landroid/view/Surface;)V

    .end local v1    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
