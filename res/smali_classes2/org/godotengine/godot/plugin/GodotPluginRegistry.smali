.class public final Lorg/godotengine/godot/plugin/GodotPluginRegistry;
.super Ljava/lang/Object;
.source "GodotPluginRegistry.java"


# static fields
.field private static final GODOT_PLUGIN_V1_NAME_PREFIX:Ljava/lang/String; = "org.godotengine.plugin.v1."

.field private static final GODOT_PLUGIN_V2_NAME_PREFIX:Ljava/lang/String; = "org.godotengine.plugin.v2."

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lorg/godotengine/godot/plugin/GodotPluginRegistry;


# instance fields
.field private final registry:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/godotengine/godot/plugin/GodotPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->registry:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    return-void
.end method

.method public static getPluginRegistry()Lorg/godotengine/godot/plugin/GodotPluginRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 119
    sget-object v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->instance:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    if-eqz v0, :cond_0

    .line 123
    return-object v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugin registry hasn\'t been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initializePluginRegistry(Lorg/godotengine/godot/Godot;Ljava/util/Set;)Lorg/godotengine/godot/plugin/GodotPluginRegistry;
    .locals 1
    .param p0, "godot"    # Lorg/godotengine/godot/Godot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/godotengine/godot/Godot;",
            "Ljava/util/Set<",
            "Lorg/godotengine/godot/plugin/GodotPlugin;",
            ">;)",
            "Lorg/godotengine/godot/plugin/GodotPluginRegistry;"
        }
    .end annotation

    .line 104
    .local p1, "runtimePlugins":Ljava/util/Set;, "Ljava/util/Set<Lorg/godotengine/godot/plugin/GodotPlugin;>;"
    sget-object v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->instance:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    invoke-direct {v0}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;-><init>()V

    sput-object v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->instance:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    .line 106
    invoke-direct {v0, p0, p1}, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->loadPlugins(Lorg/godotengine/godot/Godot;Ljava/util/Set;)V

    .line 109
    :cond_0
    sget-object v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->instance:Lorg/godotengine/godot/plugin/GodotPluginRegistry;

    return-object v0
.end method

.method private loadPlugins(Lorg/godotengine/godot/Godot;Ljava/util/Set;)V
    .locals 16
    .param p1, "godot"    # Lorg/godotengine/godot/Godot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/godotengine/godot/Godot;",
            "Ljava/util/Set<",
            "Lorg/godotengine/godot/plugin/GodotPlugin;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p2, "runtimePlugins":Ljava/util/Set;, "Ljava/util/Set<Lorg/godotengine/godot/plugin/GodotPlugin;>;"
    move-object/from16 v1, p0

    const-string v2, "org.godotengine.plugin.v1."

    const-string v3, "org.godotengine.plugin.v2."

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 130
    .local v4, "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    sget-object v5, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registering runtime plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v5, v1, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->registry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v4    # "plugin":Lorg/godotengine/godot/plugin/GodotPlugin;
    goto :goto_0

    .line 137
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/godotengine/godot/Godot;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v4, v0

    .line 138
    .local v4, "activity":Landroid/app/Activity;
    nop

    .line 139
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 140
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v5, v0

    .line 142
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object v6, v0

    .line 143
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 147
    :cond_1
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 149
    .local v8, "metaDataName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 150
    .local v0, "pluginName":Ljava/lang/String;
    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 151
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_2

    .line 152
    :cond_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 154
    sget-object v9, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Godot v1 plugin are deprecated in Godot 4.2 and higher: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v0

    goto :goto_2

    .line 152
    :cond_3
    move-object v9, v0

    .line 157
    .end local v0    # "pluginName":Ljava/lang/String;
    .local v9, "pluginName":Ljava/lang/String;
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 158
    sget-object v0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Initializing Godot plugin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "pluginHandleClassFullName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v11, :cond_5

    .line 166
    nop

    .line 167
    :try_start_1
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 168
    .local v11, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/godotengine/godot/plugin/GodotPlugin;>;"
    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Lorg/godotengine/godot/Godot;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    .line 169
    invoke-virtual {v11, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 170
    .local v13, "pluginConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/godotengine/godot/plugin/GodotPlugin;>;"
    new-array v12, v12, [Ljava/lang/Object;

    aput-object p1, v12, v15

    invoke-virtual {v13, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/godotengine/godot/plugin/GodotPlugin;

    .line 173
    .local v12, "pluginHandle":Lorg/godotengine/godot/plugin/GodotPlugin;
    invoke-virtual {v12}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 174
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Meta-data plugin name does not match the value returned by the plugin handle: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " =/= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 175
    invoke-virtual {v12}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 174
    invoke-static {v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_4
    iget-object v14, v1, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->registry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Completed initialization for Godot plugin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lorg/godotengine/godot/plugin/GodotPlugin;->getPluginName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    .end local v11    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/godotengine/godot/plugin/GodotPlugin;>;"
    .end local v12    # "pluginHandle":Lorg/godotengine/godot/plugin/GodotPlugin;
    .end local v13    # "pluginConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/godotengine/godot/plugin/GodotPlugin;>;"
    goto :goto_3

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v11, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load Godot plugin "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 183
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid plugin loader class for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    .end local v8    # "metaDataName":Ljava/lang/String;
    .end local v9    # "pluginName":Ljava/lang/String;
    .end local v10    # "pluginHandleClassFullName":Ljava/lang/String;
    :cond_6
    :goto_3
    goto/16 :goto_1

    .line 189
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "metaData":Landroid/os/Bundle;
    :cond_7
    goto :goto_5

    .line 144
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "metaData":Landroid/os/Bundle;
    :cond_8
    :goto_4
    return-void

    .line 187
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "metaData":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->TAG:Ljava/lang/String;

    const-string v3, "Unable load Godot Android plugins from the manifest file."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method


# virtual methods
.method public getAllPlugins()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/godotengine/godot/plugin/GodotPlugin;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->registry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->registry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPlugin(Ljava/lang/String;)Lorg/godotengine/godot/plugin/GodotPlugin;
    .locals 1
    .param p1, "pluginName"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lorg/godotengine/godot/plugin/GodotPluginRegistry;->registry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/plugin/GodotPlugin;

    return-object v0
.end method
