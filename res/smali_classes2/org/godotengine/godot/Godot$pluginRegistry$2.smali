.class final Lorg/godotengine/godot/Godot$pluginRegistry$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Godot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/Godot;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/godotengine/godot/plugin/GodotPluginRegistry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lorg/godotengine/godot/plugin/GodotPluginRegistry;",
        "kotlin.jvm.PlatformType",
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


# static fields
.field public static final INSTANCE:Lorg/godotengine/godot/Godot$pluginRegistry$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/godotengine/godot/Godot$pluginRegistry$2;

    invoke-direct {v0}, Lorg/godotengine/godot/Godot$pluginRegistry$2;-><init>()V

    sput-object v0, Lorg/godotengine/godot/Godot$pluginRegistry$2;->INSTANCE:Lorg/godotengine/godot/Godot$pluginRegistry$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot$pluginRegistry$2;->invoke()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/godotengine/godot/plugin/GodotPluginRegistry;
    .locals 1

    .line 113
    invoke-static {}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    move-result-object v0

    return-object v0
.end method
