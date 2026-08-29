.class public final Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;
.super Ljava/lang/Object;
.source "AssetsDirectoryAccess.kt"

# interfaces
.implements Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;,
        Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 \'2\u00020\u0001:\u0002&\'B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u000cH\u0016J\u0008\u0010\u001a\u001a\u00020\u000cH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u0013H\u0016J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u0013H\u0016J\u0018\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00132\u0006\u0010%\u001a\u00020\u0013H\u0016R\u0016\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "kotlin.jvm.PlatformType",
        "dirs",
        "Landroid/util/SparseArray;",
        "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;",
        "lastDirId",
        "",
        "dirClose",
        "",
        "dirId",
        "dirExists",
        "",
        "path",
        "",
        "dirIsDir",
        "dirNext",
        "dirOpen",
        "fileExists",
        "getDrive",
        "drive",
        "getDriveCount",
        "getSpaceLeft",
        "",
        "hasDirId",
        "isCurrentHidden",
        "makeDir",
        "dir",
        "remove",
        "filename",
        "rename",
        "from",
        "to",
        "AssetDir",
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
.field public static final Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final context:Landroid/content/Context;

.field private final dirs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;",
            ">;"
        }
    .end annotation
.end field

.field private lastDirId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    .line 49
    const-class v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->assetManager:Landroid/content/res/AssetManager;

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->lastDirId:I

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 46
    return-void
.end method


# virtual methods
.method public dirClose(I)V
    .locals 1
    .param p1, "dirId"    # I

    .line 156
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 157
    return-void
.end method

.method public dirExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;->getAssetsPath$lib_templateDebug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "assetsPath":Ljava/lang/String;
    nop

    .line 95
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 99
    .local v2, "files":[Ljava/lang/String;
    :cond_0
    array-length v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    xor-int/2addr v1, v4

    return v1

    .line 100
    .end local v2    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->TAG:Ljava/lang/String;

    const-string v4, "Exception on dirExists"

    move-object v5, v2

    check-cast v5, Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    return v1
.end method

.method public dirIsDir(I)Z
    .locals 7
    .param p1, "dirId"    # I

    .line 109
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;

    .line 111
    .local v0, "ad":Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    move-result v1

    .line 112
    .local v1, "idx":I
    if-lez v1, :cond_0

    .line 113
    add-int/lit8 v1, v1, -0x1

    .line 116
    :cond_0
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 117
    return v3

    .line 120
    :cond_1
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 123
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "filePath":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v5, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "fileContents":[Ljava/lang/String;
    if-eqz v5, :cond_3

    array-length v6, v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-lez v6, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method public dirNext(I)Ljava/lang/String;
    .locals 4
    .param p1, "dirId"    # I

    .line 145
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;

    .line 147
    .local v0, "ad":Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    move-result v1

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 148
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->setCurrent(I)V

    .line 149
    const-string v1, ""

    return-object v1

    .line 152
    :cond_0
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->setCurrent(I)V

    aget-object v1, v1, v2

    return-object v1
.end method

.method public dirOpen(Ljava/lang/String;)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;->getAssetsPath$lib_templateDebug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "assetsPath":Ljava/lang/String;
    nop

    .line 74
    const/4 v7, -0x1

    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v7

    :cond_0
    move-object v8, v1

    .line 78
    .local v8, "files":[Ljava/lang/String;
    array-length v1, v8

    const/4 v9, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 79
    return v7

    .line 82
    :cond_2
    new-instance v10, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v10

    move-object v2, v0

    move-object v3, v8

    invoke-direct/range {v1 .. v6}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;-><init>(Ljava/lang/String;[Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v10

    .line 84
    .local v1, "ad":Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    iget v3, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->lastDirId:I

    add-int/2addr v3, v9

    iput v3, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->lastDirId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget v2, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->lastDirId:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 86
    .end local v1    # "ad":Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;
    .end local v8    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->TAG:Ljava/lang/String;

    const-string v3, "Exception on dirOpen"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    return v7
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    iget-object v1, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lorg/godotengine/godot/io/file/AssetData$Companion;->fileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDrive(I)Ljava/lang/String;
    .locals 1
    .param p1, "drive"    # I

    .line 161
    const-string v0, ""

    return-object v0
.end method

.method public getDriveCount()I
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getSpaceLeft()J
    .locals 2

    .line 165
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasDirId(I)Z
    .locals 1
    .param p1, "dirId"    # I

    .line 69
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentHidden(I)Z
    .locals 8
    .param p1, "dirId"    # I

    .line 129
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;

    .line 131
    .local v0, "ad":Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getCurrent()I

    move-result v1

    .line 132
    .local v1, "idx":I
    if-lez v1, :cond_0

    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 136
    :cond_0
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 137
    return v3

    .line 140
    :cond_1
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$AssetDir;->getFiles()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    .line 141
    .local v2, "fileName":Ljava/lang/String;
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x2e

    invoke-static {v4, v7, v3, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public makeDir(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/lang/String;

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/file/AssetData$Companion;->delete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    invoke-virtual {v0, p1, p2}, Lorg/godotengine/godot/io/file/AssetData$Companion;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
