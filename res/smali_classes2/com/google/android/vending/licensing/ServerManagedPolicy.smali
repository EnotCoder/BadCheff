.class public Lcom/google/android/vending/licensing/ServerManagedPolicy;
.super Ljava/lang/Object;
.source "ServerManagedPolicy.java"

# interfaces
.implements Lcom/google/android/vending/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final PREFS_FILE:Ljava/lang/String; = "com.google.android.vending.licensing.ServerManagedPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_LICENSING_URL:Ljava/lang/String; = "licensingUrl"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "ServerManagedPolicy"


# instance fields
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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    .line 76
    const-string v0, "com.google.android.vending.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-direct {v1, v0, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    .line 78
    nop

    .line 79
    const/16 v2, 0x123

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lastResponse"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 80
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 82
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 83
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 84
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryCount"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    .line 85
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "licensingUrl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLicensingUrl:Ljava/lang/String;

    .line 86
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

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v0, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 288
    return-object v0

    .line 292
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

    .line 293
    .local v1, "rawExtras":Ljava/net/URI;
    invoke-static {v1, v0}, Lcom/google/android/vending/licensing/util/URIQueryDecoder;->DecodeQuery(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "rawExtras":Ljava/net/URI;
    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v2, "ServerManagedPolicy"

    const-string v3, "Invalid syntax error while decoding extras data from server."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v1    # "e":Ljava/net/URISyntaxException;
    :goto_0
    return-object v0
.end method

.method private setLastResponse(I)V
    .locals 3
    .param p1, "l"    # I

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    .line 145
    iput p1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 146
    iget-object v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private setLicensingUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 249
    iput-object p1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLicensingUrl:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "licensingUrl"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 3
    .param p1, "maxRetries"    # Ljava/lang/String;

    .line 226
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .local v0, "lMaxRetries":Ljava/lang/Long;
    goto :goto_0

    .line 227
    .end local v0    # "lMaxRetries":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ServerManagedPolicy"

    const-string v2, "Licence retry count (GR) missing, grace period disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string p1, "0"

    .line 231
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .line 234
    .local v0, "lMaxRetries":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 235
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private setRetryCount(J)V
    .locals 3
    .param p1, "c"    # J

    .line 156
    iput-wide p1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    .line 157
    iget-object v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 3
    .param p1, "retryUntil"    # Ljava/lang/String;

    .line 200
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v0, "lRetryUntil":Ljava/lang/Long;
    goto :goto_0

    .line 201
    .end local v0    # "lRetryUntil":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ServerManagedPolicy"

    const-string v2, "License retry timestamp (GT) missing, grace period disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string p1, "0"

    .line 205
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .line 208
    .local v0, "lRetryUntil":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 209
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 5
    .param p1, "validityTimestamp"    # Ljava/lang/String;

    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    goto :goto_0

    .line 175
    .end local v0    # "lValidityTimestamp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "ServerManagedPolicy"

    const-string v2, "License validity timestamp (VT) missing, caching for a minute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 179
    .local v1, "lValidityTimestamp":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    .line 182
    .end local v1    # "lValidityTimestamp":Ljava/lang/Long;
    .local v0, "lValidityTimestamp":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 183
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 9

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 269
    .local v0, "ts":J
    iget v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    const/16 v3, 0x100

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 271
    iget-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    cmp-long v6, v0, v2

    if-gtz v6, :cond_3

    .line 273
    return v4

    .line 275
    :cond_0
    const/16 v3, 0x123

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    const-wide/32 v6, 0xea60

    add-long/2addr v2, v6

    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    .line 279
    iget-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    iget-wide v6, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_0
    return v4

    .line 281
    :cond_3
    return v5
.end method

.method public getLicensingUrl()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLicensingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRetries()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 4
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .line 108
    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    .line 109
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 111
    :cond_0
    iget-wide v0, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setRetryCount(J)V

    .line 115
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->decodeExtras(Lcom/google/android/vending/licensing/ResponseData;)Ljava/util/Map;

    move-result-object v0

    .line 116
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x100

    if-ne p1, v1, :cond_1

    .line 117
    iput p1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 119
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setLicensingUrl(Ljava/lang/String;)V

    .line 120
    const-string v1, "VT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 121
    const-string v1, "GT"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 122
    const-string v1, "GR"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_1
    const/16 v1, 0x231

    if-ne p1, v1, :cond_2

    .line 125
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 129
    const-string v1, "LU"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setLicensingUrl(Ljava/lang/String;)V

    .line 132
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/ServerManagedPolicy;->setLastResponse(I)V

    .line 133
    iget-object v1, p0, Lcom/google/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    .line 134
    return-void
.end method
