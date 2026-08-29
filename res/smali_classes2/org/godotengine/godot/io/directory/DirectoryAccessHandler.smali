.class public final Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;
.super Ljava/lang/Object;
.source "DirectoryAccessHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;,
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;,
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;,
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 -2\u00020\u0001:\u0003,-.B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000eJ\u0016\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0014\u001a\u00020\u0012J\u0018\u0010 \u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012H\u0002J\u000e\u0010$\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010%\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010&\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\'\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00122\u0008\u0010(\u001a\u0004\u0018\u00010\u000eJ\u001e\u0010)\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010*\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "assetsDirAccess",
        "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;",
        "fileSystemDirAccess",
        "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;",
        "storageScopeIdentifier",
        "Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "assetsFileExists",
        "",
        "assetsPath",
        "",
        "dirClose",
        "",
        "dirAccessId",
        "",
        "dirExists",
        "nativeAccessType",
        "path",
        "dirIsDir",
        "dirNext",
        "dirOpen",
        "fileExists",
        "filesystemFileExists",
        "getDrive",
        "drive",
        "getDriveCount",
        "getSpaceLeft",
        "",
        "hasDirId",
        "accessType",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
        "dirId",
        "isCurrentHidden",
        "makeDir",
        "dir",
        "remove",
        "filename",
        "rename",
        "from",
        "to",
        "AccessType",
        "Companion",
        "DirectoryAccess",
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
.field public static final Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;

.field public static final INVALID_DIR_ID:I = -0x1

.field public static final STARTING_DIR_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

.field private final fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

