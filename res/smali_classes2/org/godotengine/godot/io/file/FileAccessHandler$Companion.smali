.class public final Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;
.super Ljava/lang/Object;
.source "FileAccessHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/file/FileAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\'\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0000\u00a2\u0006\u0002\u0008\u0013J)\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0000\u00a2\u0006\u0002\u0008\u0016J\'\u0010\u0017\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0000\u00a2\u0006\u0002\u0008\u0018J-\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u001cR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;",
        "",
        "()V",
        "FILE_OPEN_FAILED",
        "Lkotlin/Pair;",
        "Lorg/godotengine/godot/error/Error;",
        "",
        "INVALID_FILE_ID",
        "STARTING_FILE_ID",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "fileExists",
        "",
        "context",
        "Landroid/content/Context;",
        "storageScopeIdentifier",
        "Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "path",
        "fileExists$lib_templateDebug",
        "getInputStream",
        "Ljava/io/InputStream;",
        "getInputStream$lib_templateDebug",
        "removeFile",
        "removeFile$lib_templateDebug",
        "renameFile",
        "from",
        "to",
        "renameFile$lib_templateDebug",
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

    invoke-direct {p0}, Lorg/godotengine/godot/io/file/FileAccessHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fileExists$lib_templateDebug(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageScopeIdentifier"    # Lorg/godotengine/godot/io/StorageScope$Identifier;
    .param p3, "path"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageScopeIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2, p3}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v0

    .line 68
    .local v0, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 69
    return v2

    .line 72
    :cond_0
    nop

    .line 73
    if-eqz p3, :cond_1

    move-object v1, p3

    .local v1, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 74
    .local v3, "$i$a$-let-FileAccessHandler$Companion$fileExists$1":I
    :try_start_0
    sget-object v4, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    invoke-virtual {v4, v0, p1, v1}, Lorg/godotengine/godot/io/file/DataAccess$Companion;->fileExists(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-FileAccessHandler$Companion$fileExists$1":I
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/SecurityException;
    goto :goto_1

    .line 75
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    nop

    :goto_0
    nop

    .line 72
    :goto_1
    return v2
.end method

.method public final getInputStream$lib_templateDebug(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageScopeIdentifier"    # Lorg/godotengine/godot/io/StorageScope$Identifier;
    .param p3, "path"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageScopeIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2, p3}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v0

    .line 57
    .local v0, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    nop

    .line 58
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move-object v2, p3

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 59
    .local v3, "$i$a$-let-FileAccessHandler$Companion$getInputStream$1":I
    :try_start_0
    sget-object v4, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    invoke-virtual {v4, v0, p1, p3}, Lorg/godotengine/godot/io/file/DataAccess$Companion;->getInputStream(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-FileAccessHandler$Companion$getInputStream$1":I
    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 57
    :goto_1
    return-object v1
.end method

.method public final removeFile$lib_templateDebug(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageScopeIdentifier"    # Lorg/godotengine/godot/io/StorageScope$Identifier;
    .param p3, "path"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageScopeIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2, p3}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v0

    .line 83
    .local v0, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 84
    return v2

    .line 87
    :cond_0
    nop

    .line 88
    if-eqz p3, :cond_1

    move-object v1, p3

    .local v1, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$a$-let-FileAccessHandler$Companion$removeFile$1":I
    :try_start_0
    sget-object v4, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    invoke-virtual {v4, v0, p1, v1}, Lorg/godotengine/godot/io/file/DataAccess$Companion;->removeFile(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-FileAccessHandler$Companion$removeFile$1":I
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    :goto_0
    nop

    .line 87
    :goto_1
    return v2
.end method

.method public final renameFile$lib_templateDebug(Landroid/content/Context;Lorg/godotengine/godot/io/StorageScope$Identifier;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageScopeIdentifier"    # Lorg/godotengine/godot/io/StorageScope$Identifier;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "to"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageScopeIdentifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2, p3}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v0

    .line 98
    .local v0, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 99
    return v2

    .line 102
    :cond_0
    nop

    .line 103
    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    invoke-virtual {v1, v0, p1, p3, p4}, Lorg/godotengine/godot/io/file/DataAccess$Companion;->renameFile(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method
