.class public final Lorg/godotengine/godot/io/StorageScope$Identifier;
.super Ljava/lang/Object;
.source "StorageScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/StorageScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "documentsSharedDir",
        "",
        "downloadsSharedDir",
        "externalAppDir",
        "internalAppDir",
        "internalCacheDir",
        "sharedDir",
        "canAccess",
        "",
        "path",
        "identifyStorageScope",
        "Lorg/godotengine/godot/io/StorageScope;",
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
.field public static final ASSETS_PREFIX:Ljava/lang/String; = "assets://"

.field public static final Companion:Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;


# instance fields
.field private final documentsSharedDir:Ljava/lang/String;

.field private final downloadsSharedDir:Ljava/lang/String;

.field private final externalAppDir:Ljava/lang/String;

.field private final internalAppDir:Ljava/lang/String;

.field private final internalCacheDir:Ljava/lang/String;

.field private final sharedDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/StorageScope$Identifier;->Companion:Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalAppDir:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalCacheDir:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->externalAppDir:Ljava/lang/String;

    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->sharedDir:Ljava/lang/String;

    .line 73
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->downloadsSharedDir:Ljava/lang/String;

    .line 74
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->documentsSharedDir:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public final canAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    move-result-object v0

    .line 81
    .local v0, "storageScope":Lorg/godotengine/godot/io/StorageScope;
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->SHARED:Lorg/godotengine/godot/io/StorageScope;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public final identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .line 88
    if-nez p1, :cond_0

    .line 89
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    return-object v0

    .line 92
    :cond_0
    const-string v0, "assets://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->ASSETS:Lorg/godotengine/godot/io/StorageScope;

    return-object v0

    .line 96
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "pathFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/godotengine/godot/GodotLib;->getProjectResourceDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 106
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_3

    .line 107
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 111
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "canonicalPathFile":Ljava/lang/String;
    iget-object v6, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalAppDir:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalAppDir:Ljava/lang/String;

    invoke-static {v4, v6, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 114
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 117
    :cond_4
    iget-object v6, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalCacheDir:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalCacheDir:Ljava/lang/String;

    invoke-static {v4, v6, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 121
    :cond_5
    iget-object v6, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->externalAppDir:Ljava/lang/String;

    if-eqz v6, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->externalAppDir:Ljava/lang/String;

    invoke-static {v4, v6, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 122
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 125
    :cond_6
    const-string v6, "ANDROID_ROOT"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "rootDir":Ljava/lang/String;
    if-eqz v6, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v6, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 127
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 130
    :cond_7
    iget-object v7, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->sharedDir:Ljava/lang/String;

    if-eqz v7, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->sharedDir:Ljava/lang/String;

    invoke-static {v4, v7, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 131
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v5, :cond_8

    .line 134
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 139
    :cond_8
    iget-object v5, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->downloadsSharedDir:Ljava/lang/String;

    if-eqz v5, :cond_9

    invoke-static {v4, v5, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 140
    :cond_9
    iget-object v5, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->documentsSharedDir:Ljava/lang/String;

    if-eqz v5, :cond_b

    invoke-static {v4, v5, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 141
    :cond_a
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 144
    :cond_b
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->SHARED:Lorg/godotengine/godot/io/StorageScope;

    return-object v1

    .line 147
    :cond_c
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    return-object v1
.end method
