.class public final Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;
.super Ljava/lang/Object;
.source "GameMenuUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;",
        "",
        "()V",
        "SETTING_KEY",
        "",
        "fromNativeValue",
        "Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;",
        "nativeValue",
        "",
        "fromNativeValue$lib_templateDebug",
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

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromNativeValue$lib_templateDebug(I)Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    .locals 3
    .param p1, "nativeValue"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 53
    invoke-static {}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;

    .line 54
    .local v1, "mode":Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    invoke-virtual {v1}, Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;->getNativeValue$lib_templateDebug()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 55
    return-object v1

    .line 58
    .end local v1    # "mode":Lorg/godotengine/godot/utils/GameMenuUtils$GameEmbedMode;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
