.class Lcom/google/android/vending/licensing/LicenseValidator;
.super Ljava/lang/Object;
.source "LicenseValidator.java"


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "LicenseValidator"


# instance fields
.field private final mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private final mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p2, "deviceLimiter"    # Lcom/google/android/vending/licensing/DeviceLimiter;
    .param p3, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .param p4, "nonce"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "versionCode"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 60
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    .line 61
    iput-object p3, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 62
    iput p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    .line 63
    iput-object p5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private handleApplicationError(I)V
    .locals 1
    .param p1, "code"    # I

    .line 225
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    .line 226
    return-void
.end method

.method private handleInvalidResponse()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    .line 230
    return-void
.end method

.method private handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .line 213
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    .line 222
    :goto_0
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "responseCode"    # I
    .param p3, "signedData"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "userId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 93
    .local v1, "data":Lcom/google/android/vending/licensing/ResponseData;
    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "LicenseValidator"

    if-eqz p2, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_7

    .line 97
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    const-string v2, "Signature verification failed: signedData is empty. (Device not signed-in to any Google accounts?)"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 101
    return-void

    .line 104
    :cond_1
    const-string v5, "SHA1withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 105
    .local v5, "sig":Ljava/security/Signature;
    invoke-virtual {v5, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 106
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    .line 108
    invoke-static {p4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->verify([B)Z

    move-result v6

    if-nez v6, :cond_2

    .line 109
    const-string v2, "Signature verification failed."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    return-void

    .line 125
    .end local v5    # "sig":Ljava/security/Signature;
    :cond_2
    nop

    .line 129
    :try_start_1
    invoke-static {p3}, Lcom/google/android/vending/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v5

    .line 134
    nop

    .line 136
    iget v5, v1, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    if-eq v5, p2, :cond_3

    .line 137
    const-string v2, "Response codes don\'t match."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 139
    return-void

    .line 142
    :cond_3
    iget v5, v1, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    iget v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    if-eq v5, v6, :cond_4

    .line 143
    const-string v2, "Nonce doesn\'t match."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 145
    return-void

    .line 148
    :cond_4
    iget-object v5, v1, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 149
    const-string v2, "Package name doesn\'t match."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 151
    return-void

    .line 154
    :cond_5
    iget-object v5, v1, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 155
    const-string v2, "Version codes don\'t match."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 157
    return-void

    .line 161
    :cond_6
    iget-object v0, v1, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 163
    const-string v2, "User identifier is empty."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 165
    return-void

    .line 169
    :cond_7
    const/16 v5, 0x123

    sparse-switch p2, :sswitch_data_0

    .line 200
    const-string v2, "Unknown response code for license check."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 194
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    .line 195
    goto :goto_0

    .line 191
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    .line 192
    goto :goto_0

    .line 179
    :sswitch_2
    const-string v2, "Error contacting licensing server."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, v5, v1}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 181
    goto :goto_0

    .line 187
    :sswitch_3
    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0, v5, v1}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 189
    goto :goto_0

    .line 183
    :sswitch_4
    const-string v2, "An error has occurred on the licensing server."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, v5, v1}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 185
    goto :goto_0

    .line 197
    :sswitch_5
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    .line 198
    goto :goto_0

    .line 176
    :sswitch_6
    const/16 v2, 0x231

    invoke-direct {p0, v2, v1}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 177
    goto :goto_0

    .line 172
    :sswitch_7
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    invoke-interface {v2, v0}, Lcom/google/android/vending/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "limiterResponse":I
    invoke-direct {p0, v2, v1}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 174
    nop

    .line 203
    .end local v2    # "limiterResponse":I
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Could not parse response."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 133
    return-void

    .line 121
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 122
    .local v2, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    const-string v3, "Could not Base64-decode signature."

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    .line 124
    return-void

    .line 119
    .end local v2    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :catch_2
    move-exception v2

    .line 120
    .local v2, "e":Ljava/security/SignatureException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 116
    .end local v2    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v2

    .line 117
    .local v2, "e":Ljava/security/InvalidKeyException;
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    .line 118
    return-void

    .line 113
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v2

    .line 115
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_6
        0x2 -> :sswitch_7
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x101 -> :sswitch_2
        0x102 -> :sswitch_1
        0x103 -> :sswitch_0
    .end sparse-switch
.end method
