.class public final Lorg/godotengine/godot/io/FilePicker;
.super Ljava/lang/Object;
.source "FilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/FilePicker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/godotengine/godot/io/FilePicker;",
        "",
        "()V",
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
.field public static final Companion:Lorg/godotengine/godot/io/FilePicker$Companion;

.field private static final FILE_MODE_OPEN_ANY:I = 0x3

.field private static final FILE_MODE_OPEN_DIR:I = 0x2

.field private static final FILE_MODE_OPEN_FILE:I = 0x0

.field private static final FILE_MODE_OPEN_FILES:I = 0x1

.field private static final FILE_MODE_SAVE_FILE:I = 0x4

.field private static final FILE_PICKER_REQUEST:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/io/FilePicker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/FilePicker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/FilePicker;->Companion:Lorg/godotengine/godot/io/FilePicker$Companion;

    .line 54
    const-class v0, Lorg/godotengine/godot/io/FilePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/FilePicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lorg/godotengine/godot/io/FilePicker;->TAG:Ljava/lang/String;

    return-object v0
.end method
