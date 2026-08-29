.class public final Lorg/godotengine/godot/io/file/DataAccess$Companion;
.super Ljava/lang/Object;
.source "DataAccess.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/file/DataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/DataAccess$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004J(\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0004J\u001e\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004J&\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/DataAccess$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "fileExists",
        "",
        "storageScope",
        "Lorg/godotengine/godot/io/StorageScope;",
        "context",
        "Landroid/content/Context;",
        "path",
        "fileLastModified",
        "",
        "generateDataAccess",
        "Lorg/godotengine/godot/io/file/DataAccess;",
        "filePath",
        "accessFlag",
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        "getInputStream",
        "Ljava/io/InputStream;",
        "removeFile",
        "renameFile",
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

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/io/file/DataAccess$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fileExists(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "storageScope"    # Lorg/godotengine/godot/io/StorageScope;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;

    const-string v0, "storageScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lorg/godotengine/godot/io/file/DataAccess$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/godotengine/godot/io/StorageScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    goto :goto_0

    .line 111
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 112
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    invoke-virtual {v0, p2, p3}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->fileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 114
    :cond_0
    goto :goto_0

    .line 109
    :pswitch_2
    sget-object v0, Lorg/godotengine/godot/io/file/FileData;->Companion:Lorg/godotengine/godot/io/file/FileData$Companion;

    invoke-virtual {v0, p3}, Lorg/godotengine/godot/io/file/FileData$Companion;->fileExists(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 110
    :pswitch_3
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    invoke-virtual {v0, p2, p3}, Lorg/godotengine/godot/io/file/AssetData$Companion;->fileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 108
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final fileLastModified(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p1, "storageScope"    # Lorg/godotengine/godot/io/StorageScope;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;

    const-string v0, "storageScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lorg/godotengine/godot/io/file/DataAccess$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/godotengine/godot/io/StorageScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    goto :goto_0

    .line 125
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    .line 126
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    invoke-virtual {v0, p2, p3}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->fileLastModified(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 128
    :cond_0
    goto :goto_0

    .line 123
    :pswitch_2
    sget-object v0, Lorg/godotengine/godot/io/file/FileData;->Companion:Lorg/godotengine/godot/io/file/FileData$Companion;

    invoke-virtual {v0, p3}, Lorg/godotengine/godot/io/file/FileData$Companion;->fileLastModified(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 124
    :pswitch_3
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    invoke-virtual {v0, p3}, Lorg/godotengine/godot/io/file/AssetData$Companion;->fileLastModified(Ljava/lang/String;)J

    move-result-wide v1

    .line 122
    :goto_0
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final generateDataAccess(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)Lorg/godotengine/godot/io/file/DataAccess;
    .locals 3
    .param p1, "storageScope"    # Lorg/godotengine/godot/io/StorageScope;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "accessFlag"    # Lorg/godotengine/godot/io/file/FileAccessFlags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "storageScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessFlag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lorg/godotengine/godot/io/file/DataAccess$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/godotengine/godot/io/StorageScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 103
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    goto :goto_1

    .line 97
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 98
    new-instance v1, Lorg/godotengine/godot/io/file/MediaStoreData;

    invoke-direct {v1, p2, p3, p4}, Lorg/godotengine/godot/io/file/MediaStoreData;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V

    goto :goto_0

    .line 100
    :cond_0
    nop

    :goto_0
    check-cast v1, Lorg/godotengine/godot/io/file/DataAccess;

    goto :goto_1

    .line 93
    :pswitch_2
    new-instance v0, Lorg/godotengine/godot/io/file/FileData;

    invoke-direct {v0, p3, p4}, Lorg/godotengine/godot/io/file/FileData;-><init>(Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V

    move-object v1, v0

    check-cast v1, Lorg/godotengine/godot/io/file/DataAccess;

    goto :goto_1

    .line 95
    :pswitch_3
    new-instance v0, Lorg/godotengine/godot/io/file/AssetData;

    invoke-direct {v0, p2, p3, p4}, Lorg/godotengine/godot/io/file/AssetData;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V

    move-object v1, v0

    check-cast v1, Lorg/godotengine/godot/io/file/DataAccess;

    .line 92
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getInputStream(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "storageScope"    # Lorg/godotengine/godot/io/StorageScope;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "storageScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lorg/godotengine/godot/io/file/DataAccess$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/godotengine/godot/io/StorageScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    goto :goto_0

    .line 73
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 74
    new-instance v0, Lorg/godotengine/godot/io/file/MediaStoreData;

    sget-object v1, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    invoke-direct {v0, p2, p3, v1}, Lorg/godotengine/godot/io/file/MediaStoreData;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V

    .line 75
    .local v0, "mediaStoreData":Lorg/godotengine/godot/io/file/MediaStoreData;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/file/MediaStoreData;->getFileChannel$lib_templateDebug()Ljava/nio/channels/FileChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    .end local v0    # "mediaStoreData":Lorg/godotengine/godot/io/file/MediaStoreData;
    goto :goto_0

    .line 77
    :cond_0
    goto :goto_0

    .line 69
    :pswitch_2
    new-instance v0, Lorg/godotengine/godot/io/file/FileData;

    sget-object v1, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    invoke-direct {v0, p3, v1}, Lorg/godotengine/godot/io/file/FileData;-><init>(Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V

    .line 70
    .local v0, "fileData":Lorg/godotengine/godot/io/file/FileData;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/file/FileData;->getFileChannel$lib_templateDebug()Ljava/nio/channels/FileChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    .end local v0    # "fileData":Lorg/godotengine/godot/io/file/FileData;
    goto :goto_0

    .line 64
    :pswitch_3
    new-instance v0, Lorg/godotengine/godot/io/file/AssetData;

    sget-object v1, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    invoke-direct {v0, p2, p3, v1}, Lorg/godotengine/godot/io/file/AssetData;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V

    .line 65
    .local v0, "assetData":Lorg/godotengine/godot/io/file/AssetData;
    invoke-virtual {v0}, Lorg/godotengine/godot/io/file/AssetData;->getReadChannel$lib_templateDebug()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    .line 62
    .end local v0    # "assetData":Lorg/godotengine/godot/io/file/AssetData;
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final removeFile(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "storageScope"    # Lorg/godotengine/godot/io/StorageScope;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "path"    # Ljava/lang/String;

    const-string v0, "storageScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lorg/godotengine/godot/io/file/DataAccess$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/godotengine/godot/io/StorageScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    goto :goto_0

    .line 139
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 140
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    invoke-virtual {v0, p2, p3}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->delete(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 142
    :cond_0
    goto :goto_0

    .line 137
    :pswitch_2
    sget-object v0, Lorg/godotengine/godot/io/file/FileData;->Companion:Lorg/godotengine/godot/io/file/FileData$Companion;

    invoke-virtual {v0, p3}, Lorg/godotengine/godot/io/file/FileData$Companion;->delete(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 138
    :pswitch_3
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    invoke-virtual {v0, p3}, Lorg/godotengine/godot/io/file/AssetData$Companion;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 136
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final renameFile(Lorg/godotengine/godot/io/StorageScope;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "storageScope"    # Lorg/godotengine/godot/io/StorageScope;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "to"    # Ljava/lang/String;

    const-string v0, "storageScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lorg/godotengine/godot/io/file/DataAccess$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/godotengine/godot/io/StorageScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 159
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    goto :goto_0

    .line 153
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 154
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    invoke-virtual {v0, p2, p3, p4}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->rename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 156
    :cond_0
    goto :goto_0

    .line 151
    :pswitch_2
    sget-object v0, Lorg/godotengine/godot/io/file/FileData;->Companion:Lorg/godotengine/godot/io/file/FileData$Companion;

    invoke-virtual {v0, p3, p4}, Lorg/godotengine/godot/io/file/FileData$Companion;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 152
    :pswitch_3
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    invoke-virtual {v0, p3, p4}, Lorg/godotengine/godot/io/file/AssetData$Companion;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 150
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
