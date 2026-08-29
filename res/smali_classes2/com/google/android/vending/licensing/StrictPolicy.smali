.class public Lcom/google/android/vending/licensing/StrictPolicy;
.super Ljava/lang/Object;
.source "StrictPolicy.java"

# interfaces
.implements Lcom/google/android/vending/licensing/Policy;


# static fields
.field private static final TAG:Ljava/lang/String; = "StrictPolicy"


# instance fields
.field private mLastResponse:I

.field private mLicensingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x123

    iput v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLicensingUrl:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private decodeExtras(Lcom/google/android/vending/licensing/ResponseData;)Ljava/util/Map;
    .locals 4
    .param p1, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/vending/licensing/ResponseData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 88
    return-object v0

    .line 92
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "rawExtras":Ljava/net/URI;
    invoke-static {v1, v0}, Lcom/google/android/vending/licensing/util/URIQueryDecoder;->DecodeQuery(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1    # "rawExtras":Ljava/net/URI;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v2, "StrictPolicy"

    const-string v3, "Invalid syntax error while decoding extras data from server."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public allowAccess()Z
    .locals 2

    .line 77
    iget v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLicensingUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLicensingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 2
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .line 62
    iput p1, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLastResponse:I

    .line 64
    const/16 v0, 0x231

    if-ne p1, v0, :cond_0

    .line 65
    invoke-direct {p0, p2}, Lcom/google/android/vending/licensing/StrictPolicy;->decodeExtras(Lcom/google/android/vending/licensing/ResponseData;)Ljava/util/Map;

    move-result-object v0

    .line 66
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "LU"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/vending/licensing/StrictPolicy;->mLicensingUrl:Ljava/lang/String;

    .line 68
    .end local v0    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
