.class public Lcom/godot/game/GodotApp;
.super Lorg/godotengine/godot/GodotActivity;
.source "GodotApp.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const-string v0, "GODOT"

    const-string v1, "standard"

    const-string v2, "mono"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :try_start_0
    const-string v1, "Loading System.Security.Cryptography.Native.Android library"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "System.Security.Cryptography.Native.Android"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "Unable to load System.Security.Cryptography.Native.Android library"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/godotengine/godot/GodotActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-static {p0}, Landroidx/core/splashscreen/SplashScreen;->installSplashScreen(Landroid/app/Activity;)Landroidx/core/splashscreen/SplashScreen;

    .line 62
    invoke-super {p0, p1}, Lorg/godotengine/godot/GodotActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method
