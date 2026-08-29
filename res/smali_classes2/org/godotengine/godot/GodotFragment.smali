.class public Lorg/godotengine/godot/GodotFragment;
.super Landroidx/fragment/app/Fragment;
.source "GodotFragment.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;
.implements Lorg/godotengine/godot/GodotHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/GodotFragment$ResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCurrentIntent:Landroid/content/Intent;


# instance fields
.field private godot:Lorg/godotengine/godot/Godot;

.field private godotContainerLayout:Landroid/widget/FrameLayout;

.field private mAverageSpeed:Landroid/widget/TextView;

.field private mCellMessage:Landroid/view/View;

.field private mDashboard:Landroid/view/View;

.field private mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private mPB:Landroid/widget/ProgressBar;

.field private mPauseButton:Landroid/widget/Button;

.field private mProgressFraction:Landroid/widget/TextView;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mState:I

.field private mStatePaused:Z

.field private mStatusText:Landroid/widget/TextView;

.field private mTimeRemaining:Landroid/widget/TextView;

.field private mWiFiSettingsButton:Landroid/widget/Button;

.field private parentHost:Lorg/godotengine/godot/GodotHost;

.field public resultCallback:Lorg/godotengine/godot/GodotFragment$ResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lorg/godotengine/godot/GodotFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/GodotFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static getCurrentIntent()Landroid/content/Intent;
    .locals 1

    .line 109
    sget-object v0, Lorg/godotengine/godot/GodotFragment;->mCurrentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private performEngineInitialization()V
    .locals 7

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onCreate(Lorg/godotengine/godot/GodotHost;)V

    .line 205
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onInitNativeLayer(Lorg/godotengine/godot/GodotHost;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onInitRenderView(Lorg/godotengine/godot/GodotHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    .line 210
    if-eqz v0, :cond_0

    .line 249
    goto/16 :goto_2

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to initialize engine render view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to initialize engine native layer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 221
    .local v1, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v2, "notifierIntent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v3, v4, :cond_2

    .line 226
    const/high16 v3, 0xc000000

    invoke-static {v1, v5, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 229
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    const/high16 v3, 0x8000000

    invoke-static {v1, v5, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 235
    .restart local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lorg/godotengine/godot/GodotDownloaderService;

    invoke-static {v4, v3, v5}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v4

    .line 237
    .local v4, "startResult":I
    if-eqz v4, :cond_3

    .line 240
    const-class v5, Lorg/godotengine/godot/GodotDownloaderService;

    invoke-static {p0, v5}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v5

    iput-object v5, p0, Lorg/godotengine/godot/GodotFragment;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    .line 241
    return-void

    .line 245
    :cond_3
    invoke-direct {p0}, Lorg/godotengine/godot/GodotFragment;->performEngineInitialization()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    goto :goto_3

    .line 246
    .end local v4    # "startResult":I
    :catch_1
    move-exception v4

    .line 247
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lorg/godotengine/godot/GodotFragment;->TAG:Ljava/lang/String;

    const-string v6, "Unable to start download service"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 213
    .end local v0    # "ignored":Ljava/lang/IllegalArgumentException;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "notifierIntent":Landroid/content/Intent;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lorg/godotengine/godot/GodotFragment;->TAG:Ljava/lang/String;

    const-string v2, "Engine initialization failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    sget v1, Lorg/godotengine/godot/R$string;->error_engine_setup_message:I

    invoke-virtual {p0, v1}, Lorg/godotengine/godot/GodotFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    nop

    .line 218
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v2, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    sget v3, Lorg/godotengine/godot/R$string;->text_error_title:I

    invoke-virtual {p0, v3}, Lorg/godotengine/godot/GodotFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/godotengine/godot/GodotFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lorg/godotengine/godot/GodotFragment$$ExternalSyntheticLambda0;-><init>(Lorg/godotengine/godot/Godot;)V

    invoke-virtual {v2, v1, v3, v5}, Lorg/godotengine/godot/Godot;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 249
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "errorMessage":Ljava/lang/String;
    :goto_2
    nop

    .line 250
    :goto_3
    return-void
.end method

.method private setButtonPausedState(Z)V
    .locals 2
    .param p1, "paused"    # Z

    .line 120
    iput-boolean p1, p0, Lorg/godotengine/godot/GodotFragment;->mStatePaused:Z

    .line 121
    if-eqz p1, :cond_0

    sget v0, Lorg/godotengine/godot/R$string;->text_button_resume:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/godotengine/godot/R$string;->text_button_pause:I

    .line 122
    .local v0, "stringResourceID":I
    :goto_0
    iget-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mPauseButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 123
    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "newState"    # I

    .line 113
    iget v0, p0, Lorg/godotengine/godot/GodotFragment;->mState:I

    if-eq v0, p1, :cond_0

    .line 114
    iput p1, p0, Lorg/godotengine/godot/GodotFragment;->mState:I

    .line 115
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mStatusText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

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

    .line 434
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->getCommandLine()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    return-object v0
.end method

.method public getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;
    .locals 1
    .param p1, "engine"    # Lorg/godotengine/godot/Godot;
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

    .line 483
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 484
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 486
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 161
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->resultCallback:Lorg/godotengine/godot/GodotFragment$ResultCallback;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1, p2, p3}, Lorg/godotengine/godot/GodotFragment$ResultCallback;->callback(IILandroid/content/Intent;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/godotengine/godot/GodotFragment;->resultCallback:Lorg/godotengine/godot/GodotFragment$ResultCallback;

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/Godot;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/GodotHost;

    iput-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/GodotHost;

    iput-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 143
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->onBackPressed()V

    .line 335
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 154
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 155
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/Godot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 185
    const-string v0, "Startup"

    const-string v1, "GodotFragment::onCreate"

    invoke-static {v0, v1}, Lorg/godotengine/godot/utils/BenchmarkUtils;->beginBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 189
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    sput-object v3, Lorg/godotengine/godot/GodotFragment;->mCurrentIntent:Landroid/content/Intent;

    .line 191
    iget-object v3, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v3, :cond_0

    .line 192
    invoke-interface {v3}, Lorg/godotengine/godot/GodotHost;->getGodot()Lorg/godotengine/godot/Godot;

    move-result-object v3

    iput-object v3, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 194
    :cond_0
    iget-object v3, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    if-nez v3, :cond_1

    .line 195
    new-instance v3, Lorg/godotengine/godot/Godot;

    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/godotengine/godot/Godot;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    .line 197
    :cond_1
    invoke-direct {p0}, Lorg/godotengine/godot/GodotFragment;->performEngineInitialization()V

    .line 198
    invoke-static {v0, v1}, Lorg/godotengine/godot/utils/BenchmarkUtils;->endBenchmarkMeasure(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "icicle"    # Landroid/os/Bundle;

    .line 254
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 255
    sget v0, Lorg/godotengine/godot/R$layout;->downloading_expansion:I

    .line 256
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, "downloadingExpansionView":Landroid/view/View;
    sget v1, Lorg/godotengine/godot/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mPB:Landroid/widget/ProgressBar;

    .line 258
    sget v1, Lorg/godotengine/godot/R$id;->statusText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mStatusText:Landroid/widget/TextView;

    .line 259
    sget v1, Lorg/godotengine/godot/R$id;->progressAsFraction:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mProgressFraction:Landroid/widget/TextView;

    .line 260
    sget v1, Lorg/godotengine/godot/R$id;->progressAsPercentage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mProgressPercent:Landroid/widget/TextView;

    .line 261
    sget v1, Lorg/godotengine/godot/R$id;->progressAverageSpeed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mAverageSpeed:Landroid/widget/TextView;

    .line 262
    sget v1, Lorg/godotengine/godot/R$id;->progressTimeRemaining:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mTimeRemaining:Landroid/widget/TextView;

    .line 263
    sget v1, Lorg/godotengine/godot/R$id;->downloaderDashboard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mDashboard:Landroid/view/View;

    .line 264
    sget v1, Lorg/godotengine/godot/R$id;->approveCellular:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mCellMessage:Landroid/view/View;

    .line 265
    sget v1, Lorg/godotengine/godot/R$id;->pauseButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mPauseButton:Landroid/widget/Button;

    .line 266
    sget v1, Lorg/godotengine/godot/R$id;->wifiSettingsButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mWiFiSettingsButton:Landroid/widget/Button;

    .line 268
    return-object v0

    .line 271
    .end local v0    # "downloadingExpansionView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godotContainerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onDestroy(Lorg/godotengine/godot/GodotHost;)V

    .line 277
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 278
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    .line 149
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 8
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .line 419
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mAverageSpeed:Landroid/widget/TextView;

    sget v1, Lorg/godotengine/godot/R$string;->kilobytes_per_second:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    .line 420
    invoke-static {v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSpeedString(F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 419
    invoke-virtual {p0, v1, v3}, Lorg/godotengine/godot/GodotFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mTimeRemaining:Landroid/widget/TextView;

    sget v1, Lorg/godotengine/godot/R$string;->time_remaining:I

    new-array v3, v2, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    .line 422
    invoke-static {v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 421
    invoke-virtual {p0, v1, v3}, Lorg/godotengine/godot/GodotFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mPB:Landroid/widget/ProgressBar;

    iget-wide v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    const/16 v1, 0x8

    shr-long/2addr v3, v1

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 425
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mPB:Landroid/widget/ProgressBar;

    iget-wide v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    shr-long/2addr v3, v1

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 426
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mProgressPercent:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    const-wide/16 v6, 0x64

    mul-long v3, v3, v6

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%d %%"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mProgressFraction:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    iget-wide v3, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 8
    .param p1, "newState"    # I

    .line 344
    invoke-direct {p0, p1}, Lorg/godotengine/godot/GodotFragment;->setState(I)V

    .line 345
    const/4 v0, 0x1

    .line 346
    .local v0, "showDashboard":Z
    const/4 v1, 0x0

    .line 349
    .local v1, "showCellMessage":Z
    packed-switch p1, :pswitch_data_0

    .line 400
    :pswitch_0
    const/4 v2, 0x1

    .line 401
    .local v2, "paused":Z
    const/4 v3, 0x1

    .line 402
    .local v3, "indeterminate":Z
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    .end local v2    # "paused":Z
    .end local v3    # "indeterminate":Z
    :pswitch_1
    const/4 v2, 0x1

    .line 373
    .restart local v2    # "paused":Z
    const/4 v0, 0x0

    .line 374
    const/4 v3, 0x0

    .line 375
    .restart local v3    # "indeterminate":Z
    goto :goto_0

    .line 390
    .end local v2    # "paused":Z
    .end local v3    # "indeterminate":Z
    :pswitch_2
    const/4 v2, 0x1

    .line 391
    .restart local v2    # "paused":Z
    const/4 v3, 0x0

    .line 392
    .restart local v3    # "indeterminate":Z
    goto :goto_0

    .line 378
    .end local v2    # "paused":Z
    .end local v3    # "indeterminate":Z
    :pswitch_3
    const/4 v0, 0x0

    .line 379
    const/4 v2, 0x1

    .line 380
    .restart local v2    # "paused":Z
    const/4 v3, 0x0

    .line 381
    .restart local v3    # "indeterminate":Z
    const/4 v1, 0x1

    .line 382
    goto :goto_0

    .line 385
    .end local v2    # "paused":Z
    .end local v3    # "indeterminate":Z
    :pswitch_4
    const/4 v2, 0x1

    .line 386
    .restart local v2    # "paused":Z
    const/4 v3, 0x0

    .line 387
    .restart local v3    # "indeterminate":Z
    goto :goto_0

    .line 394
    .end local v2    # "paused":Z
    .end local v3    # "indeterminate":Z
    :pswitch_5
    const/4 v0, 0x0

    .line 395
    const/4 v2, 0x0

    .line 396
    .restart local v2    # "paused":Z
    const/4 v3, 0x0

    .line 397
    .restart local v3    # "indeterminate":Z
    invoke-direct {p0}, Lorg/godotengine/godot/GodotFragment;->performEngineInitialization()V

    .line 398
    return-void

    .line 363
    .end local v2    # "paused":Z
    .end local v3    # "indeterminate":Z
    :pswitch_6
    const/4 v2, 0x0

    .line 364
    .restart local v2    # "paused":Z
    const/4 v0, 0x1

    .line 365
    const/4 v3, 0x0

    .line 366
    .restart local v3    # "indeterminate":Z
    goto :goto_0

    .line 358
    .end local v2    # "paused":Z
    .end local v3    # "indeterminate":Z
    :pswitch_7
    const/4 v0, 0x1

    .line 359
    const/4 v2, 0x0

    .line 360
    .restart local v2    # "paused":Z
    const/4 v3, 0x1

    .line 361
    .restart local v3    # "indeterminate":Z
    goto :goto_0

    .line 353
    .end local v2    # "paused":Z
    .end local v3    # "indeterminate":Z
    :pswitch_8
    const/4 v2, 0x0

    .line 354
    .restart local v2    # "paused":Z
    const/4 v3, 0x1

    .line 355
    .restart local v3    # "indeterminate":Z
    nop

    .line 404
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/16 v6, 0x8

    .line 405
    .local v6, "newDashboardVisibility":I
    :goto_1
    iget-object v7, p0, Lorg/godotengine/godot/GodotFragment;->mDashboard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 406
    iget-object v7, p0, Lorg/godotengine/godot/GodotFragment;->mDashboard:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 408
    :cond_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    .line 409
    .local v4, "cellMessageVisibility":I
    :goto_2
    iget-object v5, p0, Lorg/godotengine/godot/GodotFragment;->mCellMessage:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 410
    iget-object v5, p0, Lorg/godotengine/godot/GodotFragment;->mCellMessage:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 413
    :cond_3
    iget-object v5, p0, Lorg/godotengine/godot/GodotFragment;->mPB:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 414
    invoke-direct {p0, v2}, Lorg/godotengine/godot/GodotFragment;->setButtonPausedState(Z)V

    .line 415
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onEditorWorkspaceSelected(Ljava/lang/String;)V
    .locals 1
    .param p1, "workspace"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onEditorWorkspaceSelected(Ljava/lang/String;)V

    .line 518
    :cond_0
    return-void
.end method

.method public onGodotForceQuit(Lorg/godotengine/godot/Godot;)V
    .locals 1
    .param p1, "instance"    # Lorg/godotengine/godot/Godot;

    .line 455
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onGodotForceQuit(Lorg/godotengine/godot/Godot;)V

    .line 458
    :cond_0
    return-void
.end method

.method public onGodotForceQuit(I)Z
    .locals 1
    .param p1, "godotInstanceId"    # I

    .line 462
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onGodotForceQuit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onGodotMainLoopStarted()V
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->onGodotMainLoopStarted()V

    .line 451
    :cond_0
    return-void
.end method

.method public onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V
    .locals 1
    .param p1, "instance"    # Lorg/godotengine/godot/Godot;

    .line 467
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V

    .line 470
    :cond_0
    return-void
.end method

.method public onGodotSetupCompleted()V
    .locals 1

    .line 440
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0}, Lorg/godotengine/godot/GodotHost;->onGodotSetupCompleted()V

    .line 443
    :cond_0
    return-void
.end method

.method public onNewGodotInstanceRequested([Ljava/lang/String;)I
    .locals 1
    .param p1, "args"    # [Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->onNewGodotInstanceRequested([Ljava/lang/String;)I

    move-result v0

    return v0

    .line 477
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 105
    sput-object p1, Lorg/godotengine/godot/GodotFragment;->mCurrentIntent:Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 282
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 284
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 288
    :cond_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onPause(Lorg/godotengine/godot/GodotHost;)V

    .line 292
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 173
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 174
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/Godot;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 175
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 322
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 323
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 327
    :cond_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onResume(Lorg/godotengine/godot/GodotHost;)V

    .line 331
    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Messenger;

    .line 179
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    .line 180
    .local v0, "remoteService":Lcom/google/android/vending/expansion/downloader/IDownloaderService;
    iget-object v1, p0, Lorg/godotengine/godot/GodotFragment;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    .line 181
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 309
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 310
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    .line 314
    :cond_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onStart(Lorg/godotengine/godot/GodotHost;)V

    .line 318
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 296
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 297
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->mDownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    .line 301
    :cond_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot;->onStop(Lorg/godotengine/godot/GodotHost;)V

    .line 305
    return-void
.end method

.method public signApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
    .locals 6
    .param p1, "inputPath"    # Ljava/lang/String;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "keystorePath"    # Ljava/lang/String;
    .param p4, "keystoreUser"    # Ljava/lang/String;
    .param p5, "keystorePassword"    # Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 492
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/godotengine/godot/GodotHost;->signApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/godotengine/godot/error/Error;

    move-result-object v0

    return-object v0

    .line 494
    :cond_0
    sget-object v0, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    return-object v0
.end method

.method public supportsFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureTag"    # Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 508
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->supportsFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 510
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public verifyApk(Ljava/lang/String;)Lorg/godotengine/godot/error/Error;
    .locals 1
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lorg/godotengine/godot/GodotFragment;->parentHost:Lorg/godotengine/godot/GodotHost;

    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v0, p1}, Lorg/godotengine/godot/GodotHost;->verifyApk(Ljava/lang/String;)Lorg/godotengine/godot/error/Error;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    sget-object v0, Lorg/godotengine/godot/error/Error;->ERR_UNAVAILABLE:Lorg/godotengine/godot/error/Error;

    return-object v0
.end method
