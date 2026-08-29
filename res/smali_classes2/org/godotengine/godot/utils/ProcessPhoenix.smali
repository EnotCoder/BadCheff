.class public final Lorg/godotengine/godot/utils/ProcessPhoenix;
.super Landroid/app/Activity;
.source "ProcessPhoenix.java"


# static fields
.field private static final KEY_MAIN_PROCESS_PID:Ljava/lang/String; = "phoenix_main_process_pid"

.field private static final KEY_RESTART_ACTIVITY_OPTIONS:Ljava/lang/String; = "phoenix_restart_activity_options"

.field private static final KEY_RESTART_INTENTS:Ljava/lang/String; = "phoenix_restart_intents"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static forceQuit(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lorg/godotengine/godot/utils/ProcessPhoenix;->forceQuit(Landroid/app/Activity;I)V

    .line 101
    return-void
.end method

.method public static forceQuit(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pid"    # I

    .line 109
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 111
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 112
    return-void
.end method

.method private static getRestartIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 119
    .local v1, "defaultIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 120
    return-object v1

    .line 123
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to determine default activity for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Does an activity specify the DEFAULT category in its intent filter?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isPhoenixProcess(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 149
    .local v0, "currentPid":I
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 150
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 153
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, ":phoenix"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    const/4 v3, 0x1

    return v3

    .line 156
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 158
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static triggerRebirth(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/godotengine/godot/utils/ProcessPhoenix;->getRestartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public static varargs triggerRebirth(Landroid/content/Context;Landroid/os/Bundle;[Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityOptions"    # Landroid/os/Bundle;
    .param p2, "nextIntents"    # [Landroid/content/Intent;

    .line 80
    array-length v0, p2

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 84
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/godotengine/godot/utils/ProcessPhoenix;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "phoenix_restart_intents"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 89
    const-string v1, "phoenix_main_process_pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string v1, "phoenix_restart_activity_options"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs triggerRebirth(Landroid/content/Context;[Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nextIntents"    # [Landroid/content/Intent;

    .line 70
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;Landroid/os/Bundle;[Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lorg/godotengine/godot/utils/ProcessPhoenix;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v1, "phoenix_restart_intents"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    .local v1, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const-string v2, "phoenix_restart_activity_options"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 135
    .local v2, "activityOptions":Landroid/os/Bundle;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/Intent;

    invoke-virtual {p0, v3, v2}, Lorg/godotengine/godot/utils/ProcessPhoenix;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 136
    const-string v3, "phoenix_main_process_pid"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {p0, v3}, Lorg/godotengine/godot/utils/ProcessPhoenix;->forceQuit(Landroid/app/Activity;I)V

    .line 138
    return-void
.end method
