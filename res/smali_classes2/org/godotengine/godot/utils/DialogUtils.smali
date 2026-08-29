.class public final Lorg/godotengine/godot/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/utils/DialogUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/godotengine/godot/utils/DialogUtils;",
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
.field public static final Companion:Lorg/godotengine/godot/utils/DialogUtils$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/utils/DialogUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/utils/DialogUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/utils/DialogUtils;->Companion:Lorg/godotengine/godot/utils/DialogUtils$Companion;

    .line 57
    const-class v0, Lorg/godotengine/godot/utils/DialogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/utils/DialogUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$dialogCallback(I)V
    .locals 0
    .param p0, "buttonIndex"    # I

    .line 55
    invoke-static {p0}, Lorg/godotengine/godot/utils/DialogUtils;->dialogCallback(I)V

    return-void
.end method

.method public static final synthetic access$inputDialogCallback(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lorg/godotengine/godot/utils/DialogUtils;->inputDialogCallback(Ljava/lang/String;)V

    return-void
.end method

.method private static final native dialogCallback(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native inputDialogCallback(Ljava/lang/String;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method
