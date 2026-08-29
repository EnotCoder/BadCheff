.class public final Lorg/godotengine/godot/io/file/AssetData$Companion;
.super Ljava/lang/Object;
.source "AssetData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/file/AssetData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004J\u0016\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0004J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/AssetData$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "delete",
        "",
        "path",
        "fileExists",
        "context",
        "Landroid/content/Context;",
        "fileLastModified",
        "",
        "rename",
        "from",
        "to",
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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/io/file/AssetData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final fileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    invoke-virtual {v0, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;->getAssetsPath$lib_templateDebug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "assetsPath":Ljava/lang/String;
    nop

    .line 57
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 61
    .local v2, "files":[Ljava/lang/String;
    :cond_0
    array-length v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 62
    .end local v2    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/godotengine/godot/io/file/AssetData;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception on fileExists"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    return v1
.end method

.method public final fileLastModified(Ljava/lang/String;)J
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    return v0
.end method
