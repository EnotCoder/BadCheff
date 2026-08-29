.class public Lorg/godotengine/godot/utils/Crypt;
.super Ljava/lang/Object;
.source "Crypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAbsRandomLong()J
    .locals 2

    .line 61
    invoke-static {}, Lorg/godotengine/godot/utils/Crypt;->createRandomLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createRandomHash()Ljava/lang/String;
    .locals 2

    .line 57
    invoke-static {}, Lorg/godotengine/godot/utils/Crypt;->createRandomLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/godotengine/godot/utils/Crypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createRandomLong()J
    .locals 3

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 66
    .local v0, "r":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .line 40
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 41
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 45
    .local v1, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v2, "hexString":Ljava/lang/StringBuilder;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    .line 47
    .local v5, "b":B
    and-int/lit16 v6, v5, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    nop

    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 50
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "messageDigest":[B
    .end local v2    # "hexString":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method
