.class public final synthetic Lorg/godotengine/godot/GodotFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/godotengine/godot/Godot;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/Godot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/GodotFragment$$ExternalSyntheticLambda0;->f$0:Lorg/godotengine/godot/Godot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment$$ExternalSyntheticLambda0;->f$0:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->destroyAndKillProcess()V

    return-void
.end method
