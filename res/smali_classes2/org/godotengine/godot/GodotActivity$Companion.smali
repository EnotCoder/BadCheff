.class public final Lorg/godotengine/godot/GodotActivity$Companion;
.super Ljava/lang/Object;
.source "GodotActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/GodotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083D\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002R\u001c\u0010\u0006\u001a\u00020\u00078\u0004X\u0085D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\u0002\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u00020\u00078\u0004X\u0085D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\nR\u0016\u0010\u000e\u001a\n \u000f*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/godotengine/godot/GodotActivity$Companion;",
        "",
        "()V",
        "DEFAULT_WINDOW_ID",
        "",
        "getDEFAULT_WINDOW_ID$annotations",
        "EXTRA_COMMAND_LINE_PARAMS",
        "",
        "getEXTRA_COMMAND_LINE_PARAMS$annotations",
        "getEXTRA_COMMAND_LINE_PARAMS",
        "()Ljava/lang/String;",
        "EXTRA_NEW_LAUNCH",
        "getEXTRA_NEW_LAUNCH$annotations",
        "getEXTRA_NEW_LAUNCH",
        "TAG",
        "kotlin.jvm.PlatformType",
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

    invoke-direct {p0}, Lorg/godotengine/godot/GodotActivity$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getDEFAULT_WINDOW_ID$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method protected static synthetic getEXTRA_COMMAND_LINE_PARAMS$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method protected static synthetic getEXTRA_NEW_LAUNCH$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method protected final getEXTRA_COMMAND_LINE_PARAMS()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {}, Lorg/godotengine/godot/GodotActivity;->access$getEXTRA_COMMAND_LINE_PARAMS$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getEXTRA_NEW_LAUNCH()Ljava/lang/String;
    .locals 1

    .line 60
    invoke-static {}, Lorg/godotengine/godot/GodotActivity;->access$getEXTRA_NEW_LAUNCH$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
