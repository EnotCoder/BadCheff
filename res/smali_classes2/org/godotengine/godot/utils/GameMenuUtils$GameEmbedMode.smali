.class public final enum Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
.super Ljava/lang/Enum;
.source "GameMenuUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/utils/GameMenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameEmbedMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;",
        "",
        "nativeValue",
        "",
        "(Ljava/lang/String;II)V",
        "getNativeValue$lib_templateDebug",
        "()I",
        "DISABLED",
        "AUTO",
        "ENABLED",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

.field public static final enum AUTO:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

.field public static final Companion:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;

.field public static final enum DISABLED:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

.field public static final enum ENABLED:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

.field public static final SETTING_KEY:Ljava/lang/String; = "run/window_placement/game_embed_mode"


# instance fields
.field private final nativeValue:I


# direct methods
.method private static final synthetic $values()[Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    const/4 v1, 0x0

    sget-object v2, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->DISABLED:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->AUTO:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->ENABLED:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    const/4 v1, -0x1

    const-string v2, "DISABLED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->DISABLED:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    new-instance v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    const-string v1, "AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->AUTO:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    new-instance v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    const-string v1, "ENABLED"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->ENABLED:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    invoke-static {}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->$values()[Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->$VALUES:[Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->Companion:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "nativeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->nativeValue:I

    return-void
.end method

.method public static final fromNativeValue$lib_templateDebug(I)Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->Companion:Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;->fromNativeValue$lib_templateDebug(I)Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    move-result-object v0

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    .locals 1

    const-class v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    return-object v0
.end method

.method public static values()[Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    .locals 1

    sget-object v0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->$VALUES:[Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    return-object v0
.end method


# virtual methods
.method public final getNativeValue$lib_templateDebug()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->nativeValue:I

    return v0
.end method
