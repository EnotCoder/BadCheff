.class public final Lorg/godotengine/godot/io/file/AssetData;
.super Lorg/godotengine/godot/io/file/DataAccess;
.source "AssetData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/AssetData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u001b\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0008\u0010\u001c\u001a\u00020\u000cH\u0016J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006 "
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/AssetData;",
        "Lorg/godotengine/godot/io/file/DataAccess;",
        "context",
        "Landroid/content/Context;",
        "filePath",
        "",
        "accessFlag",
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        "(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V",
        "inputStream",
        "Ljava/io/InputStream;",
        "length",
        "",
        "position",
        "readChannel",
        "Ljava/nio/channels/ReadableByteChannel;",
        "getReadChannel$lib_templateDebug",
        "()Ljava/nio/channels/ReadableByteChannel;",
        "close",
        "",
        "flush",
        "read",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "resize",
        "Lorg/godotengine/godot/error/Error;",
        "seek",
        "size",
        "write",
        "",
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
.field public static final Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final filePath:Ljava/lang/String;

.field private final inputStream:Ljava/io/InputStream;

.field private final length:J

.field private position:J

.field private final readChannel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/io/file/AssetData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/file/AssetData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/file/AssetData;->Companion:Lorg/godotengine/godot/io/file/AssetData$Companion;

    .line 52
    const-class v0, Lorg/godotengine/godot/io/file/AssetData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/file/AssetData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "accessFlag"    # Lorg/godotengine/godot/io/file/FileAccessFlags;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessFlag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lorg/godotengine/godot/io/file/DataAccess;-><init>()V

    iput-object p2, p0, Lorg/godotengine/godot/io/file/AssetData;->filePath:Ljava/lang/String;

    .line 81
    nop

    .line 82
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    if-eq p3, v0, :cond_0

    .line 86
    sget-object v0, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;->Companion:Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;

    invoke-virtual {v0, p2}, Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess$Companion;->getAssetsPath$lib_templateDebug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "assetsPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "open(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/godotengine/godot/io/file/AssetData;->inputStream:Ljava/io/InputStream;

    .line 88
    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v2

    const-string v3, "newChannel(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/godotengine/godot/io/file/AssetData;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 90
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/godotengine/godot/io/file/AssetData;->length:J

    .line 91
    .end local v0    # "assetsPath":Ljava/lang/String;
    nop

    .line 49
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing to the \'assets\' directory is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 94
    nop

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/io/file/AssetData;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/godotengine/godot/io/file/AssetData;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lorg/godotengine/godot/io/file/AssetData;->filePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when closing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 102
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->TAG:Ljava/lang/String;

    const-string v1, "flush() is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public final getReadChannel$lib_templateDebug()Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/godotengine/godot/io/file/AssetData;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    return-object v0
.end method

.method public position()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/godotengine/godot/io/file/AssetData;->position:J

    return-wide v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    nop

    .line 133
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/io/file/AssetData;->readChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 134
    .local v1, "readBytes":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 135
    invoke-virtual {p0, v3}, Lorg/godotengine/godot/io/file/AssetData;->setEndOfFile$lib_templateDebug(Z)V

    .line 136
    goto :goto_1

    .line 138
    :cond_0
    iget-wide v4, p0, Lorg/godotengine/godot/io/file/AssetData;->position:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/godotengine/godot/io/file/AssetData;->position:J

    .line 139
    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/AssetData;->position()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/AssetData;->size()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lorg/godotengine/godot/io/file/AssetData;->setEndOfFile$lib_templateDebug(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    move v0, v1

    .end local v1    # "readBytes":I
    :goto_1
    goto :goto_2

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/godotengine/godot/io/file/AssetData;->TAG:Ljava/lang/String;

    iget-object v3, p0, Lorg/godotengine/godot/io/file/AssetData;->filePath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while reading from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    nop

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return v0
.end method

.method public resize(J)Lorg/godotengine/godot/error/Error;
    .locals 2
    .param p1, "length"    # J

    .line 123
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->TAG:Ljava/lang/String;

    const-string v1, "resize() is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    return-object v0
.end method

.method public seek(J)V
    .locals 5
    .param p1, "position"    # J

    .line 106
    nop

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/io/file/AssetData;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 109
    iput-wide p1, p0, Lorg/godotengine/godot/io/file/AssetData;->position:J

    .line 110
    iget-wide v0, p0, Lorg/godotengine/godot/io/file/AssetData;->length:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 111
    iput-wide v0, p0, Lorg/godotengine/godot/io/file/AssetData;->position:J

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/io/file/AssetData;->setEndOfFile$lib_templateDebug(Z)V

    goto :goto_0

    .line 114
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/io/file/AssetData;->setEndOfFile$lib_templateDebug(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/godotengine/godot/io/file/AssetData;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lorg/godotengine/godot/io/file/AssetData;->filePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when seeking file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public size()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lorg/godotengine/godot/io/file/AssetData;->length:J

    return-wide v0
.end method

.method public write(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lorg/godotengine/godot/io/file/AssetData;->TAG:Ljava/lang/String;

    const-string v1, "write() is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    return v0
.end method
