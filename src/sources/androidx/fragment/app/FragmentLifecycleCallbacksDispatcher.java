package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FragmentLifecycleCallbacksDispatcher.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001%B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0014\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0015\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ \u0010\u0016\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0017\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001e\u0010\u0018\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u001a\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u001b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ(\u0010\u001c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u001f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000fJ\u000e\u0010$\u001a\u00020\t2\u0006\u0010!\u001a\u00020\"R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;", "", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "(Landroidx/fragment/app/FragmentManager;)V", "lifecycleCallbacks", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;", "dispatchOnFragmentActivityCreated", "", "f", "Landroidx/fragment/app/Fragment;", "savedInstanceState", "Landroid/os/Bundle;", "onlyRecursive", "", "dispatchOnFragmentAttached", "dispatchOnFragmentCreated", "dispatchOnFragmentDestroyed", "dispatchOnFragmentDetached", "dispatchOnFragmentPaused", "dispatchOnFragmentPreAttached", "dispatchOnFragmentPreCreated", "dispatchOnFragmentResumed", "dispatchOnFragmentSaveInstanceState", "outState", "dispatchOnFragmentStarted", "dispatchOnFragmentStopped", "dispatchOnFragmentViewCreated", "v", "Landroid/view/View;", "dispatchOnFragmentViewDestroyed", "registerFragmentLifecycleCallbacks", "cb", "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;", "recursive", "unregisterFragmentLifecycleCallbacks", "FragmentLifecycleCallbacksHolder", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class FragmentLifecycleCallbacksDispatcher {
    private final FragmentManager fragmentManager;
    private final CopyOnWriteArrayList<FragmentLifecycleCallbacksHolder> lifecycleCallbacks;

    /* JADX INFO: compiled from: FragmentLifecycleCallbacksDispatcher.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;", "", "callback", "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;", "recursive", "", "(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V", "getCallback", "()Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;", "getRecursive", "()Z", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private static final class FragmentLifecycleCallbacksHolder {
        private final FragmentManager.FragmentLifecycleCallbacks callback;
        private final boolean recursive;

        public FragmentLifecycleCallbacksHolder(FragmentManager.FragmentLifecycleCallbacks callback, boolean recursive) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.callback = callback;
            this.recursive = recursive;
        }

        public final FragmentManager.FragmentLifecycleCallbacks getCallback() {
            return this.callback;
        }

        public final boolean getRecursive() {
            return this.recursive;
        }
    }

    public FragmentLifecycleCallbacksDispatcher(FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        this.fragmentManager = fragmentManager;
        this.lifecycleCallbacks = new CopyOnWriteArrayList<>();
    }

    public final void registerFragmentLifecycleCallbacks(FragmentManager.FragmentLifecycleCallbacks cb, boolean recursive) {
        Intrinsics.checkNotNullParameter(cb, "cb");
        this.lifecycleCallbacks.add(new FragmentLifecycleCallbacksHolder(cb, recursive));
    }

    public final void unregisterFragmentLifecycleCallbacks(FragmentManager.FragmentLifecycleCallbacks cb) {
        Intrinsics.checkNotNullParameter(cb, "cb");
        synchronized (this.lifecycleCallbacks) {
            int count = this.lifecycleCallbacks.size();
            for (int i = 0; i < count; i++) {
                if (this.lifecycleCallbacks.get(i).getCallback() == cb) {
                    this.lifecycleCallbacks.remove(i);
                    break;
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void dispatchOnFragmentPreAttached(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Context context = this.fragmentManager.getHost().getContext();
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentPreAttached(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentPreAttached(this.fragmentManager, f, context);
            }
        }
    }

    public final void dispatchOnFragmentAttached(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Context context = this.fragmentManager.getHost().getContext();
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentAttached(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentAttached(this.fragmentManager, f, context);
            }
        }
    }

    public final void dispatchOnFragmentPreCreated(Fragment f, Bundle savedInstanceState, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentPreCreated(f, savedInstanceState, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentPreCreated(this.fragmentManager, f, savedInstanceState);
            }
        }
    }

    public final void dispatchOnFragmentCreated(Fragment f, Bundle savedInstanceState, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentCreated(f, savedInstanceState, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentCreated(this.fragmentManager, f, savedInstanceState);
            }
        }
    }

    public final void dispatchOnFragmentActivityCreated(Fragment f, Bundle savedInstanceState, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentActivityCreated(f, savedInstanceState, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentActivityCreated(this.fragmentManager, f, savedInstanceState);
            }
        }
    }

    public final void dispatchOnFragmentViewCreated(Fragment f, View v, Bundle savedInstanceState, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Intrinsics.checkNotNullParameter(v, "v");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentViewCreated(f, v, savedInstanceState, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentViewCreated(this.fragmentManager, f, v, savedInstanceState);
            }
        }
    }

    public final void dispatchOnFragmentStarted(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentStarted(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentStarted(this.fragmentManager, f);
            }
        }
    }

    public final void dispatchOnFragmentResumed(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentResumed(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentResumed(this.fragmentManager, f);
            }
        }
    }

    public final void dispatchOnFragmentPaused(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentPaused(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentPaused(this.fragmentManager, f);
            }
        }
    }

    public final void dispatchOnFragmentStopped(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentStopped(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentStopped(this.fragmentManager, f);
            }
        }
    }

    public final void dispatchOnFragmentSaveInstanceState(Fragment f, Bundle outState, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Intrinsics.checkNotNullParameter(outState, "outState");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentSaveInstanceState(f, outState, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentSaveInstanceState(this.fragmentManager, f, outState);
            }
        }
    }

    public final void dispatchOnFragmentViewDestroyed(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentViewDestroyed(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentViewDestroyed(this.fragmentManager, f);
            }
        }
    }

    public final void dispatchOnFragmentDestroyed(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentDestroyed(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentDestroyed(this.fragmentManager, f);
            }
        }
    }

    public final void dispatchOnFragmentDetached(Fragment f, boolean onlyRecursive) {
        Intrinsics.checkNotNullParameter(f, "f");
        Fragment parent = this.fragmentManager.getParent();
        if (parent != null) {
            FragmentManager parentManager = parent.getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentManager, "parent.getParentFragmentManager()");
            parentManager.getLifecycleCallbacksDispatcher().dispatchOnFragmentDetached(f, true);
        }
        for (FragmentLifecycleCallbacksHolder holder : this.lifecycleCallbacks) {
            if (!onlyRecursive || holder.getRecursive()) {
                holder.getCallback().onFragmentDetached(this.fragmentManager, f);
            }
        }
    }
}
