.class public final Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;
.super Lorg/godotengine/godot/plugin/GodotPlugin;
.source "AndroidRuntimePlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0007J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0015J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;",
        "Lorg/godotengine/godot/plugin/GodotPlugin;",
        "godot",
        "Lorg/godotengine/godot/Godot;",
        "(Lorg/godotengine/godot/Godot;)V",
        "createCallableFromGodotCallable",
        "Ljava/util/concurrent/Callable;",
        "",
        "godotCallable",
        "Lorg/godotengine/godot/variant/Callable;",
        "createRunnableFromGodotCallable",
        "Ljava/lang/Runnable;",
        "getActivity",
        "Landroid/app/Activity;",
        "getApplicationContext",
        "Landroid/content/Context;",
        "getPluginName",
        "",
        "lib_templateDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$npUCeS-yL54pVXVxqMCE_xfrOwA(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->createCallableFromGodotCallable$lambda$1(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wJHwxVOCuJn4S-TtMw9-96VoBpE(Lorg/godotengine/godot/variant/Callable;)V
    .locals 0

    invoke-static {p0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->createRunnableFromGodotCallable$lambda$0(Lorg/godotengine/godot/variant/Callable;)V

    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/Godot;)V
    .locals 1
    .param p1, "godot"    # Lorg/godotengine/godot/Godot;

    const-string v0, "godot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lorg/godotengine/godot/plugin/GodotPlugin;-><init>(Lorg/godotengine/godot/Godot;)V

    return-void
.end method

.method private static final createCallableFromGodotCallable$lambda$1(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;
    .locals 1
    .param p0, "$godotCallable"    # Lorg/godotengine/godot/variant/Callable;

    const-string v0, "$godotCallable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/variant/Callable;->call$lib_templateDebug([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final createRunnableFromGodotCallable$lambda$0(Lorg/godotengine/godot/variant/Callable;)V
    .locals 1
    .param p0, "$godotCallable"    # Lorg/godotengine/godot/variant/Callable;

    const-string v0, "$godotCallable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/variant/Callable;->call$lib_templateDebug([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createCallableFromGodotCallable(Lorg/godotengine/godot/variant/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p1, "godotCallable"    # Lorg/godotengine/godot/variant/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/godotengine/godot/variant/Callable;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    const-string v0, "godotCallable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda0;-><init>(Lorg/godotengine/godot/variant/Callable;)V

    return-object v0
.end method

.method public final createRunnableFromGodotCallable(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "godotCallable"    # Lorg/godotengine/godot/variant/Callable;
    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    const-string v0, "godotCallable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$$ExternalSyntheticLambda1;-><init>(Lorg/godotengine/godot/variant/Callable;)V

    return-object v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    .line 84
    invoke-super {p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "AndroidRuntime"

    return-object v0
.end method
