.class public Lorg/godotengine/godot/GodotDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "GodotDownloaderService.java"


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "REPLACE THIS WITH YOUR PUBLIC KEY"

.field private static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/godotengine/godot/GodotDownloaderService;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2bt
        -0xct
        -0x1t
        0x36t
        0x62t
        -0x64t
        -0xct
        0x2bt
        0x2t
        -0x8t
        -0x4t
        0x9t
        0x5t
        -0x6at
        -0x6ct
        -0x21t
        0x2dt
        -0x1t
        0x54t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 2

    .line 82
    const-string v0, "GODOT"

    const-string v1, "getAlarmReceiverClassName()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-class v0, Lorg/godotengine/godot/GodotDownloaderAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 5

    .line 58
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotDownloaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app_data_keys"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting public key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "store_public_key"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "GODOT"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSALT()[B
    .locals 1

    .line 72
    sget-object v0, Lorg/godotengine/godot/GodotDownloaderService;->SALT:[B

    return-object v0
.end method
