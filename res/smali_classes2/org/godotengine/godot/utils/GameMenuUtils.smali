.class public final Lorg/godotengine/godot/utils/GameMenuUtils;
.super Ljava/lang/Object;
.source "GameMenuUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\t\u0010\u0008\u001a\u00020\tH\u0087 J\t\u0010\n\u001a\u00020\tH\u0087 J\t\u0010\u000b\u001a\u00020\tH\u0087 J\t\u0010\u000c\u001a\u00020\tH\u0087 J\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0007J\u0011\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0087 J\u0011\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0087 J\u0011\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0011H\u0087 J\u0011\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0087 J\u0011\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0014H\u0087 J\u0011\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0087 R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/godotengine/godot/utils/GameMenuUtils;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "fetchGameEmbedMode",
        "Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;",
        "nextFrame",
        "",
        "playMainScene",
        "resetCamera2DPosition",
        "resetCamera3DPosition",
        "saveGameEmbedMode",
        "gameEmbedMode",
        "setCameraManipulateMode",
        "mode",
        "",
        "setCameraOverride",
        "enabled",
        "",
        "setNodeType",
        "type",
        "setSelectMode",
        "setSelectionVisible",
        "visible",
        "setSuspend",
        "GameEmbedMode",
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
.field public static final INSTANCE:Lorg/godotengine/godot/utils/GameMenuUtils;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/godotengine/godot/utils/GameMenuUtils;

    invoke-direct {v0}, Lorg/godotengine/godot/utils/GameMenuUtils;-><init>()V

    sput-object v0, Lorg/godotengine/godot/utils/GameMenuUtils;->INSTANCE:Lorg/godotengine/godot/utils/GameMenuUtils;

    .line 40
    const-class v0, Lorg/godotengine/godot/utils/GameMenuUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/utils/GameMenuUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native nextFrame()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native playMainScene()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native resetCamera2DPosition()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native resetCamera3DPosition()V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setCameraManipulateMode(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setCameraOverride(Z)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setNodeType(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setSelectMode(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setSelectionVisible(Z)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final native setSuspend(Z)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method


# virtual methods
.method public final fetchGameEmbedMode()Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    .locals 4

    .line 99
    nop

    .line 100
    :try_start_0
    const-string v0, "run/window_placement/game_embed_mode"

    invoke-static {v0}, Lorg/godotengine/godot/GodotLib;->getEditorSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "gameEmbedModeValue":I
    sget-object v1, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->Companion:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;

    invoke-virtual {v1, v0}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;->fromNativeValue$lib_templateDebug(I)Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->AUTO:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v1, "gameEmbedMode":Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    :cond_0
    return-object v1

    .line 103
    .end local v0    # "gameEmbedModeValue":I
    .end local v1    # "gameEmbedMode":Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/godotengine/godot/utils/GameMenuUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unable to retrieve game embed mode"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    sget-object v1, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->AUTO:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    return-object v1
.end method

.method public final saveGameEmbedMode(Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;)V
    .locals 2
    .param p1, "gameEmbedMode"    # Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    const-string v0, "gameEmbedMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->getNativeValue$lib_templateDebug()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "run/window_placement/game_embed_mode"

    invoke-static {v1, v0}, Lorg/godotengine/godot/GodotLib;->setEditorSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-void
.end method