.field private final storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$Companion;

    .line 45
    const-class v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-direct {v0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    .line 146
    new-instance v1, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-direct {v1, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    .line 147
    new-instance v1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-direct {v1, p1, v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;-><init>(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;)V

    iput-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    .line 42
    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z
    .locals 2
    .param p1, "accessType"    # Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .param p2, "dirId"    # I

    .line 153
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 154
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v0, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->hasDirId(I)Z

    move-result v0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v0, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->hasDirId(I)Z

    move-result v0

    .line 153
    :goto_0
    return v0
.end method


# virtual methods
.method public final assetsFileExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "assetsPath"    # Ljava/lang/String;

    const-string v0, "assetsPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final dirClose(I)V
    .locals 5
    .param p1, "dirAccessId"    # I

    .line 193
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromDirAccessId(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .local v1, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 194
    .local v0, "dirId":I
    if-eqz v1, :cond_2

    invoke-direct {p0, v1, v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 200
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v2, v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirClose(I)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v2, v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirClose(I)V

    .line 203
    :goto_0
    return-void

    .line 195
    :cond_2
    :goto_1
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dirClose: Invalid dir id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public final dirExists(ILjava/lang/String;)Z
    .locals 4
    .param p1, "nativeAccessType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 232
    return v0

    .line 235
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v1

    .line 236
    .local v1, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v2, p1, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    move-object v0, v2

    .line 238
    .local v0, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 239
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirExists(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 240
    :cond_2
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirExists(Ljava/lang/String;)Z

    move-result v2

    .line 238
    :goto_0
    return v2
.end method

.method public final dirIsDir(I)Z
    .locals 5
    .param p1, "dirAccessId"    # I

    .line 206
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromDirAccessId(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .local v1, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 207
    .local v0, "dirId":I
    if-eqz v1, :cond_2

    invoke-direct {p0, v1, v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 213
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v2, v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirIsDir(I)Z

    move-result v2

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v2, v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirIsDir(I)Z

    move-result v2

    .line 212
    :goto_0
    return v2

    .line 208
    :cond_2
    :goto_1
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dirIsDir: Invalid dir id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x0

    return v2
.end method

.method public final dirNext(I)Ljava/lang/String;
    .locals 5
    .param p1, "dirAccessId"    # I

    .line 180
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromDirAccessId(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .local v1, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 181
    .local v0, "dirId":I
    if-eqz v1, :cond_2

    invoke-direct {p0, v1, v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 187
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v2, v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirNext(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 188
    :cond_1
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v2, v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirNext(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    :goto_0
    return-object v2

    .line 182
    :cond_2
    :goto_1
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dirNext: Invalid dir id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v2, ""

    return-object v2
.end method

.method public final dirOpen(ILjava/lang/String;)I
    .locals 5
    .param p1, "nativeAccessType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 160
    const/4 v0, -0x1

    if-nez p2, :cond_0

    .line 161
    return v0

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v1

    .line 165
    .local v1, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v2, p1, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 167
    .local v2, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    :cond_1
    sget-object v3, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 168
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v3, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->dirOpen(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 169
    :cond_2
    iget-object v3, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v3, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->dirOpen(Ljava/lang/String;)I

    move-result v3

    .line 167
    :goto_0
    nop

    .line 171
    .local v3, "dirId":I
    if-ne v3, v0, :cond_3

    .line 172
    return v0

    .line 175
    :cond_3
    invoke-virtual {v2, v3}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->generateDirAccessId(I)I

    move-result v0

    .line 176
    .local v0, "dirAccessId":I
    return v0
.end method

.method public final fileExists(ILjava/lang/String;)Z
    .locals 4
    .param p1, "nativeAccessType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 246
    return v0

    .line 249
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v1

    .line 250
    .local v1, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v2, p1, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    move-object v0, v2

    .line 252
    .local v0, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 253
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->fileExists(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 254
    :cond_2
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->fileExists(Ljava/lang/String;)Z

    move-result v2

    .line 252
    :goto_0
    return v2
.end method

.method public final filesystemFileExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getDrive(II)Ljava/lang/String;
    .locals 3
    .param p1, "nativeAccessType"    # I
    .param p2, "drive"    # I

    .line 267
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 268
    .local v0, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    :cond_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 269
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->getDrive(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->getDrive(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    :goto_0
    return-object v1
.end method

.method public final getDriveCount(I)I
    .locals 3
    .param p1, "nativeAccessType"    # I

    .line 259
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 260
    .local v0, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    :cond_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 261
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->getDriveCount()I

    move-result v1

    goto :goto_0

    .line 262
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->getDriveCount()I

    move-result v1

    .line 260
    :goto_0
    return v1
.end method

.method public final getSpaceLeft(I)J
    .locals 3
    .param p1, "nativeAccessType"    # I

    .line 289
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 290
    .local v0, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    :cond_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 291
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->getSpaceLeft()J

    move-result-wide v1

    goto :goto_0

    .line 292
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->getSpaceLeft()J

    move-result-wide v1

    .line 290
    :goto_0
    return-wide v1
.end method

.method public final isCurrentHidden(I)Z
    .locals 4
    .param p1, "dirAccessId"    # I

    .line 219
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromDirAccessId(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .local v1, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 220
    .local v0, "dirId":I
    if-eqz v1, :cond_2

    invoke-direct {p0, v1, v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->hasDirId(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 225
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v2, v0}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->isCurrentHidden(I)Z

    move-result v2

    goto :goto_0

    .line 226
    :cond_1
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v2, v0}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->isCurrentHidden(I)Z

    move-result v2

    .line 224
    :goto_0
    return v2

    .line 221
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return v2
.end method

.method public final makeDir(ILjava/lang/String;)Z
    .locals 4
    .param p1, "nativeAccessType"    # I
    .param p2, "dir"    # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 276
    return v0

    .line 279
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v1

    .line 280
    .local v1, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v2, p1, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    move-object v0, v2

    .line 282
    .local v0, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 283
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->makeDir(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 284
    :cond_2
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->makeDir(Ljava/lang/String;)Z

    move-result v2

    .line 282
    :goto_0
    return v2
.end method

.method public final remove(ILjava/lang/String;)Z
    .locals 4
    .param p1, "nativeAccessType"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 306
    return v0

    .line 309
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->storageScopeIdentifier:Lorg/godotengine/godot/io/StorageScope$Identifier;

    invoke-virtual {v1, p2}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v1

    .line 310
    .local v1, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    invoke-virtual {v2, p1, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    move-object v0, v2

    .line 311
    .local v0, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 312
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->remove(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 313
    :cond_2
    iget-object v2, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->remove(Ljava/lang/String;)Z

    move-result v2

    .line 311
    :goto_0
    return v2
.end method

.method public final rename(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "nativeAccessType"    # I
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/lang/String;

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 298
    .local v0, "accessType":Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    :cond_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 299
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->assetsDirAccess:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;

    invoke-virtual {v1, p2, p3}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->fileSystemDirAccess:Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;

    invoke-virtual {v1, p2, p3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 298
    :goto_0
    return v1
.end method
