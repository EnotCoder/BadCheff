.class public final synthetic Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/godotengine/godot/variant/Callable;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/variant/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda0;->f$0:Lorg/godotengine/godot/variant/Callable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda0;->f$0:Lorg/godotengine/godot/variant/Callable;

    invoke-static {v0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->$r8$lambda$npUCeS-yL54pVXVxqMCE_xfrOwA(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
