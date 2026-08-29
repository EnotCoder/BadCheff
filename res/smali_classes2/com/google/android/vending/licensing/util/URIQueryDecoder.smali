.class public Lcom/google/android/vending/licensing/util/URIQueryDecoder;
.super Ljava/lang/Object;
.source "URIQueryDecoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "URIQueryDecoder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DecodeQuery(Ljava/net/URI;Ljava/util/Map;)V
    .locals 7
    .param p0, "encodedURI"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Scanner;

    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "scanner":Ljava/util/Scanner;
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 41
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "param":Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "valuePair":[Ljava/lang/String;
    array-length v3, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 46
    const/4 v3, 0x0

    .local v3, "value":Ljava/lang/String;
    goto :goto_1

    .line 47
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    array-length v3, v2

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 48
    aget-object v3, v2, v5

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .restart local v3    # "value":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    nop

    .end local v1    # "param":Ljava/lang/String;
    .end local v2    # "valuePair":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_0

    .line 50
    .restart local v1    # "param":Ljava/lang/String;
    .restart local v2    # "valuePair":[Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "query parameter invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "scanner":Ljava/util/Scanner;
    .end local p0    # "encodedURI":Ljava/net/URI;
    .end local p1    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .end local v1    # "param":Ljava/lang/String;
    .end local v2    # "valuePair":[Ljava/lang/String;
    .restart local v0    # "scanner":Ljava/util/Scanner;
    .restart local p0    # "encodedURI":Ljava/net/URI;
    .restart local p1    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto :goto_2

    .line 55
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "URIQueryDecoder"

    const-string v3, "UTF-8 Not Recognized as a charset.  Device configuration Error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    return-void
.end method
