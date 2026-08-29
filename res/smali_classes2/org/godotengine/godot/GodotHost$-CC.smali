.class public final synthetic Lorg/godotengine/godot/GodotHost$-CC;
.super Ljava/lang/Object;
.source "GodotHost.java"


# direct methods
.method public static $default$getCommandLine(Lorg/godotengine/godot/GodotHost;)Ljava/util/List;
    .locals 1
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getHostPlugins(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "engine"    # Lorg/godotengine/godot/Godot;

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onEditorWorkspaceSelected(Lorg/godotengine/godot/GodotHost;Ljava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "workspace"    # Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static $default$onGodotForceQuit(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;)V
    .locals 0
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "instance"    # Lorg/godotengine/godot/Godot;

    .line 68
    return-void
.end method

.method public static $default$onGodotForceQuit(Lorg/godotengine/godot/GodotHost;I)Z
    .locals 1
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "godotInstanceId"    # I

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$onGodotMainLoopStarted(Lorg/godotengine/godot/GodotHost;)V
    .locals 0
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;

    .line 63
    return-void
.end method

.method public static $default$onGodotRestartRequested(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;)V
    .locals 0
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "instance"    # Lorg/godotengine/godot/Godot;

    .line 84
    return-void
.end method

.method public static $default$onGodotSetupCompleted(Lorg/godotengine/godot/GodotHost;)V
    .locals 0
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;

    .line 58
    return-void
.end method

.method public static $default$onNewGodotInstanceRequested(Lorg/godotengine/godot/GodotHost;[Ljava/lang/String;)I
    .locals 1
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "args"    # [Ljava/lang/String;

    .line 95
    const/4 v0, -0x1

    return v0
.end method

.method public static $default$signApk(Lorg/godotengine/godot/GodotHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
    .locals 1
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "inputPath"    # Ljava/lang/String;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "keystorePath"    # Ljava/lang/String;
    .param p4, "keystoreUser"    # Ljava/lang/String;
    .param p5, "keystorePassword"    # Ljava/lang/String;

    .line 127
    sget-object v0, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    return-object v0
.end method

.method public static $default$supportsFeature(Lorg/godotengine/godot/GodotHost;Ljava/lang/String;)Z
    .locals 1
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "featureTag"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$verifyApk(Lorg/godotengine/godot/GodotHost;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
    .locals 1
    .param p0, "_this"    # Lorg/godotengine/godot/GodotHost;
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 137
    sget-object v0, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    return-object v0
.end method
