.class public Lcom/google/android/vending/licensing/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/vending/licensing/util/Base64;->ALPHABET:[B

    .line 79
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/vending/licensing/util/Base64;->WEBSAFE_ALPHABET:[B

    .line 98
    const/16 v0, 0x80

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/vending/licensing/util/Base64;->DECODABET:[B

    .line 132
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/vending/licensing/util/Base64;->WEBSAFE_DECODABET:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 428
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/vending/licensing/util/Base64;->decode([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([B)[B
    .locals 2
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/vending/licensing/util/Base64;->decode([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)[B
    .locals 1
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 482
    sget-object v0, Lcom/google/android/vending/licensing/util/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/vending/licensing/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII[B)[B
    .locals 16
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "decodabet"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 512
    move/from16 v0, p2

    move-object/from16 v1, p3

    mul-int/lit8 v2, v0, 0x3

    const/4 v3, 0x4

    div-int/2addr v2, v3

    .line 513
    .local v2, "len34":I
    add-int/lit8 v4, v2, 0x2

    new-array v4, v4, [B

    .line 514
    .local v4, "outBuff":[B
    const/4 v5, 0x0

    .line 516
    .local v5, "outBuffPosn":I
    new-array v6, v3, [B

    .line 517
    .local v6, "b4":[B
    const/4 v7, 0x0

    .line 518
    .local v7, "b4Posn":I
    const/4 v8, 0x0

    .line 519
    .local v8, "i":I
    const/4 v9, 0x0

    .line 520
    .local v9, "sbiCrop":B
    const/4 v10, 0x0

    .line 521
    .local v10, "sbiDecode":B
    const/4 v8, 0x0

    :goto_0
    const/16 v11, 0x3d

    const/4 v13, 0x1

    if-ge v8, v0, :cond_9

    .line 522
    add-int v14, v8, p1

    aget-byte v14, p0, v14

    and-int/lit8 v14, v14, 0x7f

    int-to-byte v9, v14

    .line 523
    aget-byte v10, v1, v9

    .line 525
    const/4 v14, -0x5

    if-lt v10, v14, :cond_8

    .line 526
    const/4 v14, -0x1

    if-lt v10, v14, :cond_7

    .line 529
    if-ne v9, v11, :cond_5

    .line 530
    sub-int v14, v0, v8

    .line 531
    .local v14, "bytesLeft":I
    add-int/lit8 v15, v0, -0x1

    add-int v15, v15, p1

    aget-byte v15, p0, v15

    and-int/lit8 v15, v15, 0x7f

    int-to-byte v15, v15

    .line 532
    .local v15, "lastByte":B
    if-eqz v7, :cond_4

    if-eq v7, v13, :cond_4

    .line 535
    const/4 v12, 0x3

    if-ne v7, v12, :cond_0

    const/4 v12, 0x2

    if-gt v14, v12, :cond_1

    :cond_0
    if-ne v7, v3, :cond_2

    if-gt v14, v13, :cond_1

    goto :goto_1

    .line 537
    :cond_1
    new-instance v3, Lcom/google/android/vending/licensing/util/Base64DecoderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/google/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 540
    :cond_2
    :goto_1
    if-eq v15, v11, :cond_9

    const/16 v3, 0xa

    if-ne v15, v3, :cond_3

    goto :goto_3

    .line 541
    :cond_3
    new-instance v3, Lcom/google/android/vending/licensing/util/Base64DecoderException;

    const-string v11, "encoded value has invalid trailing byte"

    invoke-direct {v3, v11}, Lcom/google/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 533
    :cond_4
    new-instance v3, Lcom/google/android/vending/licensing/util/Base64DecoderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid padding byte \'=\' at byte offset "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/google/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 547
    .end local v14    # "bytesLeft":I
    .end local v15    # "lastByte":B
    :cond_5
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "b4Posn":I
    .local v11, "b4Posn":I
    aput-byte v9, v6, v7

    .line 548
    if-ne v11, v3, :cond_6

    .line 549
    const/4 v7, 0x0

    invoke-static {v6, v7, v4, v5, v1}, Lcom/google/android/vending/licensing/util/Base64;->decode4to3([BI[BI[B)I

    move-result v7

    add-int/2addr v5, v7

    .line 550
    const/4 v7, 0x0

    .end local v11    # "b4Posn":I
    .restart local v7    # "b4Posn":I
    goto :goto_2

    .line 548
    .end local v7    # "b4Posn":I
    .restart local v11    # "b4Posn":I
    :cond_6
    move v7, v11

    .line 521
    .end local v11    # "b4Posn":I
    .restart local v7    # "b4Posn":I
    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 554
    :cond_8
    new-instance v3, Lcom/google/android/vending/licensing/util/Base64DecoderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad Base64 input character at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int v12, v8, p1

    aget-byte v12, p0, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(decimal)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/google/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 565
    :cond_9
    :goto_3
    if-eqz v7, :cond_b

    .line 566
    if-eq v7, v13, :cond_a

    .line 570
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "b4Posn":I
    .local v3, "b4Posn":I
    aput-byte v11, v6, v7

    .line 571
    const/4 v7, 0x0

    invoke-static {v6, v7, v4, v5, v1}, Lcom/google/android/vending/licensing/util/Base64;->decode4to3([BI[BI[B)I

    move-result v11

    add-int/2addr v5, v11

    move v7, v3

    goto :goto_4

    .line 567
    .end local v3    # "b4Posn":I
    .restart local v7    # "b4Posn":I
    :cond_a
    new-instance v3, Lcom/google/android/vending/licensing/util/Base64DecoderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "single trailing character at offset "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/google/android/vending/licensing/util/Base64DecoderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 574
    :cond_b
    :goto_4
    new-array v3, v5, [B

    .line 575
    .local v3, "out":[B
    const/4 v11, 0x0

    invoke-static {v4, v11, v3, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    return-object v3
.end method

.method private static decode4to3([BI[BI[B)I
    .locals 3
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "decodabet"    # [B

    .line 386
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 387
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    .line 391
    .local v0, "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 392
    const/4 v1, 0x1

    return v1

    .line 393
    .end local v0    # "outBuff":I
    :cond_0
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    if-ne v0, v1, :cond_1

    .line 395
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    .line 400
    .restart local v0    # "outBuff":I
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 401
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 402
    const/4 v1, 0x2

    return v1

    .line 405
    .end local v0    # "outBuff":I
    :cond_1
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 411
    .restart local v0    # "outBuff":I
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 412
    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 413
    add-int/lit8 v1, p3, 0x2

    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 414
    const/4 v1, 0x3

    return v1
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 440
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/google/android/vending/licensing/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public static decodeWebSafe([B)[B
    .locals 2
    .param p0, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 466
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/vending/licensing/util/Base64;->decodeWebSafe([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeWebSafe([BII)[B
    .locals 1
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/util/Base64DecoderException;
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/google/android/vending/licensing/util/Base64;->WEBSAFE_DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/vending/licensing/util/Base64;->decode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B

    .line 251
    array-length v0, p0

    sget-object v1, Lcom/google/android/vending/licensing/util/Base64;->ALPHABET:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lcom/google/android/vending/licensing/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII[BZ)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "doPadding"    # Z

    .line 278
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/vending/licensing/util/Base64;->encode([BII[BI)[B

    move-result-object v0

    .line 279
    .local v0, "outBuff":[B
    array-length v1, v0

    .line 283
    .local v1, "outLen":I
    :goto_0
    if-nez p4, :cond_1

    if-lez v1, :cond_1

    .line 284
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    .line 285
    goto :goto_1

    .line 287
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 290
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method public static encode([BII[BI)[B
    .locals 16
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "alphabet"    # [B
    .param p4, "maxLineLength"    # I

    .line 305
    move/from16 v6, p2

    move/from16 v7, p4

    add-int/lit8 v0, v6, 0x2

    div-int/lit8 v8, v0, 0x3

    .line 306
    .local v8, "lenDiv3":I
    mul-int/lit8 v9, v8, 0x4

    .line 307
    .local v9, "len43":I
    div-int v0, v9, v7

    add-int/2addr v0, v9

    new-array v10, v0, [B

    .line 310
    .local v10, "outBuff":[B
    const/4 v0, 0x0

    .line 311
    .local v0, "d":I
    const/4 v1, 0x0

    .line 312
    .local v1, "e":I
    add-int/lit8 v11, v6, -0x2

    .line 313
    .local v11, "len2":I
    const/4 v2, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    .line 314
    .end local v0    # "d":I
    .end local v1    # "e":I
    .local v12, "d":I
    .local v13, "e":I
    .local v14, "lineLength":I
    :goto_0
    const/16 v15, 0xa

    if-ge v12, v11, :cond_1

    .line 319
    add-int v0, v12, p1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v12, 0x1

    add-int v1, v1, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, v12, 0x2

    add-int v1, v1, p1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 323
    .local v0, "inBuff":I
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p3, v1

    aput-byte v1, v10, v13

    .line 324
    add-int/lit8 v1, v13, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 325
    add-int/lit8 v1, v13, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 326
    add-int/lit8 v1, v13, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p3, v2

    aput-byte v2, v10, v1

    .line 328
    add-int/lit8 v14, v14, 0x4

    .line 329
    if-ne v14, v7, :cond_0

    .line 330
    add-int/lit8 v1, v13, 0x4

    aput-byte v15, v10, v1

    .line 331
    add-int/lit8 v13, v13, 0x1

    .line 332
    const/4 v1, 0x0

    move v14, v1

    .line 314
    .end local v0    # "inBuff":I
    :cond_0
    add-int/lit8 v12, v12, 0x3

    add-int/lit8 v13, v13, 0x4

    goto :goto_0

    .line 336
    :cond_1
    if-ge v12, v6, :cond_3

    .line 337
    add-int v1, v12, p1

    sub-int v2, v6, v12

    move-object/from16 v0, p0

    move-object v3, v10

    move v4, v13

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/vending/licensing/util/Base64;->encode3to4([BII[BI[B)[B

    .line 339
    add-int/lit8 v14, v14, 0x4

    .line 340
    if-ne v14, v7, :cond_2

    .line 342
    add-int/lit8 v0, v13, 0x4

    aput-byte v15, v10, v0

    .line 343
    add-int/lit8 v13, v13, 0x1

    .line 345
    :cond_2
    add-int/lit8 v13, v13, 0x4

    .line 350
    :cond_3
    sget-boolean v0, Lorg/godotengine/godot/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_5

    array-length v0, v10

    if-ne v13, v0, :cond_4

    goto :goto_1

    .line 351
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 353
    :cond_5
    :goto_1
    return-object v10
.end method

.method private static encode3to4([BII[BI[B)[B
    .locals 4
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "alphabet"    # [B

    .line 214
    const/4 v0, 0x0

    if-lez p2, :cond_0

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 215
    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v1, v2

    .line 216
    const/4 v2, 0x2

    if-le p2, v2, :cond_2

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :cond_2
    or-int/2addr v0, v1

    .line 218
    .local v0, "inBuff":I
    const/16 v1, 0x3d

    packed-switch p2, :pswitch_data_0

    .line 238
    return-object p3

    .line 220
    :pswitch_0
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, p5, v1

    aput-byte v1, p3, p4

    .line 221
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 222
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 223
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v2, v0, 0x3f

    aget-byte v2, p5, v2

    aput-byte v2, p3, v1

    .line 224
    return-object p3

    .line 226
    :pswitch_1
    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, p5, v2

    aput-byte v2, p3, p4

    .line 227
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 228
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 229
    add-int/lit8 v2, p4, 0x3

    aput-byte v1, p3, v2

    .line 230
    return-object p3

    .line 232
    :pswitch_2
    ushr-int/lit8 v2, v0, 0x12

    aget-byte v2, p5, v2

    aput-byte v2, p3, p4

    .line 233
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, p5, v3

    aput-byte v3, p3, v2

    .line 234
    add-int/lit8 v2, p4, 0x2

    aput-byte v1, p3, v2

    .line 235
    add-int/lit8 v2, p4, 0x3

    aput-byte v1, p3, v2

    .line 236
    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # [B
    .param p1, "doPadding"    # Z

    .line 262
    array-length v0, p0

    sget-object v1, Lcom/google/android/vending/licensing/util/Base64;->WEBSAFE_ALPHABET:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/google/android/vending/licensing/util/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
