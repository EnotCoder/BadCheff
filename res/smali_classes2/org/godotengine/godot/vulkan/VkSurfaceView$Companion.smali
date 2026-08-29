.class public final Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;
.super Ljava/lang/Object;
.source "VkSurfaceView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/vulkan/VkSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVkSurfaceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VkSurfaceView.kt\norg/godotengine/godot/vulkan/VkSurfaceView$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;",
        "",
        "()V",
        "checkState",
        "",
        "expression",
        "",
        "errorMessage",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/vulkan/VkSurfaceView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkState(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "expression"    # Z
    .param p2, "errorMessage"    # Ljava/lang/Object;

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, "$i$a$-check-VkSurfaceView$Companion$checkState$1":I
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-VkSurfaceView$Companion$checkState$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
