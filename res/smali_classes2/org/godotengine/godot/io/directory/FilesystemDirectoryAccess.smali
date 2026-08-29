.class public final Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;
.super Ljava/lang/Object;
.source "FilesystemDirectoryAccess.kt"

# interfaces
.implements Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;,
        Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\r\u0008\u0000\u0018\u0000 (2\u00020\u0001:\u0002()B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000bH\u0016J\u0008\u0010\u001b\u001a\u00020\u000bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0017J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010 \u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u000bH\u0016J\u0010\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u0014H\u0016J\u0010\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0014H\u0016J\u0018\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;",
        "context",
        "Landroid/content/Context;",
        "storageScopeIdentifier",
        "Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;)V",
        "dirs",
        "Landroid/util/SparseArray;",
        "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;",
        "lastDirId",
        "",
        "storageManager",
        "Landroid/os/storage/StorageManager;",
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
        "inScope",
        "isCurrentHidden",
        "makeDir",
        "dir",
        "remove",
        "filename",
        "rename",
        "from",
        "to",
        "Companion",
        "DirData",
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
.field public static final Companion:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final dirs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;",
            ">;"
        }
    .end annotation
.end field

.field private lastDirId:I

.field private final storageManager:Landroid/os/storage/StorageManager;

.field private final storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$Companion;

    .line 52
    const-class v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageScopeIdentifier"    # Lorg/godotengine/godot/io/StorageScope$Identifier;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageScopeIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 57
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.storage.StorageManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageManager:Landroid/os/storage/StorageManager;

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->lastDirId:I

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    .line 48
    return-void
.end method

.method private final inScope(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v0

    .line 66
    .local v0, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->ASSETS:Lorg/godotengine/godot/io/StorageScope;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public dirClose(I)V
    .locals 1
    .param p1, "dirId"    # I

    .line 119
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 120
    return-void
.end method

.method public dirExists(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not accessible."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v1

    .line 99
    :cond_0
    nop

    .line 100
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method public dirIsDir(I)Z
    .locals 3
    .param p1, "dirId"    # I

    .line 123
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 125
    .local v0, "dirData":Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

    move-result v1

    .line 126
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 127
    add-int/lit8 v1, v1, -0x1

    .line 130
    :cond_0
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 131
    const/4 v2, 0x0

    return v2

    .line 134
    :cond_1
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    return v2
.end method

.method public dirNext(I)Ljava/lang/String;
    .locals 4
    .param p1, "dirId"    # I

    .line 109
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 110
    .local v0, "dirData":Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

    move-result v1

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 111
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->setCurrent(I)V

    .line 112
    const-string v1, ""

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->setCurrent(I)V

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public dirOpen(Ljava/lang/String;)I
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not accessible."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v1

    .line 78
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v4, "dirFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    return v1

    .line 84
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    return v1

    .line 87
    .local v5, "files":[Ljava/io/File;
    :cond_2
    new-instance v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;-><init>(Ljava/io/File;[Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    .local v0, "dirData":Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    iget v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->lastDirId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->lastDirId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->lastDirId:I

    return v1
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v0, v1, v2, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->fileExists$lib_templateDebug(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDrive(I)Ljava/lang/String;
    .locals 3
    .param p1, "drive"    # I

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, ""

    if-ge v0, v1, :cond_0

    .line 162
    return-object v2

    .line 165
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 170
    .local v0, "storageVolume":Landroid/os/storage/StorageVolume;
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDescription(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 166
    .end local v0    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_2
    :goto_0
    return-object v2
.end method

.method public getDriveCount()I
    .locals 2

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0
.end method

.method public getSpaceLeft()J
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public hasDirId(I)Z
    .locals 1
    .param p1, "dirId"    # I

    .line 69
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

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
    .locals 3
    .param p1, "dirId"    # I

    .line 138
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 140
    .local v0, "dirData":Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getCurrent()I

    move-result v1

    .line 141
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 142
    add-int/lit8 v1, v1, -0x1

    .line 145
    :cond_0
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 146
    const/4 v2, 0x0

    return v2

    .line 149
    :cond_1
    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->getFiles()[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->isHidden()Z

    move-result v2

    return v2
.end method

.method public makeDir(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/lang/String;

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not accessible."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v1

    .line 179
    :cond_0
    nop

    .line 180
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 182
    .end local v0    # "dirFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 212
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filename "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not accessible."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v1

    .line 216
    :cond_0
    nop

    .line 217
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0

    .line 222
    :cond_1
    sget-object v2, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    iget-object v3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v2, v3, v4, p1}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->removeFile$lib_templateDebug(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :cond_2
    const/4 v1, 0x1

    .end local v0    # "deleteFile":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/SecurityException;
    nop

    .line 216
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    return v1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 198
    :cond_0
    nop

    .line 199
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "fromFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    goto :goto_0

    .line 203
    :cond_1
    sget-object v2, Lorg/godotengine/godot/io/file/FileAccessHandler;->Companion:Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;

    iget-object v3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v2, v3, v4, p1, p2}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;->renameFile$lib_templateDebug(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fromFile":Ljava/io/File;
    :goto_0
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/SecurityException;
    nop

    .line 198
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    return v1

    .line 192
    :cond_2
    :goto_2
    sget-object v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->TAG:Ljava/lang/String;

    .line 193
    nop

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument filenames are not accessible:\nfrom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return v1
.end method
