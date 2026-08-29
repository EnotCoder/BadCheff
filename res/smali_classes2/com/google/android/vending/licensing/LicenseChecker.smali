.class public Lcom/google/android/vending/licensing/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LICENSE_ERROR:Z = false

.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String; = "LicenseChecker"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private final mChecksInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingChecks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private mPublicKey:Ljava/security/PublicKey;

.field private mService:Lcom/android/vending/licensing/ILicensingService;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChecksInProgress(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPublicKey(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/security/PublicKey;
    .locals 0

    iget-object p0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishCheck(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p3, "encodedPublicKey"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    .line 93
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 95
    invoke-static {p3}, Lcom/google/android/vending/licensing/LicenseChecker;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    .line 97
    invoke-static {p1, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method private cleanupService()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "LicenseChecker"

    const-string v2, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    .line 353
    :cond_0
    return-void
.end method

.method private declared-synchronized finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 1
    .param p1, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local p0    # "this":Lcom/google/android/vending/licensing/LicenseChecker;
    :cond_0
    monitor-exit p0

    return-void

    .line 229
    .end local p1    # "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private generateNonce()I
    .locals 1

    .line 370
    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 111
    const-string v0, "LicenseChecker"

    :try_start_0
    invoke-static {p0}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 112
    .local v1, "decodedKey":[B
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 114
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    .end local v1    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v2, "Invalid key specification."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 118
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    const-string v2, "Could not decode from Base64."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 115
    .end local v1    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :catch_2
    move-exception v0

    .line 117
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 382
    nop

    .line 383
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 382
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "LicenseChecker"

    const-string v2, "Package not found. could not get version code."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v1, ""

    return-object v1
.end method

.method private declared-synchronized handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 3
    .param p1, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    const/4 v1, 0x0

    const/16 v2, 0x123

    invoke-interface {v0, v2, v1}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    goto :goto_0

    .line 337
    .end local p0    # "this":Lcom/google/android/vending/licensing/LicenseChecker;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    .end local p1    # "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private runChecks()V
    .locals 7

    .line 215
    const-string v0, "LicenseChecker"

    :goto_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/licensing/LicenseValidator;

    move-object v2, v1

    .local v2, "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling checkLicense on service for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    .line 219
    invoke-virtual {v2}, Lcom/google/android/vending/licensing/LicenseValidator;->getNonce()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-direct {v6, p0, v2}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;-><init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    .line 218
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V

    .line 221
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in checkLicense call."

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    invoke-direct {p0, v2}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "LicenseChecker"

    const-string v1, "Using cached license response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v0, 0x100

    invoke-interface {p1, v0}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    goto/16 :goto_1

    .line 146
    .end local p0    # "this":Lcom/google/android/vending/licensing/LicenseChecker;
    :cond_0
    new-instance v7, Lcom/google/android/vending/licensing/LicenseValidator;

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    new-instance v2, Lcom/google/android/vending/licensing/NullDeviceLimiter;

    invoke-direct {v2}, Lcom/google/android/vending/licensing/NullDeviceLimiter;-><init>()V

    .line 147
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->generateNonce()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/licensing/LicenseValidator;-><init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 149
    .local v0, "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    if-nez v1, :cond_2

    .line 150
    const-string v1, "LicenseChecker"

    const-string v2, "Binding to licensing service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/String;

    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    .line 160
    invoke-static {v4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    .line 177
    invoke-static {v4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 153
    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 181
    .local v1, "bindResult":Z
    if-eqz v1, :cond_1

    .line 182
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_1
    const-string v2, "LicenseChecker"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    .end local v1    # "bindResult":Z
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/vending/licensing/util/Base64DecoderException;->printStackTrace()V

    .end local v1    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    goto :goto_0

    .line 187
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    .line 191
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    goto :goto_1

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 194
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .end local v0    # "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    :goto_1
    monitor-exit p0

    return-void

    .line 141
    .end local p1    # "callback":Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public followLastLicensingUrl(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->getLicensingUrl()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "licensingUrl":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .local v1, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 364
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V

    .line 365
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    .line 363
    .end local p0    # "this":Lcom/google/android/vending/licensing/LicenseChecker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 315
    :try_start_0
    invoke-static {p2}, Lcom/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/licensing/ILicensingService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    .line 316
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 314
    .end local p0    # "this":Lcom/google/android/vending/licensing/LicenseChecker;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    monitor-enter p0

    .line 323
    :try_start_0
    const-string v0, "LicenseChecker"

    const-string v1, "Service unexpectedly disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    monitor-exit p0

    return-void

    .line 322
    .end local p0    # "this":Lcom/google/android/vending/licensing/LicenseChecker;
    .end local p1    # "name":Landroid/content/ComponentName;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
