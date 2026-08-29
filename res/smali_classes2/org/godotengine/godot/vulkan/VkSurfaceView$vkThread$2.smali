.class final Lorg/godotengine/godot/vulkan/VkSurfaceView$vkThread$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VkSurfaceView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/vulkan/VkSurfaceView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/godotengine/godot/vulkan/VkThread;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/godotengine/godot/vulkan/VkThread;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/godotengine/godot/vulkan/VkSurfaceView;


# direct methods
.method constructor <init>(Lorg/godotengine/godot/vulkan/VkSurfaceView;)V
    .locals 1

    iput-object p1, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView$vkThread$2;->this$0:Lorg/godotengine/godot/vulkan/VkSurfaceView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView$vkThread$2;->invoke()Lorg/godotengine/godot/vulkan/VkThread;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/godotengine/godot/vulkan/VkThread;
    .locals 3

    .line 63
    new-instance v0, Lorg/godotengine/godot/vulkan/VkThread;

    iget-object v1, p0, Lorg/godotengine/godot/vulkan/VkSurfaceView$vkThread$2;->this$0:Lorg/godotengine/godot/vulkan/VkSurfaceView;

    invoke-static {v1}, Lorg/godotengine/godot/vulkan/VkSurfaceView;->access$getRenderer$p(Lorg/godotengine/godot/vulkan/VkSurfaceView;)Lorg/godotengine/godot/vulkan/VkRenderer;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "renderer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/vulkan/VkThread;-><init>(Lorg/godotengine/godot/vulkan/VkSurfaceView;Lorg/godotengine/godot/vulkan/VkRenderer;)V

    return-object v0
.end method
