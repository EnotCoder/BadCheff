.class final Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
.super Ljava/lang/Object;
.source "MediaStoreData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/file/MediaStoreData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\nH\u00c6\u0003JO\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\nH\u00c6\u0001J\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010$\u001a\u00020\nH\u00d6\u0001J\t\u0010%\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006&"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;",
        "",
        "id",
        "",
        "uri",
        "Landroid/net/Uri;",
        "displayName",
        "",
        "relativePath",
        "size",
        "",
        "dateModified",
        "mediaType",
        "(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)V",
        "getDateModified",
        "()I",
        "getDisplayName",
        "()Ljava/lang/String;",
        "getId",
        "()J",
        "getMediaType",
        "getRelativePath",
        "getSize",
        "getUri",
        "()Landroid/net/Uri;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final dateModified:I

.field private final displayName:Ljava/lang/String;

.field private final id:J

.field private final mediaType:I

.field private final relativePath:Ljava/lang/String;

.field private final size:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "relativePath"    # Ljava/lang/String;
    .param p6, "size"    # I
    .param p7, "dateModified"    # I
    .param p8, "mediaType"    # I

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relativePath"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 61
    iput-object p3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 62
    iput-object p4, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 64
    iput p6, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 65
    iput p7, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 66
    iput p8, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 59
    return-void
.end method

.method public static synthetic copy$default(Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Object;)Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->copy(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    return-wide v0
.end method

.method public final component2()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    return v0
.end method

.method public final copy(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    .locals 13

    const-string v0, "uri"

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    move-object/from16 v11, p4

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "relativePath"

    move-object/from16 v12, p5

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    move-object v1, v0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    iget-wide v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    iget-wide v5, v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    iget-object v4, v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    iget-object v4, v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    iget v4, v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    iget v4, v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    if-eq v3, v4, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    iget v1, v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    if-eq v3, v1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDateModified()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    return-wide v0
.end method

.method public final getMediaType()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    return v0
.end method

.method public final getRelativePath()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    invoke-static {v0, v1}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    iget-object v4, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    iget v5, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    iget v6, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    iget v7, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DataItem(id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relativePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
