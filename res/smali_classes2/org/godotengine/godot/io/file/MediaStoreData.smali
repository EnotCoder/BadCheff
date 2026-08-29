.class public final Lorg/godotengine/godot/io/file/MediaStoreData;
.super Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;
.source "MediaStoreData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/MediaStoreData$Companion;,
        Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;,
        Lorg/godotengine/godot/io/file/MediaStoreData$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/MediaStoreData;",
        "Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;",
        "context",
        "Landroid/content/Context;",
        "filePath",
        "",
        "accessFlag",
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        "(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V",
        "fileChannel",
        "Ljava/nio/channels/FileChannel;",
        "getFileChannel$lib_templateDebug",
        "()Ljava/nio/channels/FileChannel;",
        "id",
        "",
        "uri",
        "Landroid/net/Uri;",
        "Companion",
        "DataItem",
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
.field private static final AUTHORITY_DOWNLOADS_DOCUMENTS:Ljava/lang/String; = "com.android.providers.downloads.documents"

.field private static final AUTHORITY_EXTERNAL_STORAGE_DOCUMENTS:Ljava/lang/String; = "com.android.externalstorage.documents"

.field private static final AUTHORITY_MEDIA_DOCUMENTS:Ljava/lang/String; = "com.android.providers.media.documents"

.field private static final COLLECTION:Landroid/net/Uri;

.field public static final Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION_BY_ID:Ljava/lang/String; = "_id = ? "

.field private static final SELECTION_BY_PATH:Ljava/lang/String; = "_display_name = ?  AND relative_path = ?"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;

.field private final id:J

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    .line 70
    const-class v0, Lorg/godotengine/godot/io/file/MediaStoreData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->TAG:Ljava/lang/String;

    .line 72
    const-string v0, "external_primary"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->COLLECTION:Landroid/net/Uri;

    .line 74
    nop

    .line 75
    const-string v1, "_id"

    .line 76
    const-string v2, "_display_name"

    .line 75
    nop

    .line 77
    const-string v3, "relative_path"

    .line 75
    nop

    .line 78
    const-string v4, "_size"

    .line 75
    nop

    .line 79
    const-string v5, "date_modified"

    .line 75
    nop

    .line 80
    const-string v6, "media_type"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 75
    nop

    .line 74
    sput-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "accessFlag"    # Lorg/godotengine/godot/io/file/FileAccessFlags;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessFlag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p2}, Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;-><init>(Ljava/lang/String;)V

    .line 311
    nop

    .line 312
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v1, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    invoke-static {v1, p1, p2}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->access$queryByPath(Lorg/godotengine/godot/io/file/MediaStoreData$Companion;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "dataItems":Ljava/util/List;
    sget-object v3, Lorg/godotengine/godot/io/file/MediaStoreData$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lorg/godotengine/godot/io/file/FileAccessFlags;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "Unable to access file "

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 337
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 328
    :pswitch_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    invoke-static {v1, p1, p2}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->access$addFile(Lorg/godotengine/godot/io/file/MediaStoreData$Companion;Landroid/content/Context;Ljava/lang/String;)Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    move-result-object v1

    goto :goto_0

    .line 331
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    .line 328
    :goto_0
    nop

    .line 334
    .local v1, "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    if-eqz v1, :cond_1

    .line 337
    nop

    .end local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    goto :goto_1

    .line 335
    .restart local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    :cond_1
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    .end local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    :pswitch_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 322
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    .line 323
    .restart local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    nop

    .line 315
    .end local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    :goto_1
    nop

    .line 341
    .restart local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    invoke-virtual {v1}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->getId()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->id:J

    .line 342
    invoke-virtual {v1}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->uri:Landroid/net/Uri;

    .line 344
    invoke-virtual {p3}, Lorg/godotengine/godot/io/file/FileAccessFlags;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 346
    .local v3, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    sget-object v4, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    if-ne p3, v4, :cond_2

    .line 347
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 346
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    .line 349
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 348
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 346
    :goto_2
    iput-object v4, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 352
    invoke-virtual {p3}, Lorg/godotengine/godot/io/file/FileAccessFlags;->shouldTruncate()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 353
    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/MediaStoreData;->getFileChannel$lib_templateDebug()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 355
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    .end local v2    # "dataItems":Ljava/util/List;
    .end local v3    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_3
    nop

    .line 56
    return-void

    .line 345
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    .restart local v2    # "dataItems":Ljava/util/List;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to access file descriptor"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    .end local v1    # "dataItem":Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    :cond_5
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic access$getCOLLECTION$cp()Landroid/net/Uri;
    .locals 1

    .line 55
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->COLLECTION:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getPROJECTION$cp()[Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFileChannel$lib_templateDebug()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->fileChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method
