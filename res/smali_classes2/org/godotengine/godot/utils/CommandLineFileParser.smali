.class public final Lorg/godotengine/godot/utils/CommandLineFileParser;
.super Ljava/lang/Object;
.source "CommandLineFileParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/godotengine/godot/utils/CommandLineFileParser;",
        "",
        "()V",
        "decodeHeaderIntValue",
        "",
        "headerBytes",
        "",
        "parseCommandLine",
        "",
        "",
        "inputStream",
        "Ljava/io/InputStream;",
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
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final decodeHeaderIntValue([B)I
    .locals 2
    .param p1, "headerBytes"    # [B

    .line 79
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 80
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 79
    or-int/2addr v0, v1

    .line 81
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 79
    or-int/2addr v0, v1

    .line 82
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 79
    or-int/2addr v0, v1

    .line 82
    return v0
.end method


# virtual methods
.method public final parseCommandLine(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    nop

    .line 46
    const/4 v0, 0x4

    :try_start_0
    new-array v1, v0, [B

    .line 47
    .local v1, "headerBytes":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 48
    .local v2, "argBytes":I
    if-ge v2, v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 51
    :cond_0
    invoke-direct {p0, v1}, Lorg/godotengine/godot/utils/CommandLineFileParser;->decodeHeaderIntValue([B)I

    move-result v3

    .line 53
    .local v3, "argc":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .local v4, "cmdline":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 55
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v2, v6

    .line 56
    if-ge v2, v0, :cond_1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 59
    :cond_1
    invoke-direct {p0, v1}, Lorg/godotengine/godot/utils/CommandLineFileParser;->decodeHeaderIntValue([B)I

    move-result v6

    .line 61
    .local v6, "strlen":I
    const v7, 0xffff

    if-le v6, v7, :cond_2

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 65
    :cond_2
    new-array v7, v6, [B

    .line 66
    .local v7, "arg":[B
    invoke-virtual {p1, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    move v2, v8

    .line 67
    if-ne v2, v6, :cond_3

    .line 68
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "UTF_8"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v6    # "strlen":I
    .end local v7    # "arg":[B
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 71
    .end local v5    # "i":I
    :cond_4
    nop

    .end local v1    # "headerBytes":[B
    .end local v2    # "argBytes":I
    .end local v3    # "argc":I
    .end local v4    # "cmdline":Ljava/util/ArrayList;
    move-object v0, v4

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
