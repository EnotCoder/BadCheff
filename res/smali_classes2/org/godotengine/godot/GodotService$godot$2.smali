.class final Lorg/godotengine/godot/GodotService$godot$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GodotService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/GodotService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/godotengine/godot/Godot;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/godotengine/godot/Godot;",
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
.field final synthetic this$0:Lorg/godotengine/godot/GodotService;


# direct methods
.method constructor <init>(Lorg/godotengine/godot/GodotService;)V
    .locals 1

    iput-object p1, p0, Lorg/godotengine/godot/GodotService$godot$2;->this$0:Lorg/godotengine/godot/GodotService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotService$godot$2;->invoke()Lorg/godotengine/godot/Godot;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/godotengine/godot/Godot;
    .locals 3

    .line 22
    new-instance v0, Lorg/godotengine/godot/Godot;

    iget-object v1, p0, Lorg/godotengine/godot/GodotService$godot$2;->this$0:Lorg/godotengine/godot/GodotService;

    invoke-virtual {v1}, Lorg/godotengine/godot/GodotService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/godotengine/godot/Godot;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
