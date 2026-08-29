.class public abstract Lorg/godotengine/godot/GodotActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "GodotActivity.kt"

# interfaces
.implements Lorg/godotengine/godot/GodotHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/GodotActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGodotActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GodotActivity.kt\norg/godotengine/godot/GodotActivity\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,220:1\n26#2:221\n*S KotlinDebug\n*F\n+ 1 GodotActivity.kt\norg/godotengine/godot/GodotActivity\n*L\n78#1:221\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0010\u0015\n\u0002\u0008\u0006\u0008&\u0018\u0000 62\u00020\u00012\u00020\u0002:\u00016B\u0005\u00a2\u0006\u0002\u0010\u0003J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0015J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\tH\u0014J\"\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00142\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0018H\u0015J\u0008\u0010 \u001a\u00020\u0016H\u0016J\u0012\u0010!\u001a\u00020\u00162\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0015J\u0008\u0010$\u001a\u00020\u0016H\u0014J\u0010\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u0012H\u0016J\u0010\u0010\'\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u0012H\u0016J\u001b\u0010(\u001a\u00020\u00142\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u00060*H\u0016\u00a2\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0018H\u0014J+\u0010.\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00142\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00060*2\u0006\u00100\u001a\u000201H\u0017\u00a2\u0006\u0002\u00102J\u0010\u00103\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u0012H\u0002J\u001a\u00104\u001a\u00020\u00162\u0008\u00105\u001a\u0004\u0018\u00010#2\u0006\u0010\u0017\u001a\u00020\u0018H\u0004R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u00067"
    }
    d2 = {
        "Lorg/godotengine/godot/GodotActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lorg/godotengine/godot/GodotHost;",
        "()V",
        "commandLineParams",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "<set-?>",
        "Lorg/godotengine/godot/GodotFragment;",
        "godotFragment",
        "getGodotFragment",
        "()Lorg/godotengine/godot/GodotFragment;",
        "getActivity",
        "Landroid/app/Activity;",
        "getCommandLine",
        "",
        "getGodot",
        "Lorg/godotengine/godot/Godot;",
        "getGodotAppLayout",
        "",
        "handleStartIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "newLaunch",
        "",
        "initGodotInstance",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onGodotForceQuit",
        "instance",
        "onGodotRestartRequested",
        "onNewGodotInstanceRequested",
        "args",
        "",
        "([Ljava/lang/String;)I",
        "onNewIntent",
        "newIntent",
        "onRequestPermissionsResult",
        "permissions",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "terminateGodotInstance",
        "triggerRebirth",
        "bundle",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/godotengine/godot/GodotActivity$Companion;

.field private static final DEFAULT_WINDOW_ID:I

.field private static final EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

.field private static final EXTRA_NEW_LAUNCH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final commandLineParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private godotFragment:Lorg/godotengine/godot/GodotFragment;


# direct methods
.method public static synthetic $r8$lambda$SSR92MUgU-Z_Guxn9xWbASB9kI4(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotActivity;->onGodotRestartRequested$lambda$4(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WmTgXbG98RH4Yjy-P_dBoLNCOVE(Lorg/godotengine/godot/GodotActivity;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/godotengine/godot/GodotActivity;->triggerRebirth$lambda$0(Lorg/godotengine/godot/GodotActivity;Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWinvlEmUVCFH5S_LyhjY-JXwFo(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotActivity;->onGodotForceQuit$lambda$1(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/GodotActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/GodotActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/GodotActivity;->Companion:Lorg/godotengine/godot/GodotActivity$Companion;

    .line 54
    const-class v0, Lorg/godotengine/godot/GodotActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 57
    const-string v0, "command_line_params"

    sput-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    .line 60
    const-string v0, "new_launch_requested"

    sput-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_NEW_LAUNCH:Ljava/lang/String;

    .line 64
    const/16 v0, 0x298

    sput v0, Lorg/godotengine/godot/GodotActivity;->DEFAULT_WINDOW_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/GodotActivity;->commandLineParams:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public static final synthetic access$getEXTRA_COMMAND_LINE_PARAMS$cp()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getEXTRA_NEW_LAUNCH$cp()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_NEW_LAUNCH:Ljava/lang/String;

    return-object v0
.end method

.method protected static final getEXTRA_COMMAND_LINE_PARAMS()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/godotengine/godot/GodotActivity;->Companion:Lorg/godotengine/godot/GodotActivity$Companion;

    invoke-virtual {v0}, Lorg/godotengine/godot/GodotActivity$Companion;->getEXTRA_COMMAND_LINE_PARAMS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static final getEXTRA_NEW_LAUNCH()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/godotengine/godot/GodotActivity;->Companion:Lorg/godotengine/godot/GodotActivity$Companion;

    invoke-virtual {v0}, Lorg/godotengine/godot/GodotActivity$Companion;->getEXTRA_NEW_LAUNCH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final handleStartIntent(Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "newLaunch"    # Z

    .line 167
    if-nez p2, :cond_0

    .line 168
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_NEW_LAUNCH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 169
    .local v2, "newLaunchRequested":Z
    if-eqz v2, :cond_0

    .line 170
    sget-object v3, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    const-string v4, "New launch requested, restarting.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "putExtra(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .local v0, "restartIntent":Landroid/content/Intent;
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Intent;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 173
    return-void

    .line 176
    .end local v0    # "restartIntent":Landroid/content/Intent;
    .end local v2    # "newLaunchRequested":Z
    :cond_0
    return-void
.end method

.method private static final onGodotForceQuit$lambda$1(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V
    .locals 1
    .param p0, "this$0"    # Lorg/godotengine/godot/GodotActivity;
    .param p1, "$instance"    # Lorg/godotengine/godot/Godot;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p1}, Lorg/godotengine/godot/GodotActivity;->terminateGodotInstance(Lorg/godotengine/godot/Godot;)V

    return-void
.end method

.method private static final onGodotRestartRequested$lambda$4(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V
    .locals 4
    .param p0, "this$0"    # Lorg/godotengine/godot/GodotActivity;
    .param p1, "$instance"    # Lorg/godotengine/godot/Godot;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    if-eqz v0, :cond_1

    .local v0, "it":Lorg/godotengine/godot/GodotFragment;
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-let-GodotActivity$onGodotRestartRequested$1$1":I
    invoke-virtual {v0}, Lorg/godotengine/godot/GodotFragment;->getGodot()Lorg/godotengine/godot/Godot;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 150
    sget-object v2, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    const-string v3, "Restarting Godot instance..."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    .line 153
    :cond_0
    nop

    .line 143
    .end local v0    # "it":Lorg/godotengine/godot/GodotFragment;
    .end local v1    # "$i$a$-let-GodotActivity$onGodotRestartRequested$1$1":I
    nop

    .line 154
    :cond_1
    return-void
.end method

.method private final terminateGodotInstance(Lorg/godotengine/godot/Godot;)V
    .locals 4
    .param p1, "instance"    # Lorg/godotengine/godot/Godot;

    .line 133
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    if-eqz v0, :cond_1

    .local v0, "it":Lorg/godotengine/godot/GodotFragment;
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$a$-let-GodotActivity$terminateGodotInstance$1":I
    invoke-virtual {v0}, Lorg/godotengine/godot/GodotFragment;->getGodot()Lorg/godotengine/godot/Godot;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 135
    sget-object v2, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    const-string v3, "Force quitting Godot instance"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lorg/godotengine/godot/utils/ProcessPhoenix;->forceQuit(Landroid/app/Activity;)V

    .line 138
    :cond_0
    nop

    .line 133
    .end local v0    # "it":Lorg/godotengine/godot/GodotFragment;
    .end local v1    # "$i$a$-let-GodotActivity$terminateGodotInstance$1":I
    nop

    .line 139
    :cond_1
    return-void
.end method

.method private static final triggerRebirth$lambda$0(Lorg/godotengine/godot/GodotActivity;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .param p0, "this$0"    # Lorg/godotengine/godot/GodotActivity;
    .param p1, "$bundle"    # Landroid/os/Bundle;
    .param p2, "$intent"    # Landroid/content/Intent;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;Landroid/os/Bundle;[Landroid/content/Intent;)V

    .line 114
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 204
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getCommandLine()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->commandLineParams:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/godotengine/godot/GodotFragment;->getGodot()Lorg/godotengine/godot/Godot;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getGodotAppLayout()I
    .locals 1

    .line 121
    sget v0, Lorg/godotengine/godot/R$layout;->godot_app_layout:I

    return v0
.end method

.method protected final getGodotFragment()Lorg/godotengine/godot/GodotFragment;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    return-object v0
.end method

.method public synthetic getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotHost$-CC;->$default$getHostPlugins(Lorg/godotengine/godot/GodotHost;Lorg/godotengine/godot/Godot;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method protected initGodotInstance()Lorg/godotengine/godot/GodotFragment;
    .locals 1

    .line 215
    new-instance v0, Lorg/godotengine/godot/GodotFragment;

    invoke-direct {v0}, Lorg/godotengine/godot/GodotFragment;-><init>()V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 180
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 181
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/GodotFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 182
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/godotengine/godot/GodotFragment;->onBackPressed()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 201
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 76
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "params":[Ljava/lang/String;
    sget-object v1, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with parameters "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lorg/godotengine/godot/GodotActivity;->commandLineParams:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 221
    .local v3, "$i$f$emptyArray":I
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    goto :goto_0

    .line 78
    .end local v3    # "$i$f$emptyArray":I
    :cond_0
    move-object v4, v0

    :goto_0
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getGodotAppLayout()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/godotengine/godot/GodotActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "getIntent(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/godotengine/godot/GodotActivity;->handleStartIntent(Landroid/content/Intent;Z)V

    .line 86
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget v3, Lorg/godotengine/godot/R$id;->godot_fragment_container:I

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 87
    .local v2, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v3, v2, Lorg/godotengine/godot/GodotFragment;

    if-eqz v3, :cond_1

    .line 88
    const-string v3, "Reusing existing Godot fragment instance."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    move-object v1, v2

    check-cast v1, Lorg/godotengine/godot/GodotFragment;

    iput-object v1, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    goto :goto_1

    .line 91
    :cond_1
    const-string v3, "Creating new Godot fragment instance."

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->initGodotInstance()Lorg/godotengine/godot/GodotFragment;

    move-result-object v1

    iput-object v1, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 93
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v3, Lorg/godotengine/godot/R$id;->godot_fragment_container:I

    iget-object v4, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 95
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 124
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying GodotActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 126
    return-void
.end method

.method public synthetic onEditorWorkspaceSelected(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotHost$-CC;->$default$onEditorWorkspaceSelected(Lorg/godotengine/godot/GodotHost;Ljava/lang/String;)V

    return-void
.end method

.method public onGodotForceQuit(Lorg/godotengine/godot/Godot;)V
    .locals 1
    .param p1, "instance"    # Lorg/godotengine/godot/Godot;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lorg/godotengine/godot/GodotActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/godotengine/godot/GodotActivity$$ExternalSyntheticLambda2;-><init>(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public synthetic onGodotForceQuit(I)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotHost$-CC;->$default$onGodotForceQuit(Lorg/godotengine/godot/GodotHost;I)Z

    move-result p1

    return p1
.end method

.method public synthetic onGodotMainLoopStarted()V
    .locals 0

    invoke-static {p0}, Lorg/godotengine/godot/GodotHost$-CC;->$default$onGodotMainLoopStarted(Lorg/godotengine/godot/GodotHost;)V

    return-void
.end method

.method public onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V
    .locals 1
    .param p1, "instance"    # Lorg/godotengine/godot/Godot;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lorg/godotengine/godot/GodotActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/godotengine/godot/GodotActivity$$ExternalSyntheticLambda0;-><init>(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    return-void
.end method

.method public synthetic onGodotSetupCompleted()V
    .locals 0

    invoke-static {p0}, Lorg/godotengine/godot/GodotHost$-CC;->$default$onGodotSetupCompleted(Lorg/godotengine/godot/GodotHost;)V

    return-void
.end method

.method public onNewGodotInstanceRequested([Ljava/lang/String;)I
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restarting with parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    new-instance v1, Landroid/content/ComponentName;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 102
    sget-object v1, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "putExtra(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    nop

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/godotengine/godot/GodotActivity;->triggerRebirth(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 105
    sget v1, Lorg/godotengine/godot/GodotActivity;->DEFAULT_WINDOW_ID:I

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "newIntent"    # Landroid/content/Intent;

    const-string v0, "newIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 159
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/GodotActivity;->setIntent(Landroid/content/Intent;)V

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/GodotActivity;->handleStartIntent(Landroid/content/Intent;Z)V

    .line 163
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/GodotFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 187
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/GodotFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 190
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 191
    :pswitch_0
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    const-string v1, "Received permissions request result.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_3

    .line 193
    aget v2, p3, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 194
    .local v2, "permissionGranted":Z
    :goto_1
    sget-object v3, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    aget-object v4, p2, v0

    if-eqz v2, :cond_2

    const-string v5, "granted"

    goto :goto_2

    :cond_2
    const-string v5, "denied"

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v2    # "permissionGranted":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic signApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/godotengine/godot/GodotHost$-CC;->$default$signApk(Lorg/godotengine/godot/GodotHost;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;

    move-result-object p1

    return-object p1
.end method

.method public synthetic supportsFeature(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotHost$-CC;->$default$supportsFeature(Lorg/godotengine/godot/GodotHost;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final triggerRebirth(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getGodot()Lorg/godotengine/godot/Godot;

    move-result-object v0

    .line 111
    .local v0, "godot":Lorg/godotengine/godot/Godot;
    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lorg/godotengine/godot/GodotActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/godotengine/godot/GodotActivity$$ExternalSyntheticLambda1;-><init>(Lorg/godotengine/godot/GodotActivity;Landroid/os/Bundle;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lorg/godotengine/godot/Godot;->destroyAndKillProcess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 116
    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, p1, v2}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;Landroid/os/Bundle;[Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void
.end method

.method public synthetic verifyApk(Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
    .locals 0

    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotHost$-CC;->$default$verifyApk(Lorg/godotengine/godot/GodotHost;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;

    move-result-object p1

    return-object p1
.end method
