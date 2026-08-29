.class public abstract Lorg/godotengine/godot/plugin/GodotPlugin;
.super Ljava/lang/Object;
.source "GodotPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final godot:Lorg/godotengine/godot/Godot;

.field private final registeredSignals:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/godotengine/godot/plugin/SignalInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-class v0, Lorg/godotengine/godot/plugin/GodotPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/plugin/GodotPlugin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/Godot;)V
    .locals 1
    .param p1, "godot"    # Lorg/godotengine/godot/Godot;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/plugin/GodotPlugin;->registeredSignals:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    iput-object p1, p0, Lorg/godotengine/godot/plugin/GodotPlugin;->godot:Lorg/godotengine/godot/Godot;

    .line 95
    return-void
.end method

.method public static varargs emitSignal(Lorg/godotengine/godot/Godot;Ljava/lang/String;Lorg/godotengine/godot/plugin/SignalInfo;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "godot"    # Lorg/godotengine/godot/Godot;
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "signalInfo"    # Lorg/godotengine/godot/plugin/SignalInfo;
    .param p3, "signalArgs"    # [Ljava/lang/Object;

    .line 376
    if-eqz p2, :cond_3

    .line 381
    :try_start_0
    invoke-virtual {p2}, Lorg/godotengine/godot/plugin/SignalInfo;->getParamTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 382
    .local v0, "signalParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, p3

    array-length v2, v0

    if-ne v1, v2, :cond_2

    .line 388
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 389
    aget-object v2, v0, v1

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type for argument #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Should be of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    .line 391
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "godot":Lorg/godotengine/godot/Godot;
    .end local p1    # "pluginName":Ljava/lang/String;
    .end local p2    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    .end local p3    # "signalArgs":[Ljava/lang/Object;
    throw v2

    .line 395
    .end local v1    # "i":I
    .restart local p0    # "godot":Lorg/godotengine/godot/Godot;
    .restart local p1    # "pluginName":Ljava/lang/String;
    .restart local p2    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    .restart local p3    # "signalArgs":[Ljava/lang/Object;
    :cond_1
    new-instance v1, Lorg/godotengine/godot/plugin/GodotPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lorg/godotengine/godot/plugin/GodotPlugin$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lorg/godotengine/godot/plugin/SignalInfo;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/godotengine/godot/Godot;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 402
    .end local v0    # "signalParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_2

    .line 383
    .restart local v0    # "signalParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments count. Should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  but is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "godot":Lorg/godotengine/godot/Godot;
    .end local p1    # "pluginName":Ljava/lang/String;
    .end local p2    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    .end local p3    # "signalArgs":[Ljava/lang/Object;
    throw v1

    .line 397
    .end local v0    # "signalParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local p0    # "godot":Lorg/godotengine/godot/Godot;
    .restart local p1    # "pluginName":Ljava/lang/String;
    .restart local p2    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    .restart local p3    # "signalArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 377
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Signal must be non null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "godot":Lorg/godotengine/godot/Godot;
    .end local p1    # "pluginName":Ljava/lang/String;
    .end local p2    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    .end local p3    # "signalArgs":[Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    .restart local p0    # "godot":Lorg/godotengine/godot/Godot;
    .restart local p1    # "pluginName":Ljava/lang/String;
    .restart local p2    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    .restart local p3    # "signalArgs":[Ljava/lang/Object;
    :goto_1
    sget-object v1, Lorg/godotengine/godot/plugin/GodotPlugin;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    sget-boolean v1, Lorg/godotengine/godot/BuildConfig;->DEBUG:Z

    if-nez v1, :cond_4

    .line 403
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :goto_2
    return-void

    .line 400
    .restart local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_4
    throw v0
.end method

.method static synthetic lambda$emitSignal$0(Ljava/lang/String;Lorg/godotengine/godot/plugin/SignalInfo;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "pluginName"    # Ljava/lang/String;
    .param p1, "signalInfo"    # Lorg/godotengine/godot/plugin/SignalInfo;
    .param p2, "signalArgs"    # [Ljava/lang/Object;

    .line 395
    invoke-virtual {p1}, Lorg/godotengine/godot/plugin/SignalInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/godotengine/godot/plugin/GodotPlugin;->nativeEmitSignal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static native nativeEmitSignal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method private static native nativeRegisterMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native nativeRegisterSignal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native nativeRegisterSingleton(Ljava/lang/String;Ljava/lang/Object;)Z
.end method


# virtual methods
.method protected varargs emitSignal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "signalName"    # Ljava/lang/String;
    .param p2, "signalArgs"    # [Ljava/lang/Object;

    .line 353
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/plugin/GodotPlugin;->registeredSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/plugin/SignalInfo;

    .line 354
    .local v0, "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->getGodot()Lorg/godotengine/godot/Godot;

    move-result-object v1

    invoke-virtual {p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p2}, Lorg/godotengine/godot/plugin/GodotPlugin;->emitSignal(Lorg/godotengine/godot/Godot;Ljava/lang/String;Lorg/godotengine/godot/plugin/SignalInfo;[Ljava/lang/Object;)V

    .line 364
    .end local v0    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    goto :goto_0

    .line 355
    .restart local v0    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not registered for this plugin."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "signalName":Ljava/lang/String;
    .end local p2    # "signalArgs":[Ljava/lang/Object;
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v0    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    .restart local p1    # "signalName":Ljava/lang/String;
    .restart local p2    # "signalArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/godotengine/godot/plugin/GodotPlugin;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    sget-boolean v1, Lorg/godotengine/godot/BuildConfig;->DEBUG:Z

    if-nez v1, :cond_1

    .line 365
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 362
    .restart local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :cond_1
    throw v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/godotengine/godot/plugin/GodotPlugin;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/godotengine/godot/plugin/GodotPlugin;->godot:Lorg/godotengine/godot/Godot;

    return-object v0
.end method

.method public getPluginGDExtensionLibrariesPaths()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPluginMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPluginName()Ljava/lang/String;
.end method

.method public getPluginSignals()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/godotengine/godot/plugin/SignalInfo;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onGLDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 236
    return-void
.end method

.method public onGLSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 242
    return-void
.end method

.method public onGLSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 248
    return-void
.end method

.method public onGodotMainLoopStarted()V
    .locals 0

    .line 230
    return-void
.end method

.method public onGodotSetupCompleted()V
    .locals 0

    .line 223
    return-void
.end method

.method public onMainActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 190
    return-void
.end method

.method public onMainBackPressed()Z
    .locals 1

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public onMainCreate(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMainDestroy()V
    .locals 0

    .line 211
    return-void
.end method

.method public onMainPause()V
    .locals 0

    .line 201
    return-void
.end method

.method public onMainRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 196
    return-void
.end method

.method public onMainResume()V
    .locals 0

    .line 206
    return-void
.end method

.method public final onRegisterPluginWithGodotNative()V
    .locals 14

    .line 118
    invoke-virtual {p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "pluginName":Ljava/lang/String;
    invoke-static {v0, p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->nativeRegisterSingleton(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginMethods()Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "pluginMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v2, "filteredMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 128
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 129
    .local v4, "methods":[Ljava/lang/reflect/Method;
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    .line 131
    .local v8, "method":Ljava/lang/reflect/Method;
    const-class v9, Lorg/godotengine/godot/plugin/UsedByGodot;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 132
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 136
    .local v10, "methodName":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 137
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_2

    .line 140
    .end local v10    # "methodName":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 129
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 144
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 145
    .local v7, "method":Ljava/lang/reflect/Method;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v8, "ptr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 148
    .local v9, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v9

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    .line 149
    .local v12, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v12    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 152
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 153
    .local v10, "pt":[Ljava/lang/String;
    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 155
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v11, v12, v10}, Lorg/godotengine/godot/plugin/GodotPlugin;->nativeRegisterMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "ptr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v10    # "pt":[Ljava/lang/String;
    goto :goto_3

    .line 158
    :cond_6
    invoke-virtual {p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginSignals()Ljava/util/Set;

    move-result-object v5

    .line 161
    .local v5, "pluginSignals":Ljava/util/Set;, "Ljava/util/Set<Lorg/godotengine/godot/plugin/SignalInfo;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/godotengine/godot/plugin/SignalInfo;

    .line 162
    .local v7, "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    invoke-virtual {v7}, Lorg/godotengine/godot/plugin/SignalInfo;->getName()Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "signalName":Ljava/lang/String;
    invoke-virtual {v7}, Lorg/godotengine/godot/plugin/SignalInfo;->getParamTypesNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lorg/godotengine/godot/plugin/GodotPlugin;->nativeRegisterSignal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    iget-object v9, p0, Lorg/godotengine/godot/plugin/GodotPlugin;->registeredSignals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v7    # "signalInfo":Lorg/godotengine/godot/plugin/SignalInfo;
    .end local v8    # "signalName":Ljava/lang/String;
    goto :goto_5

    .line 166
    :cond_7
    return-void
.end method

.method public onVkDrawFrame()V
    .locals 0

    .line 254
    return-void
.end method

.method public onVkSurfaceChanged(Landroid/view/Surface;II)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 260
    return-void
.end method

.method public onVkSurfaceCreated(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .line 266
    return-void
.end method

.method protected runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 342
    iget-object v0, p0, Lorg/godotengine/godot/plugin/GodotPlugin;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/Godot;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 333
    iget-object v0, p0, Lorg/godotengine/godot/plugin/GodotPlugin;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/Godot;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public shouldBeOnTop()Z
    .locals 1

    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureTag"    # Ljava/lang/String;

    .line 322
    const/4 v0, 0x0

    return v0
.end method
