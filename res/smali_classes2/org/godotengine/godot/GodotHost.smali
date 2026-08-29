.class public interface abstract Lorg/godotengine/godot/GodotHost;
.super Ljava/lang/Object;
.source "GodotHost.java"


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract getCommandLine()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGodot()Lorg/godotengine/godot/Godot;
.end method

.method public abstract getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/godotengine/godot/Godot;",
            ")",
            "Ljava/util/Set<",
            "Lorg/godotengine/godot/plugin/GodotPlugin;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onEditorWorkspaceSelected(Ljava/lang/String;)V
.end method

.method public abstract onGodotForceQuit(Lorg/godotengine/godot/Godot;)V
.end method

.method public abstract onGodotForceQuit(I)Z
.end method

.method public abstract onGodotMainLoopStarted()V
.end method

.method public abstract onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V
.end method

.method public abstract onGodotSetupCompleted()V
.end method

.method public abstract onNewGodotInstanceRequested([Ljava/lang/String;)I
.end method

.method public abstract signApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
.end method

.method public abstract supportsFeature(Ljava/lang/String;)Z
.end method

.method public abstract verifyApk(Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
.end method
