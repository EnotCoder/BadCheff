.class public final synthetic Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/godotengine/godot/variant/Callable;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/variant/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda1;->f$0:Lorg/godotengine/godot/variant/Callable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda1;->f$0:Lorg/godotengine/godot/variant/Callable;

    invoke-static {v0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->$r8$lambda$wJHwxVOCuJn4S-TtMw9-96VoBpE(Lorg/godotengine/godot/variant/Callable;)V

    return-void
.end method
