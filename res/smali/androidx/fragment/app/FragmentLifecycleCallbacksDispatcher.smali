.class public final Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;
.super Ljava/lang/Object;
.source "FragmentLifecycleCallbacksDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001%B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0015\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0016\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0017\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001e\u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u001a\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ(\u0010\u001c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u001f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000fJ\u000e\u0010$\u001a\u00020\t2\u0006\u0010!\u001a\u00020\"R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;",
        "",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "(Landroidx/fragment/app/FragmentManager;)V",
        "lifecycleCallbacks",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;",
        "dispatchOnFragmentActivityCreated",
        "",
        "f",
        "Landroidx/fragment/app/Fragment;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onlyRecursive",
        "",
        "dispatchOnFragmentAttached",
        "dispatchOnFragmentCreated",
        "dispatchOnFragmentDestroyed",
        "dispatchOnFragmentDetached",
        "dispatchOnFragmentPaused",
        "dispatchOnFragmentPreAttached",
        "dispatchOnFragmentPreCreated",
        "dispatchOnFragmentResumed",
        "dispatchOnFragmentSaveInstanceState",
        "outState",
        "dispatchOnFragmentStarted",
        "dispatchOnFragmentStopped",
        "dispatchOnFragmentViewCreated",
        "v",
        "Landroid/view/View;",
        "dispatchOnFragmentViewDestroyed",
        "registerFragmentLifecycleCallbacks",
        "cb",
        "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;",
        "recursive",
        "unregisterFragmentLifecycleCallbacks",
        "FragmentLifecycleCallbacksHolder",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public final dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 140
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 143
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 145
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 146
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 150
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Z)V
    .locals 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 86
    .local v1, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "parent.getParentFragmentManager()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .local v2, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Z)V

    .line 90
    .end local v2    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 91
    .local v3, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v5, p1, v0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .end local v3    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 95
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 121
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 124
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 126
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 127
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 131
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 252
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 256
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 257
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 261
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 265
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 269
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 270
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 274
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 199
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 203
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 204
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 208
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Z)V
    .locals 6
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 72
    .local v1, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "parent.getParentFragmentManager()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .local v2, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Z)V

    .line 76
    .end local v2    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 77
    .local v3, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v5, p1, v0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .end local v3    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 81
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 103
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 106
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 108
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 109
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 113
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 186
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 190
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 191
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 195
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 225
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 228
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 230
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 231
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 235
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 173
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 177
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 178
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 182
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 212
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 216
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 217
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 221
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 159
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, p3, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 164
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 165
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p4, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2, p3}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 169
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 239
    .local v0, "parent":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "parent.getParentFragmentManager()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .local v1, "parentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 243
    .end local v1    # "parentManager":Landroidx/fragment/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 244
    .local v2, "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    :cond_2
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .end local v2    # "holder":Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 248
    :cond_3
    return-void
.end method

.method public final registerFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 2
    .param p1, "cb"    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-direct {v1, p1, p2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public final unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 5
    .param p1, "cb"    # Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-synchronized-FragmentLifecycleCallbacksDispatcher$unregisterFragmentLifecycleCallbacks$1":I
    const/4 v2, 0x0

    .line 58
    .local v2, "i":I
    :try_start_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 59
    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 60
    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 61
    iget-object v4, p0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    :goto_1
    nop

    .end local v1    # "$i$a$-synchronized-FragmentLifecycleCallbacksDispatcher$unregisterFragmentLifecycleCallbacks$1":I
    .end local v2    # "i":I
    .end local v3    # "count":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    .line 67
    return-void

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
