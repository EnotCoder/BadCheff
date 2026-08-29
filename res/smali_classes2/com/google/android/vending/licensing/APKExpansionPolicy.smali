.class public Lcom/google/android/vending/licensing/APKExpansionPolicy;
.super Ljava/lang/Object;
.source "APKExpansionPolicy.java"

# interfaces
.implements Lcom/google/android/vending/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field public static final MAIN_FILE_URL_INDEX:I = 0x0

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final PATCH_FILE_URL_INDEX:I = 0x1

.field private static final PREFS_FILE:Ljava/lang/String; = "com.google.android.vending.licensing.APKExpansionPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_LICENSING_URL:Ljava/lang/String; = "licensingUrl"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "APKExpansionPolicy"


# instance fields
.field private mExpansionFileNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionFileSizes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionURLs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mLicensingUrl:Ljava/lang/String;

.field private mMaxRetries:J

.field private mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obfuscator"    # Lcom/google/android/vending/licensing/Obfuscator;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 72
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    .line 90
    const-string v0, "com.google.android.vending.licensing.APKExpansionPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-direct {v1, v0, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    .line 92
    nop

    .line 93
    const/16 v2, 0x123

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastResponse"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 94
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 96
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 97
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 98
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryCount"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    .line 99
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "licensingUrl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLicensingUrl:Ljava/lang/String;

    .line 100
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

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 402
    return-object v0

    .line 406
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

    .line 407
    .local v1, "rawExtras":Ljava/net/URI;
    invoke-static {v1, v0}, Lcom/google/android/vending/licensing/util/URIQueryDecoder;->DecodeQuery(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v1    # "rawExtras":Ljava/net/URI;
    goto :goto_0

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v2, "APKExpansionPolicy"

    const-string v3, "Invalid syntax error while decoding extras data from server."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    return-object v0
.end method

.method private setLastResponse(I)V
    .locals 3
    .param p1, "l"    # I

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 190
    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 191
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private setLicensingUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLicensingUrl:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "licensingUrl"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 3
    .param p1, "maxRetries"    # Ljava/lang/String;

    .line 271
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .local v0, "lMaxRetries":Ljava/lang/Long;
    goto :goto_0

    .line 272
    .end local v0    # "lMaxRetries":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "APKExpansionPolicy"

    const-string v2, "Licence retry count (GR) missing, grace period disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string p1, "0"

    .line 276
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .line 279
    .local v0, "lMaxRetries":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 280
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method private setRetryCount(J)V
    .locals 3
    .param p1, "c"    # J

    .line 201
    iput-wide p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    .line 202
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 3
    .param p1, "retryUntil"    # Ljava/lang/String;

    .line 245
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .local v0, "lRetryUntil":Ljava/lang/Long;
    goto :goto_0

    .line 246
    .end local v0    # "lRetryUntil":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "APKExpansionPolicy"

    const-string v2, "License retry timestamp (GT) missing, grace period disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string p1, "0"

    .line 250
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .line 253
    .local v0, "lRetryUntil":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 254
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 5
    .param p1, "validityTimestamp"    # Ljava/lang/String;

    .line 219
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    goto :goto_0

    .line 220
    .end local v0    # "lValidityTimestamp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "APKExpansionPolicy"

    const-string v2, "License validity timestamp (VT) missing, caching for a minute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 224
    .local v1, "lValidityTimestamp":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    .line 227
    .end local v1    # "lValidityTimestamp":Ljava/lang/Long;
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 228
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 9

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 381
    .local v0, "ts":J
    iget v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    const/16 v3, 0x100

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 384
    iget-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    cmp-long v6, v0, v2

    if-gtz v6, :cond_3

    .line 386
    return v4

    .line 388
    :cond_0
    const/16 v3, 0x123

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    const-wide/32 v6, 0xea60

    add-long/2addr v2, v6

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    .line 393
    iget-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    iget-wide v6, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4

    .line 395
    :cond_3
    return v5
.end method

.method public getExpansionFileName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 344
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpansionFileSize(I)J
    .locals 2
    .param p1, "index"    # I

    .line 358
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 361
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getExpansionURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 321
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpansionURLCount()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getLicensingUrl()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLicensingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRetries()J
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 7
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .line 136
    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    .line 137
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 139
    :cond_0
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    .line 143
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->decodeExtras(Lcom/google/android/vending/licensing/ResponseData;)Ljava/util/Map;

    move-result-object v0

    .line 144
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x100

    if-ne p1, v1, :cond_8

    .line 145
    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 147
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setLicensingUrl(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 149
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 150
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 151
    .local v3, "key":Ljava/lang/String;
    const-string v4, "VT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 153
    :cond_1
    const-string v4, "GT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 155
    :cond_2
    const-string v4, "GR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_3

    .line 157
    :cond_3
    const-string v4, "FILE_URL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 159
    .local v4, "index":I
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionURL(ILjava/lang/String;)V

    .line 160
    .end local v4    # "index":I
    goto :goto_3

    :cond_4
    const-string v4, "FILE_NAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 161
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 162
    .restart local v4    # "index":I
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionFileName(ILjava/lang/String;)V

    .end local v4    # "index":I
    goto :goto_2

    .line 163
    :cond_5
    const-string v4, "FILE_SIZE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 164
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 165
    .restart local v4    # "index":I
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionFileSize(IJ)V

    goto :goto_3

    .line 163
    .end local v4    # "index":I
    :cond_6
    :goto_2
    nop

    .line 167
    .end local v3    # "key":Ljava/lang/String;
    :goto_3
    goto/16 :goto_1

    .line 150
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    goto :goto_4

    .line 168
    :cond_8
    const/16 v1, 0x231

    if-ne p1, v1, :cond_9

    .line 170
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 174
    const-string v1, "LU"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setLicensingUrl(Ljava/lang/String;)V

    goto :goto_5

    .line 168
    :cond_9
    :goto_4
    nop

    .line 177
    :goto_5
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setLastResponse(I)V

    .line 178
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    .line 179
    return-void
.end method

.method public resetPolicy()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const/16 v1, 0x123

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastResponse"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    .line 111
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    .line 113
    return-void
.end method

.method public setExpansionFileName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 355
    return-void
.end method

.method public setExpansionFileSize(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "size"    # J

    .line 365
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method public setExpansionURL(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "URL"    # Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void
.end method
