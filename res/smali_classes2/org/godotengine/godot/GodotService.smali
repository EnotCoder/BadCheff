.class final Lorg/godotengine/godot/GodotService;
.super Landroid/app/Service;
.source "GodotService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/GodotService$Companion;,
        Lorg/godotengine/godot/GodotService$GodotHandle;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/godotengine/godot/GodotService;",
        "Landroid/app/Service;",
        "()V",
        "boundIntent",
        "Landroid/content/Intent;",
        "godot",
        "Lorg/godotengine/godot/Godot;",
        "getGodot",
        "()Lorg/godotengine/godot/Godot;",
        "godot$delegate",
        "Lkotlin/Lazy;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "onCreate",
        "",
        "onDestroy",
        "onRebind",
        "onTaskRemoved",
        "rootIntent",
        "onUnbind",
        "",
        "Companion",
        "GodotHandle",
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
.field public static final Companion:Lorg/godotengine/godot/GodotService$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private boundIntent:Landroid/content/Intent;

.field private final godot$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/GodotService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/GodotService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/GodotService;->Companion:Lorg/godotengine/godot/GodotService$Companion;

    .line 17
    const-class v0, Lorg/godotengine/godot/GodotService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/GodotService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lorg/godotengine/godot/GodotService$godot$2;

    invoke-direct {v0, p0}, Lorg/godotengine/godot/GodotService$godot$2;-><init>(Lorg/godotengine/godot/GodotService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/GodotService;->godot$delegate:Lkotlin/Lazy;

    .line 14
    return-void
.end method

.method private final getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/godotengine/godot/GodotService;->godot$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/Godot;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 34
    iget-object v0, p0, Lorg/godotengine/godot/GodotService;->boundIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lorg/godotengine/godot/GodotService;->TAG:Ljava/lang/String;

    const-string v1, "GodotService already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    iput-object p1, p0, Lorg/godotengine/godot/GodotService;->boundIntent:Landroid/content/Intent;

    .line 40
    new-instance v0, Lorg/godotengine/godot/GodotService$GodotHandle;

    invoke-direct {p0}, Lorg/godotengine/godot/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/godotengine/godot/GodotService$GodotHandle;-><init>(Lorg/godotengine/godot/Godot;)V

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 30
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 31
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
