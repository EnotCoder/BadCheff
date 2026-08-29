.class public final enum Lorg/godotengine/godot/xr/XRMode;
.super Ljava/lang/Enum;
.source "XRMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/xr/XRMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/godotengine/godot/xr/XRMode;

.field public static final enum OPENXR:Lorg/godotengine/godot/xr/XRMode;

.field public static final enum REGULAR:Lorg/godotengine/godot/xr/XRMode;


# instance fields
.field public final cmdLineArg:Ljava/lang/String;

.field final index:I

.field public final inputFallbackMapping:Ljava/lang/String;

.field final label:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/godotengine/godot/xr/XRMode;
    .locals 3

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/godotengine/godot/xr/XRMode;

    const/4 v1, 0x0

    sget-object v2, Lorg/godotengine/godot/xr/XRMode;->REGULAR:Lorg/godotengine/godot/xr/XRMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/godotengine/godot/xr/XRMode;->OPENXR:Lorg/godotengine/godot/xr/XRMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 37
    new-instance v7, Lorg/godotengine/godot/xr/XRMode;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Regular"

    const-string v5, "--xr_mode_regular"

    const-string v6, "Default Android Gamepad"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/godotengine/godot/xr/XRMode;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/godotengine/godot/xr/XRMode;->REGULAR:Lorg/godotengine/godot/xr/XRMode;

    .line 38
    new-instance v0, Lorg/godotengine/godot/xr/XRMode;

    const-string v9, "OPENXR"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-string v12, "OpenXR"

    const-string v13, "--xr_mode_openxr"

    const-string v14, ""

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/godotengine/godot/xr/XRMode;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/godotengine/godot/xr/XRMode;->OPENXR:Lorg/godotengine/godot/xr/XRMode;

    .line 36
    invoke-static {}, Lorg/godotengine/godot/xr/XRMode;->$values()[Lorg/godotengine/godot/xr/XRMode;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/xr/XRMode;->$VALUES:[Lorg/godotengine/godot/xr/XRMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "cmdLineArg"    # Ljava/lang/String;
    .param p6, "inputFallbackMapping"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lorg/godotengine/godot/xr/XRMode;->index:I

    .line 47
    iput-object p4, p0, Lorg/godotengine/godot/xr/XRMode;->label:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lorg/godotengine/godot/xr/XRMode;->cmdLineArg:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lorg/godotengine/godot/xr/XRMode;->inputFallbackMapping:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/xr/XRMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lorg/godotengine/godot/xr/XRMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/xr/XRMode;

    return-object v0
.end method

.method public static values()[Lorg/godotengine/godot/xr/XRMode;
    .locals 1

    .line 36
    sget-object v0, Lorg/godotengine/godot/xr/XRMode;->$VALUES:[Lorg/godotengine/godot/xr/XRMode;

    invoke-virtual {v0}, [Lorg/godotengine/godot/xr/XRMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/godotengine/godot/xr/XRMode;

    return-object v0
.end method
