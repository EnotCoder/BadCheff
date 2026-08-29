.class public final Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;
.super Ljava/lang/Object;
.source "FileAccessFlags.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/file/FileAccessFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;",
        "",
        "()V",
        "fromNativeModeFlags",
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        "modeFlag",
        "",
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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromNativeModeFlags(I)Lorg/godotengine/godot/io/file/FileAccessFlags;
    .locals 3
    .param p1, "modeFlag"    # I

    .line 79
    invoke-static {}, Lorg/godotengine/godot/io/file/FileAccessFlags;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 80
    .local v1, "flag":Lorg/godotengine/godot/io/file/FileAccessFlags;
    invoke-virtual {v1}, Lorg/godotengine/godot/io/file/FileAccessFlags;->getNativeValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 81
    return-object v1

    .line 84
    .end local v1    # "flag":Lorg/godotengine/godot/io/file/FileAccessFlags;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
