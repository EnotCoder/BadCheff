.class public abstract Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    return-void
.end method

.method public onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;

    .line 334
    return-void
.end method

.method public onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 358
    return-void
.end method

.method public onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;

    .line 454
    return-void
.end method

.method public onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;

    .line 463
    return-void
.end method

.method public onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;

    .line 416
    return-void
.end method

.method public onFragmentPreAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;
    .param p3, "context"    # Landroid/content/Context;

    .line 323
    return-void
.end method

.method public onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 346
    return-void
.end method

.method public onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;

    .line 407
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;
    .param p3, "outState"    # Landroid/os/Bundle;

    .line 436
    return-void
.end method

.method public onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;

    .line 398
    return-void
.end method

.method public onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;

    .line 425
    return-void
.end method

.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;
    .param p3, "v"    # Landroid/view/View;
    .param p4, "savedInstanceState"    # Landroid/os/Bundle;

    .line 389
    return-void
.end method

.method public onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Landroidx/fragment/app/Fragment;

    .line 445
    return-void
.end method
