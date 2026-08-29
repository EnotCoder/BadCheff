.class public Lorg/godotengine/godot/utils/GodotNetUtils;
.super Ljava/lang/Object;
.source "GodotNetUtils.java"


# instance fields
.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    invoke-static {p1, v0}, Lorg/godotengine/godot/utils/PermissionsUtil;->hasManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 57
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    const-string v1, "GodotMulticastLock"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    iput-object v1, p0, Lorg/godotengine/godot/utils/GodotNetUtils;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 60
    .end local v0    # "wifi":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method public static getCACertificates()Ljava/lang/String;
    .locals 7

    .line 97
    :try_start_0
    const-string v0, "AndroidCAStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 98
    .local v0, "ks":Ljava/security/KeyStore;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v1, "writer":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 102
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 104
    .local v2, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    .local v3, "alias":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 108
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    const-string v5, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v5, "-----END CERTIFICATE-----\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    nop

    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 113
    .end local v2    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 114
    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v1    # "writer":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while reading CA certificates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Godot"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public multicastLockAcquire()V
    .locals 3

    .line 67
    iget-object v0, p0, Lorg/godotengine/godot/utils/GodotNetUtils;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during multicast lock acquire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Godot"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public multicastLockRelease()V
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/godotengine/godot/utils/GodotNetUtils;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during multicast lock release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Godot"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
