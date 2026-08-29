package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.activity.BackEventCompat;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: SpecialEffectsController.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\b \u0018\u0000 52\u00020\u0001:\u00045678B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\fH\u0000¢\u0006\u0002\b\u0011J#\u0010\u0012\u001a\u00020\u000f2\u0011\u0010\u0013\u001a\r\u0012\t\u0012\u00070\f¢\u0006\u0002\b\u00150\u00142\u0006\u0010\u0016\u001a\u00020\bH&J \u0010\u0017\u001a\u00020\u000f2\u0011\u0010\u0013\u001a\r\u0012\t\u0012\u00070\f¢\u0006\u0002\b\u00150\u0014H\u0010¢\u0006\u0002\b\u0018J\u0006\u0010\u0019\u001a\u00020\u000fJ \u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0016\u0010!\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010#\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010$\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010%\u001a\u00020\u000fJ\u0012\u0010&\u001a\u0004\u0018\u00010\f2\u0006\u0010'\u001a\u00020(H\u0002J\u0012\u0010)\u001a\u0004\u0018\u00010\f2\u0006\u0010'\u001a\u00020(H\u0002J\u0006\u0010*\u001a\u00020\u000fJ\u0006\u0010+\u001a\u00020\u000fJ\u0010\u0010,\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010-\u001a\u00020\bJ\u0006\u0010.\u001a\u00020\u000fJ\u000e\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u000201J\u001b\u00102\u001a\u00020\u000f2\u0011\u0010\u0013\u001a\r\u0012\t\u0012\u00070\f¢\u0006\u0002\b\u00150\u0014H\u0002J\b\u00103\u001a\u00020\u000fH\u0002J\u000e\u00104\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00069"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController;", "", "container", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "getContainer", "()Landroid/view/ViewGroup;", "isContainerPostponed", "", "operationDirectionIsPop", "pendingOperations", "", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "runningOperations", "applyContainerChangesToOperation", "", "operation", "applyContainerChangesToOperation$fragment_release", "collectEffects", "operations", "", "Lkotlin/jvm/JvmSuppressWildcards;", "isPop", "commitEffects", "commitEffects$fragment_release", "completeBack", "enqueue", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "lifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "fragmentStateManager", "Landroidx/fragment/app/FragmentStateManager;", "enqueueAdd", "enqueueHide", "enqueueRemove", "enqueueShow", "executePendingOperations", "findPendingOperation", "fragment", "Landroidx/fragment/app/Fragment;", "findRunningOperation", "forceCompleteAllOperations", "forcePostponedExecutePendingOperations", "getAwaitingCompletionLifecycleImpact", "isPendingExecute", "markPostponedState", "processProgress", "backEvent", "Landroidx/activity/BackEventCompat;", "processStart", "updateFinalState", "updateOperationDirection", "Companion", "Effect", "FragmentStateManagerOperation", "Operation", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class SpecialEffectsController {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final ViewGroup container;
    private boolean isContainerPostponed;
    private boolean operationDirectionIsPop;
    private final List<Operation> pendingOperations;
    private final List<Operation> runningOperations;

    /* JADX INFO: compiled from: SpecialEffectsController.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            try {
                iArr[Operation.LifecycleImpact.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    public static final SpecialEffectsController getOrCreateController(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return INSTANCE.getOrCreateController(viewGroup, fragmentManager);
    }

    @JvmStatic
    public static final SpecialEffectsController getOrCreateController(ViewGroup viewGroup, SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        return INSTANCE.getOrCreateController(viewGroup, specialEffectsControllerFactory);
    }

    public abstract void collectEffects(List<Operation> operations, boolean isPop);

    public SpecialEffectsController(ViewGroup container) {
        Intrinsics.checkNotNullParameter(container, "container");
        this.container = container;
        this.pendingOperations = new ArrayList();
        this.runningOperations = new ArrayList();
    }

    public final ViewGroup getContainer() {
        return this.container;
    }

    public final Operation.LifecycleImpact getAwaitingCompletionLifecycleImpact(FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        Fragment fragment = fragmentStateManager.getFragment();
        Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
        Operation operationFindPendingOperation = findPendingOperation(fragment);
        Operation.LifecycleImpact pendingLifecycleImpact = operationFindPendingOperation != null ? operationFindPendingOperation.getLifecycleImpact() : null;
        Operation operationFindRunningOperation = findRunningOperation(fragment);
        Operation.LifecycleImpact runningLifecycleImpact = operationFindRunningOperation != null ? operationFindRunningOperation.getLifecycleImpact() : null;
        switch (pendingLifecycleImpact == null ? -1 : WhenMappings.$EnumSwitchMapping$0[pendingLifecycleImpact.ordinal()]) {
            case -1:
            case 1:
                return runningLifecycleImpact;
            case 0:
            default:
                return pendingLifecycleImpact;
        }
    }

    private final Operation findPendingOperation(Fragment fragment) {
        Object element$iv;
        Iterable $this$firstOrNull$iv = this.pendingOperations;
        Iterator it = $this$firstOrNull$iv.iterator();
        while (it.hasNext()) {
            element$iv = it.next();
            Operation operation = (Operation) element$iv;
            if (Intrinsics.areEqual(operation.getFragment(), fragment) && !operation.getIsCanceled()) {
                return (Operation) element$iv;
            }
        }
        element$iv = null;
        return (Operation) element$iv;
    }

    private final Operation findRunningOperation(Fragment fragment) {
        Object element$iv;
        Iterable $this$firstOrNull$iv = this.runningOperations;
        Iterator it = $this$firstOrNull$iv.iterator();
        while (it.hasNext()) {
            element$iv = it.next();
            Operation operation = (Operation) element$iv;
            if (Intrinsics.areEqual(operation.getFragment(), fragment) && !operation.getIsCanceled()) {
                return (Operation) element$iv;
            }
        }
        element$iv = null;
        return (Operation) element$iv;
    }

    public final void enqueueAdd(Operation.State finalState, FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(finalState, "finalState");
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(finalState, Operation.LifecycleImpact.ADDING, fragmentStateManager);
    }

    public final void enqueueShow(FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing show operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    public final void enqueueHide(FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing hide operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.GONE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    public final void enqueueRemove(FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing remove operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, fragmentStateManager);
    }

    private final void enqueue(Operation.State finalState, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.pendingOperations) {
            Fragment fragment = fragmentStateManager.getFragment();
            Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
            Operation existingOperation = findPendingOperation(fragment);
            if (existingOperation == null) {
                if (fragmentStateManager.getFragment().mTransitioning) {
                    Fragment fragment2 = fragmentStateManager.getFragment();
                    Intrinsics.checkNotNullExpressionValue(fragment2, "fragmentStateManager.fragment");
                    existingOperation = findRunningOperation(fragment2);
                } else {
                    existingOperation = null;
                }
            }
            if (existingOperation != null) {
                existingOperation.mergeWith(finalState, lifecycleImpact);
                return;
            }
            final FragmentStateManagerOperation operation = new FragmentStateManagerOperation(finalState, lifecycleImpact, fragmentStateManager);
            this.pendingOperations.add(operation);
            operation.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialEffectsController.enqueue$lambda$4$lambda$2(this.f$0, operation);
                }
            });
            operation.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialEffectsController.enqueue$lambda$4$lambda$3(this.f$0, operation);
                }
            });
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enqueue$lambda$4$lambda$2(SpecialEffectsController this$0, FragmentStateManagerOperation operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        if (this$0.pendingOperations.contains(operation)) {
            Operation.State finalState = operation.getFinalState();
            View view = operation.getFragment().mView;
            Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
            finalState.applyState(view, this$0.container);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enqueue$lambda$4$lambda$3(SpecialEffectsController this$0, FragmentStateManagerOperation operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        this$0.pendingOperations.remove(operation);
        this$0.runningOperations.remove(operation);
    }

    public final void updateOperationDirection(boolean isPop) {
        this.operationDirectionIsPop = isPop;
    }

    public final void markPostponedState() {
        Object element$iv;
        Operation operation;
        Operation.State currentState;
        synchronized (this.pendingOperations) {
            updateFinalState();
            List<Operation> list = this.pendingOperations;
            ListIterator<Operation> listIterator = list.listIterator(list.size());
            do {
                if (!listIterator.hasPrevious()) {
                    element$iv = null;
                    break;
                }
                element$iv = listIterator.previous();
                operation = (Operation) element$iv;
                Operation.State.Companion companion = Operation.State.INSTANCE;
                View view = operation.getFragment().mView;
                Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
                currentState = companion.asOperationState(view);
            } while (!(operation.getFinalState() == Operation.State.VISIBLE && currentState != Operation.State.VISIBLE));
            Operation operation2 = (Operation) element$iv;
            Fragment lastEnteringFragment = operation2 != null ? operation2.getFragment() : null;
            this.isContainerPostponed = lastEnteringFragment != null ? lastEnteringFragment.isPostponed() : false;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean isPendingExecute() {
        return !this.pendingOperations.isEmpty();
    }

    public final void forcePostponedExecutePendingOperations() {
        if (this.isContainerPostponed) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "SpecialEffectsController: Forcing postponed operations");
            }
            this.isContainerPostponed = false;
            executePendingOperations();
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0164  */
    /* JADX WARN: Code duplicated, block: B:72:0x01b4  */
    public final void executePendingOperations() {
        boolean z;
        boolean z2;
        if (this.isContainerPostponed) {
            return;
        }
        if (!this.container.isAttachedToWindow()) {
            forceCompleteAllOperations();
            this.operationDirectionIsPop = false;
            return;
        }
        synchronized (this.pendingOperations) {
            if (this.pendingOperations.isEmpty()) {
                List<Operation> currentlyRunningOperations = CollectionsKt.toMutableList((Collection) this.runningOperations);
                this.runningOperations.clear();
                for (Operation operation : currentlyRunningOperations) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Cancelling operation " + operation + " with no incoming pendingOperations");
                    }
                    operation.cancel(this.container, false);
                    if (!operation.getIsComplete()) {
                        this.runningOperations.add(operation);
                    }
                }
            } else {
                List<Operation> currentlyRunningOperations2 = CollectionsKt.toMutableList((Collection) this.runningOperations);
                this.runningOperations.clear();
                for (Operation operation2 : currentlyRunningOperations2) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Cancelling operation " + operation2);
                    }
                    operation2.cancel(this.container, operation2.getFragment().mTransitioning);
                    if (!operation2.getIsComplete()) {
                        this.runningOperations.add(operation2);
                    }
                }
                updateFinalState();
                List<Operation> mutableList = CollectionsKt.toMutableList((Collection) this.pendingOperations);
                if (mutableList.isEmpty()) {
                    return;
                }
                this.pendingOperations.clear();
                this.runningOperations.addAll(mutableList);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: Executing pending operations");
                }
                collectEffects(mutableList, this.operationDirectionIsPop);
                Ref.BooleanRef seekable = new Ref.BooleanRef();
                boolean z3 = true;
                seekable.element = true;
                boolean transitioning = true;
                List<Operation> $this$forEach$iv = mutableList;
                for (Object element$iv : $this$forEach$iv) {
                    Operation operation3 = (Operation) element$iv;
                    if (!operation3.getEffects$fragment_release().isEmpty()) {
                        Iterable $this$all$iv = operation3.getEffects$fragment_release();
                        if (!($this$all$iv instanceof Collection) || !((Collection) $this$all$iv).isEmpty()) {
                            Iterator it = $this$all$iv.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Object element$iv2 = it.next();
                                    Effect effect = (Effect) element$iv2;
                                    if (!effect.getIsSeekingSupported()) {
                                        z2 = false;
                                        break;
                                    }
                                } else {
                                    z2 = true;
                                    break;
                                }
                            }
                        } else {
                            z2 = true;
                        }
                        if (z2) {
                            z = true;
                        } else {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    seekable.element = z;
                    if (!operation3.getFragment().mTransitioning) {
                        transitioning = false;
                    }
                }
                if (seekable.element) {
                    List<Operation> $this$flatMap$iv = mutableList;
                    Collection destination$iv$iv = new ArrayList();
                    for (Object element$iv$iv : $this$flatMap$iv) {
                        Operation it2 = (Operation) element$iv$iv;
                        Iterable list$iv$iv = it2.getEffects$fragment_release();
                        CollectionsKt.addAll(destination$iv$iv, list$iv$iv);
                    }
                    if (!(!((List) destination$iv$iv).isEmpty())) {
                        z3 = false;
                    }
                } else {
                    z3 = false;
                }
                seekable.element = z3;
                if (!transitioning) {
                    processStart(mutableList);
                    commitEffects$fragment_release(mutableList);
                } else if (seekable.element) {
                    processStart(mutableList);
                    int size = mutableList.size();
                    for (int i = 0; i < size; i++) {
                        applyContainerChangesToOperation$fragment_release(mutableList.get(i));
                    }
                }
                this.operationDirectionIsPop = false;
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: Finished executing pending operations");
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void applyContainerChangesToOperation$fragment_release(Operation operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        if (operation.getIsAwaitingContainerChanges()) {
            Operation.State finalState = operation.getFinalState();
            View viewRequireView = operation.getFragment().requireView();
            Intrinsics.checkNotNullExpressionValue(viewRequireView, "operation.fragment.requireView()");
            finalState.applyState(viewRequireView, this.container);
            operation.setAwaitingContainerChanges(false);
        }
    }

    public final void forceCompleteAllOperations() {
        String notAttachedMessage;
        String notAttachedMessage2;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean attachedToWindow = this.container.isAttachedToWindow();
        synchronized (this.pendingOperations) {
            updateFinalState();
            processStart(this.pendingOperations);
            List<Operation> runningOperations = CollectionsKt.toMutableList((Collection) this.runningOperations);
            for (Operation operation : runningOperations) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    if (attachedToWindow) {
                        notAttachedMessage2 = "";
                    } else {
                        notAttachedMessage2 = "Container " + this.container + " is not attached to window. ";
                    }
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: " + notAttachedMessage2 + "Cancelling running operation " + operation);
                }
                operation.cancel(this.container);
            }
            List<Operation> pendingOperations = CollectionsKt.toMutableList((Collection) this.pendingOperations);
            for (Operation operation2 : pendingOperations) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    if (attachedToWindow) {
                        notAttachedMessage = "";
                    } else {
                        notAttachedMessage = "Container " + this.container + " is not attached to window. ";
                    }
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: " + notAttachedMessage + "Cancelling pending operation " + operation2);
                }
                operation2.cancel(this.container);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void updateFinalState() {
        for (Operation operation : this.pendingOperations) {
            if (operation.getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                Fragment fragment = operation.getFragment();
                View view = fragment.requireView();
                Intrinsics.checkNotNullExpressionValue(view, "fragment.requireView()");
                Operation.State finalState = Operation.State.INSTANCE.from(view.getVisibility());
                operation.mergeWith(finalState, Operation.LifecycleImpact.NONE);
            }
        }
    }

    public void commitEffects$fragment_release(List<Operation> operations) {
        Intrinsics.checkNotNullParameter(operations, "operations");
        List<Operation> $this$flatMap$iv = operations;
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv : $this$flatMap$iv) {
            Operation it = (Operation) element$iv$iv;
            Iterable list$iv$iv = it.getEffects$fragment_release();
            CollectionsKt.addAll(destination$iv$iv, list$iv$iv);
        }
        List set = CollectionsKt.toList(CollectionsKt.toSet((List) destination$iv$iv));
        int size = set.size();
        for (int i = 0; i < size; i++) {
            Effect effect = (Effect) set.get(i);
            effect.onCommit(this.container);
        }
        int size2 = operations.size();
        for (int i2 = 0; i2 < size2; i2++) {
            applyContainerChangesToOperation$fragment_release(operations.get(i2));
        }
        List operationsCopy = CollectionsKt.toList(operations);
        int size3 = operationsCopy.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Operation operation = (Operation) operationsCopy.get(i3);
            if (operation.getEffects$fragment_release().isEmpty()) {
                operation.complete$fragment_release();
            }
        }
    }

    private final void processStart(List<Operation> operations) {
        int size = operations.size();
        for (int i = 0; i < size; i++) {
            Operation operation = operations.get(i);
            operation.onStart();
        }
        List<Operation> $this$flatMap$iv = operations;
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv : $this$flatMap$iv) {
            Operation it = (Operation) element$iv$iv;
            Iterable list$iv$iv = it.getEffects$fragment_release();
            CollectionsKt.addAll(destination$iv$iv, list$iv$iv);
        }
        List set = CollectionsKt.toList(CollectionsKt.toSet((List) destination$iv$iv));
        int size2 = set.size();
        for (int j = 0; j < size2; j++) {
            Effect effect = (Effect) set.get(j);
            effect.performStart(this.container);
        }
    }

    public final void processProgress(BackEventCompat backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Processing Progress " + backEvent.getProgress());
        }
        Iterable $this$flatMap$iv = this.runningOperations;
        Collection destination$iv$iv = new ArrayList();
        for (Object element$iv$iv : $this$flatMap$iv) {
            Operation it = (Operation) element$iv$iv;
            Iterable list$iv$iv = it.getEffects$fragment_release();
            CollectionsKt.addAll(destination$iv$iv, list$iv$iv);
        }
        List set = CollectionsKt.toList(CollectionsKt.toSet((List) destination$iv$iv));
        int size = set.size();
        for (int j = 0; j < size; j++) {
            Effect effect = (Effect) set.get(j);
            effect.onProgress(backEvent, this.container);
        }
    }

    public final void completeBack() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(FragmentManager.TAG, "SpecialEffectsController: Completing Back ");
        }
        processStart(this.runningOperations);
        commitEffects$fragment_release(this.runningOperations);
    }

    /* JADX INFO: compiled from: SpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001:\u000267B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\rJ\u000e\u0010)\u001a\u00020'2\u0006\u0010*\u001a\u00020\u000bJ\u000e\u0010+\u001a\u00020'2\u0006\u0010,\u001a\u00020-J\u0016\u0010+\u001a\u00020'2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u0019J\r\u0010/\u001a\u00020'H\u0011¢\u0006\u0002\b0J\u000e\u00101\u001a\u00020'2\u0006\u0010*\u001a\u00020\u000bJ\u0016\u00102\u001a\u00020'2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005J\b\u00103\u001a\u00020'H\u0017J\b\u00104\u001a\u000205H\u0016R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001e\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0019@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u001e\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0019@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001aR\u001e\u0010 \u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0019@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001aR\u001e\u0010!\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0019@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001aR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u00068"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation;", "", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "lifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "fragment", "Landroidx/fragment/app/Fragment;", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;)V", "_effects", "", "Landroidx/fragment/app/SpecialEffectsController$Effect;", "completionListeners", "Ljava/lang/Runnable;", "effects", "", "getEffects$fragment_release", "()Ljava/util/List;", "getFinalState", "()Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "setFinalState", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;)V", "getFragment", "()Landroidx/fragment/app/Fragment;", "isAwaitingContainerChanges", "", "()Z", "setAwaitingContainerChanges", "(Z)V", "<set-?>", "isCanceled", "isComplete", "isSeeking", "isStarted", "getLifecycleImpact", "()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "setLifecycleImpact", "(Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V", "addCompletionListener", "", "listener", "addEffect", "effect", "cancel", "container", "Landroid/view/ViewGroup;", "withSeeking", "complete", "complete$fragment_release", "completeEffect", "mergeWith", "onStart", "toString", "", "LifecycleImpact", "State", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static class Operation {
        private final List<Effect> _effects;
        private final List<Runnable> completionListeners;
        private final List<Effect> effects;
        private State finalState;
        private final Fragment fragment;
        private boolean isAwaitingContainerChanges;
        private boolean isCanceled;
        private boolean isComplete;
        private boolean isSeeking;
        private boolean isStarted;
        private LifecycleImpact lifecycleImpact;

        /* JADX INFO: compiled from: SpecialEffectsController.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "", "(Ljava/lang/String;I)V", "NONE", "ADDING", "REMOVING", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        /* JADX INFO: compiled from: SpecialEffectsController.kt */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[LifecycleImpact.values().length];
                try {
                    iArr[LifecycleImpact.ADDING.ordinal()] = 1;
                } catch (NoSuchFieldError e) {
                }
                try {
                    iArr[LifecycleImpact.REMOVING.ordinal()] = 2;
                } catch (NoSuchFieldError e2) {
                }
                try {
                    iArr[LifecycleImpact.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError e3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public Operation(State finalState, LifecycleImpact lifecycleImpact, Fragment fragment) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            this.finalState = finalState;
            this.lifecycleImpact = lifecycleImpact;
            this.fragment = fragment;
            this.completionListeners = new ArrayList();
            this.isAwaitingContainerChanges = true;
            ArrayList arrayList = new ArrayList();
            this._effects = arrayList;
            this.effects = arrayList;
        }

        public final State getFinalState() {
            return this.finalState;
        }

        public final void setFinalState(State state) {
            Intrinsics.checkNotNullParameter(state, "<set-?>");
            this.finalState = state;
        }

        public final LifecycleImpact getLifecycleImpact() {
            return this.lifecycleImpact;
        }

        public final void setLifecycleImpact(LifecycleImpact lifecycleImpact) {
            Intrinsics.checkNotNullParameter(lifecycleImpact, "<set-?>");
            this.lifecycleImpact = lifecycleImpact;
        }

        public final Fragment getFragment() {
            return this.fragment;
        }

        /* JADX INFO: compiled from: SpecialEffectsController.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\u0001\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "", "(Ljava/lang/String;I)V", "applyState", "", "view", "Landroid/view/View;", "container", "Landroid/view/ViewGroup;", "REMOVED", "VISIBLE", "GONE", "INVISIBLE", "Companion", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;


            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);

            /* JADX INFO: compiled from: SpecialEffectsController.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[State.REMOVED.ordinal()] = 1;
                    } catch (NoSuchFieldError e) {
                    }
                    try {
                        iArr[State.VISIBLE.ordinal()] = 2;
                    } catch (NoSuchFieldError e2) {
                    }
                    try {
                        iArr[State.GONE.ordinal()] = 3;
                    } catch (NoSuchFieldError e3) {
                    }
                    try {
                        iArr[State.INVISIBLE.ordinal()] = 4;
                    } catch (NoSuchFieldError e4) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @JvmStatic
            public static final State from(int i) {
                return INSTANCE.from(i);
            }

            public final void applyState(View view, ViewGroup container) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(container, "container");
                switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                    case 1:
                        ViewParent parent = view.getParent();
                        ViewGroup parent2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                        if (parent2 != null) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "SpecialEffectsController: Removing view " + view + " from container " + parent2);
                            }
                            parent2.removeView(view);
                        }
                        break;
                    case 2:
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                        }
                        ViewParent parent3 = view.getParent();
                        if ((parent3 instanceof ViewGroup ? (ViewGroup) parent3 : null) == null) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "SpecialEffectsController: Adding view " + view + " to Container " + container);
                            }
                            container.addView(view);
                        }
                        view.setVisibility(0);
                        break;
                    case 3:
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to GONE");
                        }
                        view.setVisibility(8);
                        break;
                    case 4:
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                        }
                        view.setVisibility(4);
                        break;
                }
            }

            /* JADX INFO: compiled from: SpecialEffectsController.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\n\u0010\u0007\u001a\u00020\u0004*\u00020\b¨\u0006\t"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;", "", "()V", "from", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "visibility", "", "asOperationState", "Landroid/view/View;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final State asOperationState(View $this$asOperationState) {
                    Intrinsics.checkNotNullParameter($this$asOperationState, "<this>");
                    if (($this$asOperationState.getAlpha() == 0.0f) && $this$asOperationState.getVisibility() == 0) {
                        return State.INVISIBLE;
                    }
                    return from($this$asOperationState.getVisibility());
                }

                @JvmStatic
                public final State from(int visibility) {
                    switch (visibility) {
                        case 0:
                            return State.VISIBLE;
                        case 4:
                            return State.INVISIBLE;
                        case 8:
                            return State.GONE;
                        default:
                            throw new IllegalArgumentException("Unknown visibility " + visibility);
                    }
                }
            }
        }

        /* JADX INFO: renamed from: isCanceled, reason: from getter */
        public final boolean getIsCanceled() {
            return this.isCanceled;
        }

        /* JADX INFO: renamed from: isComplete, reason: from getter */
        public final boolean getIsComplete() {
            return this.isComplete;
        }

        /* JADX INFO: renamed from: isSeeking, reason: from getter */
        public final boolean getIsSeeking() {
            return this.isSeeking;
        }

        /* JADX INFO: renamed from: isStarted, reason: from getter */
        public final boolean getIsStarted() {
            return this.isStarted;
        }

        /* JADX INFO: renamed from: isAwaitingContainerChanges, reason: from getter */
        public final boolean getIsAwaitingContainerChanges() {
            return this.isAwaitingContainerChanges;
        }

        public final void setAwaitingContainerChanges(boolean z) {
            this.isAwaitingContainerChanges = z;
        }

        public final List<Effect> getEffects$fragment_release() {
            return this.effects;
        }

        public String toString() {
            String identityHash = Integer.toHexString(System.identityHashCode(this));
            return "Operation {" + identityHash + "} {finalState = " + this.finalState + " lifecycleImpact = " + this.lifecycleImpact + " fragment = " + this.fragment + '}';
        }

        public final void cancel(ViewGroup container) {
            Intrinsics.checkNotNullParameter(container, "container");
            this.isStarted = false;
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            if (this._effects.isEmpty()) {
                complete$fragment_release();
                return;
            }
            Iterable $this$forEach$iv = CollectionsKt.toList(this.effects);
            for (Object element$iv : $this$forEach$iv) {
                Effect it = (Effect) element$iv;
                it.cancel(container);
            }
        }

        public final void cancel(ViewGroup container, boolean withSeeking) {
            Intrinsics.checkNotNullParameter(container, "container");
            if (this.isCanceled) {
                return;
            }
            if (withSeeking) {
                this.isSeeking = true;
            }
            cancel(container);
        }

        public final void mergeWith(State finalState, LifecycleImpact lifecycleImpact) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            switch (WhenMappings.$EnumSwitchMapping$0[lifecycleImpact.ordinal()]) {
                case 1:
                    if (this.finalState == State.REMOVED) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.lifecycleImpact + " to ADDING.");
                        }
                        this.finalState = State.VISIBLE;
                        this.lifecycleImpact = LifecycleImpact.ADDING;
                        this.isAwaitingContainerChanges = true;
                    }
                    break;
                case 2:
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = " + this.finalState + " -> REMOVED. mLifecycleImpact  = " + this.lifecycleImpact + " to REMOVING.");
                    }
                    this.finalState = State.REMOVED;
                    this.lifecycleImpact = LifecycleImpact.REMOVING;
                    this.isAwaitingContainerChanges = true;
                    break;
                case 3:
                    if (this.finalState != State.REMOVED) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = " + this.finalState + " -> " + finalState + '.');
                        }
                        this.finalState = finalState;
                    }
                    break;
            }
        }

        public final void addCompletionListener(Runnable listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.completionListeners.add(listener);
        }

        public final void addEffect(Effect effect) {
            Intrinsics.checkNotNullParameter(effect, "effect");
            this._effects.add(effect);
        }

        public final void completeEffect(Effect effect) {
            Intrinsics.checkNotNullParameter(effect, "effect");
            if (this._effects.remove(effect) && this._effects.isEmpty()) {
                complete$fragment_release();
            }
        }

        public void onStart() {
            this.isStarted = true;
        }

        public void complete$fragment_release() {
            this.isStarted = false;
            if (this.isComplete) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "SpecialEffectsController: " + this + " has called complete.");
            }
            this.isComplete = true;
            Iterable $this$forEach$iv = this.completionListeners;
            for (Object element$iv : $this$forEach$iv) {
                Runnable listener = (Runnable) element$iv;
                listener.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\r\u0010\t\u001a\u00020\nH\u0010¢\u0006\u0002\b\u000bJ\b\u0010\f\u001a\u00020\nH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "lifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "fragmentStateManager", "Landroidx/fragment/app/FragmentStateManager;", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;)V", "complete", "", "complete$fragment_release", "onStart", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    static final class FragmentStateManagerOperation extends Operation {
        private final FragmentStateManager fragmentStateManager;

        /* JADX WARN: Illegal instructions before constructor call */
        public FragmentStateManagerOperation(Operation.State finalState, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
            Fragment fragment = fragmentStateManager.getFragment();
            Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
            super(finalState, lifecycleImpact, fragment);
            this.fragmentStateManager = fragmentStateManager;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void onStart() {
            if (getIsStarted()) {
                return;
            }
            super.onStart();
            if (getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                Fragment fragment = this.fragmentStateManager.getFragment();
                Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
                View focusedView = fragment.mView.findFocus();
                if (focusedView != null) {
                    fragment.setFocusedView(focusedView);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "requestFocus: Saved focused view " + focusedView + " for Fragment " + fragment);
                    }
                }
                View view = getFragment().requireView();
                Intrinsics.checkNotNullExpressionValue(view, "this.fragment.requireView()");
                if (view.getParent() == null) {
                    this.fragmentStateManager.addViewToContainer();
                    view.setAlpha(0.0f);
                }
                if ((view.getAlpha() == 0.0f) && view.getVisibility() == 0) {
                    view.setVisibility(4);
                }
                view.setAlpha(fragment.getPostOnViewCreatedAlpha());
                return;
            }
            if (getLifecycleImpact() == Operation.LifecycleImpact.REMOVING) {
                Fragment fragment2 = this.fragmentStateManager.getFragment();
                Intrinsics.checkNotNullExpressionValue(fragment2, "fragmentStateManager.fragment");
                View view2 = fragment2.requireView();
                Intrinsics.checkNotNullExpressionValue(view2, "fragment.requireView()");
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Clearing focus " + view2.findFocus() + " on view " + view2 + " for Fragment " + fragment2);
                }
                view2.clearFocus();
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void complete$fragment_release() {
            super.complete$fragment_release();
            getFragment().mTransitioning = false;
            this.fragmentStateManager.moveToExpectedState();
        }
    }

    /* JADX INFO: compiled from: SpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u000e\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0004X\u0096D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Effect;", "", "()V", "isCancelled", "", "isSeekingSupported", "()Z", "isStarted", "cancel", "", "container", "Landroid/view/ViewGroup;", "onCancel", "onCommit", "onProgress", "backEvent", "Landroidx/activity/BackEventCompat;", "onStart", "performStart", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static class Effect {
        private boolean isCancelled;
        private final boolean isSeekingSupported;
        private boolean isStarted;

        /* JADX INFO: renamed from: isSeekingSupported, reason: from getter */
        public boolean getIsSeekingSupported() {
            return this.isSeekingSupported;
        }

        public final void performStart(ViewGroup container) {
            Intrinsics.checkNotNullParameter(container, "container");
            if (!this.isStarted) {
                onStart(container);
            }
            this.isStarted = true;
        }

        public void onStart(ViewGroup container) {
            Intrinsics.checkNotNullParameter(container, "container");
        }

        public void onProgress(BackEventCompat backEvent, ViewGroup container) {
            Intrinsics.checkNotNullParameter(backEvent, "backEvent");
            Intrinsics.checkNotNullParameter(container, "container");
        }

        public void onCommit(ViewGroup container) {
            Intrinsics.checkNotNullParameter(container, "container");
        }

        public final void cancel(ViewGroup container) {
            Intrinsics.checkNotNullParameter(container, "container");
            if (!this.isCancelled) {
                onCancel(container);
            }
            this.isCancelled = true;
        }

        public void onCancel(ViewGroup container) {
            Intrinsics.checkNotNullParameter(container, "container");
        }
    }

    /* JADX INFO: compiled from: SpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Companion;", "", "()V", "getOrCreateController", "Landroidx/fragment/app/SpecialEffectsController;", "container", "Landroid/view/ViewGroup;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "factory", "Landroidx/fragment/app/SpecialEffectsControllerFactory;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SpecialEffectsController getOrCreateController(ViewGroup container, FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            SpecialEffectsControllerFactory factory = fragmentManager.getSpecialEffectsControllerFactory();
            Intrinsics.checkNotNullExpressionValue(factory, "fragmentManager.specialEffectsControllerFactory");
            return getOrCreateController(container, factory);
        }

        @JvmStatic
        public final SpecialEffectsController getOrCreateController(ViewGroup container, SpecialEffectsControllerFactory factory) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Object controller = container.getTag(R.id.special_effects_controller_view_tag);
            if (controller instanceof SpecialEffectsController) {
                return (SpecialEffectsController) controller;
            }
            SpecialEffectsController newController = factory.createController(container);
            Intrinsics.checkNotNullExpressionValue(newController, "factory.createController(container)");
            container.setTag(R.id.special_effects_controller_view_tag, newController);
            return newController;
        }
    }
}
