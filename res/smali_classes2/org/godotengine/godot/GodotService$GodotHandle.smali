.class public final Lorg/godotengine/godot/GodotService$GodotHandle;
.super Landroid/os/Binder;
.source "GodotService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/GodotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GodotHandle"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/godotengine/godot/GodotService$GodotHandle;",
        "Landroid/os/Binder;",
        "godot",
        "Lorg/godotengine/godot/Godot;",
        "(Lorg/godotengine/godot/Godot;)V",
        "getGodot",
        "()Lorg/godotengine/godot/Godot;",
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


# instance fields
.field private final godot:Lorg/godotengine/godot/Godot;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/Godot;)V
    .locals 1
    .param p1, "godot"    # Lorg/godotengine/godot/Godot;

    const-string v0, "godot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/GodotService$GodotHandle;->godot:Lorg/godotengine/godot/Godot;

    return-void
.end method


# virtual methods
.method public final getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/godotengine/godot/GodotService$GodotHandle;->godot:Lorg/godotengine/godot/Godot;

    return-object v0
.end method
