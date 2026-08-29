package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.os.EnvironmentCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;

/* JADX INFO: loaded from: classes.dex */
class FragmentStateManager {
    static final String ARGUMENTS_KEY = "arguments";
    static final String CHILD_FRAGMENT_MANAGER_KEY = "childFragmentManager";
    static final String FRAGMENT_STATE_KEY = "state";
    static final String REGISTRY_STATE_KEY = "registryState";
    static final String SAVED_INSTANCE_STATE_KEY = "savedInstanceState";
    private static final String TAG = "FragmentManager";
    static final String VIEW_REGISTRY_STATE_KEY = "viewRegistryState";
    static final String VIEW_STATE_KEY = "viewState";
    private final FragmentLifecycleCallbacksDispatcher mDispatcher;
    private final Fragment mFragment;
    private final FragmentStore mFragmentStore;
    private boolean mMovingToState = false;
    private int mFragmentManagerState = -1;

    FragmentStateManager(FragmentLifecycleCallbacksDispatcher dispatcher, FragmentStore fragmentStore, Fragment fragment) {
        this.mDispatcher = dispatcher;
        this.mFragmentStore = fragmentStore;
        this.mFragment = fragment;
    }

    FragmentStateManager(FragmentLifecycleCallbacksDispatcher dispatcher, FragmentStore fragmentStore, ClassLoader classLoader, FragmentFactory fragmentFactory, Bundle state) {
        this.mDispatcher = dispatcher;
        this.mFragmentStore = fragmentStore;
        FragmentState fs = (FragmentState) state.getParcelable(FRAGMENT_STATE_KEY);
        Fragment fragmentInstantiate = fs.instantiate(fragmentFactory, classLoader);
        this.mFragment = fragmentInstantiate;
        fragmentInstantiate.mSavedFragmentState = state;
        Bundle arguments = state.getBundle(ARGUMENTS_KEY);
        if (arguments != null) {
            arguments.setClassLoader(classLoader);
        }
        fragmentInstantiate.setArguments(arguments);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + fragmentInstantiate);
        }
    }

    FragmentStateManager(FragmentLifecycleCallbacksDispatcher dispatcher, FragmentStore fragmentStore, Fragment retainedFragment, Bundle state) {
        this.mDispatcher = dispatcher;
        this.mFragmentStore = fragmentStore;
        this.mFragment = retainedFragment;
        retainedFragment.mSavedViewState = null;
        retainedFragment.mSavedViewRegistryState = null;
        retainedFragment.mBackStackNesting = 0;
        retainedFragment.mInLayout = false;
        retainedFragment.mAdded = false;
        retainedFragment.mTargetWho = retainedFragment.mTarget != null ? retainedFragment.mTarget.mWho : null;
        retainedFragment.mTarget = null;
        retainedFragment.mSavedFragmentState = state;
        retainedFragment.mArguments = state.getBundle(ARGUMENTS_KEY);
    }

    Fragment getFragment() {
        return this.mFragment;
    }

    void setFragmentManagerState(int state) {
        this.mFragmentManagerState = state;
    }

    int computeExpectedState() {
        if (this.mFragment.mFragmentManager == null) {
            return this.mFragment.mState;
        }
        int maxState = this.mFragmentManagerState;
        switch (AnonymousClass2.$SwitchMap$androidx$lifecycle$Lifecycle$State[this.mFragment.mMaxState.ordinal()]) {
            case 1:
                break;
            case 2:
                maxState = Math.min(maxState, 5);
                break;
            case 3:
                maxState = Math.min(maxState, 1);
                break;
            case 4:
                maxState = Math.min(maxState, 0);
                break;
            default:
                maxState = Math.min(maxState, -1);
                break;
        }
        if (this.mFragment.mFromLayout) {
            if (this.mFragment.mInLayout) {
                maxState = Math.max(this.mFragmentManagerState, 2);
                if (this.mFragment.mView != null && this.mFragment.mView.getParent() == null) {
                    maxState = Math.min(maxState, 2);
                }
            } else {
                maxState = this.mFragmentManagerState < 4 ? Math.min(maxState, this.mFragment.mState) : Math.min(maxState, 1);
            }
        }
        if (!this.mFragment.mAdded) {
            maxState = Math.min(maxState, 1);
        }
        SpecialEffectsController.Operation.LifecycleImpact awaitingEffect = null;
        if (this.mFragment.mContainer != null) {
            SpecialEffectsController controller = SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager());
            awaitingEffect = controller.getAwaitingCompletionLifecycleImpact(this);
        }
        if (awaitingEffect == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            maxState = Math.min(maxState, 6);
        } else if (awaitingEffect == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            maxState = Math.max(maxState, 3);
        } else if (this.mFragment.mRemoving) {
            if (this.mFragment.isInBackStack()) {
                maxState = Math.min(maxState, 1);
            } else {
                maxState = Math.min(maxState, -1);
            }
        }
        if (this.mFragment.mDeferStart && this.mFragment.mState < 5) {
            maxState = Math.min(maxState, 4);
        }
        if (this.mFragment.mTransitioning && this.mFragment.mContainer != null) {
            maxState = Math.max(maxState, 3);
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + maxState + " for " + this.mFragment);
        }
        return maxState;
    }

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentStateManager$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$State;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$State = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    void moveToExpectedState() {
        if (this.mMovingToState) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + getFragment());
                return;
            }
            return;
        }
        try {
            this.mMovingToState = true;
            boolean stateWasChanged = false;
            while (true) {
                int newState = computeExpectedState();
                if (newState != this.mFragment.mState) {
                    stateWasChanged = true;
                    if (newState > this.mFragment.mState) {
                        int nextStep = this.mFragment.mState + 1;
                        switch (nextStep) {
                            case 0:
                                attach();
                                break;
                            case 1:
                                create();
                                break;
                            case 2:
                                ensureInflatedView();
                                createView();
                                break;
                            case 3:
                                activityCreated();
                                break;
                            case 4:
                                if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                                    SpecialEffectsController controller = SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager());
                                    int visibility = this.mFragment.mView.getVisibility();
                                    SpecialEffectsController.Operation.State finalState = SpecialEffectsController.Operation.State.from(visibility);
                                    controller.enqueueAdd(finalState, this);
                                }
                                this.mFragment.mState = 4;
                                break;
                            case 5:
                                start();
                                break;
                            case 6:
                                this.mFragment.mState = 6;
                                break;
                            case 7:
                                resume();
                                break;
                        }
                    } else {
                        int nextStep2 = this.mFragment.mState - 1;
                        switch (nextStep2) {
                            case -1:
                                detach();
                                break;
                            case 0:
                                if (this.mFragment.mBeingSaved && this.mFragmentStore.getSavedState(this.mFragment.mWho) == null) {
                                    this.mFragmentStore.setSavedState(this.mFragment.mWho, saveState());
                                }
                                destroy();
                                break;
                            case 1:
                                destroyFragmentView();
                                this.mFragment.mState = 1;
                                break;
                            case 2:
                                this.mFragment.mInLayout = false;
                                this.mFragment.mState = 2;
                                break;
                            case 3:
                                if (FragmentManager.isLoggingEnabled(3)) {
                                    Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.mFragment);
                                }
                                if (this.mFragment.mBeingSaved) {
                                    this.mFragmentStore.setSavedState(this.mFragment.mWho, saveState());
                                } else if (this.mFragment.mView != null && this.mFragment.mSavedViewState == null) {
                                    saveViewState();
                                }
                                if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                                    SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager()).enqueueRemove(this);
                                }
                                this.mFragment.mState = 3;
                                break;
                            case 4:
                                stop();
                                break;
                            case 5:
                                this.mFragment.mState = 5;
                                break;
                            case 6:
                                pause();
                                break;
                        }
                    }
                } else {
                    if (!stateWasChanged && this.mFragment.mState == -1 && this.mFragment.mRemoving && !this.mFragment.isInBackStack() && !this.mFragment.mBeingSaved) {
                        if (FragmentManager.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + this.mFragment);
                        }
                        this.mFragmentStore.getNonConfig().clearNonConfigState(this.mFragment, true);
                        this.mFragmentStore.makeInactive(this);
                        if (FragmentManager.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + this.mFragment);
                        }
                        this.mFragment.initState();
                    }
                    if (this.mFragment.mHiddenChanged) {
                        if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                            SpecialEffectsController controller2 = SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager());
                            if (this.mFragment.mHidden) {
                                controller2.enqueueHide(this);
                            } else {
                                controller2.enqueueShow(this);
                            }
                        }
                        if (this.mFragment.mFragmentManager != null) {
                            this.mFragment.mFragmentManager.invalidateMenuForFragment(this.mFragment);
                        }
                        this.mFragment.mHiddenChanged = false;
                        Fragment fragment = this.mFragment;
                        fragment.onHiddenChanged(fragment.mHidden);
                        this.mFragment.mChildFragmentManager.dispatchOnHiddenChanged();
                    }
                    return;
                }
            }
        } finally {
            this.mMovingToState = false;
        }
    }

    void ensureInflatedView() {
        if (this.mFragment.mFromLayout && this.mFragment.mInLayout && !this.mFragment.mPerformedCreateView) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.mFragment);
            }
            Bundle savedInstanceState = null;
            if (this.mFragment.mSavedFragmentState != null) {
                savedInstanceState = this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY);
            }
            Fragment fragment = this.mFragment;
            fragment.performCreateView(fragment.performGetLayoutInflater(savedInstanceState), null, savedInstanceState);
            if (this.mFragment.mView != null) {
                this.mFragment.mView.setSaveFromParentEnabled(false);
                this.mFragment.mView.setTag(R.id.fragment_container_view_tag, this.mFragment);
                if (this.mFragment.mHidden) {
                    this.mFragment.mView.setVisibility(8);
                }
                this.mFragment.performViewCreated();
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
                Fragment fragment2 = this.mFragment;
                fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment2, fragment2.mView, savedInstanceState, false);
                this.mFragment.mState = 2;
            }
        }
    }

    void restoreState(ClassLoader classLoader) {
        if (this.mFragment.mSavedFragmentState == null) {
            return;
        }
        this.mFragment.mSavedFragmentState.setClassLoader(classLoader);
        Bundle savedInstanceState = this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY);
        if (savedInstanceState == null) {
            this.mFragment.mSavedFragmentState.putBundle(SAVED_INSTANCE_STATE_KEY, new Bundle());
        }
        try {
            Fragment fragment = this.mFragment;
            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_KEY);
            Fragment fragment2 = this.mFragment;
            fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle(VIEW_REGISTRY_STATE_KEY);
            FragmentState fs = (FragmentState) this.mFragment.mSavedFragmentState.getParcelable(FRAGMENT_STATE_KEY);
            if (fs != null) {
                this.mFragment.mTargetWho = fs.mTargetWho;
                this.mFragment.mTargetRequestCode = fs.mTargetRequestCode;
                if (this.mFragment.mSavedUserVisibleHint != null) {
                    Fragment fragment3 = this.mFragment;
                    fragment3.mUserVisibleHint = fragment3.mSavedUserVisibleHint.booleanValue();
                    this.mFragment.mSavedUserVisibleHint = null;
                } else {
                    this.mFragment.mUserVisibleHint = fs.mUserVisibleHint;
                }
            }
            if (!this.mFragment.mUserVisibleHint) {
                this.mFragment.mDeferStart = true;
            }
        } catch (BadParcelableException e) {
            throw new IllegalStateException("Failed to restore view hierarchy state for fragment " + getFragment(), e);
        }
    }

    void attach() {
        FragmentStateManager targetFragmentStateManager;
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.mFragment);
        }
        if (this.mFragment.mTarget != null) {
            targetFragmentStateManager = this.mFragmentStore.getFragmentStateManager(this.mFragment.mTarget.mWho);
            if (targetFragmentStateManager == null) {
                throw new IllegalStateException("Fragment " + this.mFragment + " declared target fragment " + this.mFragment.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment = this.mFragment;
            fragment.mTargetWho = fragment.mTarget.mWho;
            this.mFragment.mTarget = null;
        } else if (this.mFragment.mTargetWho != null) {
            targetFragmentStateManager = this.mFragmentStore.getFragmentStateManager(this.mFragment.mTargetWho);
            if (targetFragmentStateManager == null) {
                throw new IllegalStateException("Fragment " + this.mFragment + " declared target fragment " + this.mFragment.mTargetWho + " that does not belong to this FragmentManager!");
            }
        } else {
            targetFragmentStateManager = null;
        }
        if (targetFragmentStateManager != null) {
            targetFragmentStateManager.moveToExpectedState();
        }
        Fragment fragment2 = this.mFragment;
        fragment2.mHost = fragment2.mFragmentManager.getHost();
        Fragment fragment3 = this.mFragment;
        fragment3.mParentFragment = fragment3.mFragmentManager.getParent();
        this.mDispatcher.dispatchOnFragmentPreAttached(this.mFragment, false);
        this.mFragment.performAttach();
        this.mDispatcher.dispatchOnFragmentAttached(this.mFragment, false);
    }

    void create() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.mFragment);
        }
        Bundle savedInstanceState = null;
        if (this.mFragment.mSavedFragmentState != null) {
            savedInstanceState = this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY);
        }
        if (!this.mFragment.mIsCreated) {
            this.mDispatcher.dispatchOnFragmentPreCreated(this.mFragment, savedInstanceState, false);
            this.mFragment.performCreate(savedInstanceState);
            this.mDispatcher.dispatchOnFragmentCreated(this.mFragment, savedInstanceState, false);
        } else {
            this.mFragment.mState = 1;
            this.mFragment.restoreChildFragmentState();
        }
    }

    void createView() {
        String resName;
        if (this.mFragment.mFromLayout) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.mFragment);
        }
        Bundle savedInstanceState = null;
        if (this.mFragment.mSavedFragmentState != null) {
            savedInstanceState = this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY);
        }
        LayoutInflater layoutInflater = this.mFragment.performGetLayoutInflater(savedInstanceState);
        ViewGroup container = null;
        if (this.mFragment.mContainer != null) {
            container = this.mFragment.mContainer;
        } else if (this.mFragment.mContainerId != 0) {
            if (this.mFragment.mContainerId == -1) {
                throw new IllegalArgumentException("Cannot create fragment " + this.mFragment + " for a container view with no id");
            }
            FragmentContainer fragmentContainer = this.mFragment.mFragmentManager.getContainer();
            container = (ViewGroup) fragmentContainer.onFindViewById(this.mFragment.mContainerId);
            if (container == null) {
                if (!this.mFragment.mRestored) {
                    try {
                        resName = this.mFragment.getResources().getResourceName(this.mFragment.mContainerId);
                    } catch (Resources.NotFoundException e) {
                        resName = EnvironmentCompat.MEDIA_UNKNOWN;
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.mFragment.mContainerId) + " (" + resName + ") for fragment " + this.mFragment);
                }
            } else if (!(container instanceof FragmentContainerView)) {
                FragmentStrictMode.onWrongFragmentContainer(this.mFragment, container);
            }
        }
        this.mFragment.mContainer = container;
        this.mFragment.performCreateView(layoutInflater, container, savedInstanceState);
        if (this.mFragment.mView != null) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + this.mFragment);
            }
            this.mFragment.mView.setSaveFromParentEnabled(false);
            this.mFragment.mView.setTag(R.id.fragment_container_view_tag, this.mFragment);
            if (container != null) {
                addViewToContainer();
            }
            if (this.mFragment.mHidden) {
                this.mFragment.mView.setVisibility(8);
            }
            if (this.mFragment.mView.isAttachedToWindow()) {
                ViewCompat.requestApplyInsets(this.mFragment.mView);
            } else {
                final View fragmentView = this.mFragment.mView;
                fragmentView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentStateManager.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View v) {
                        fragmentView.removeOnAttachStateChangeListener(this);
                        ViewCompat.requestApplyInsets(fragmentView);
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View v) {
                    }
                });
            }
            this.mFragment.performViewCreated();
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
            Fragment fragment = this.mFragment;
            fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment, fragment.mView, savedInstanceState, false);
            int postOnViewCreatedVisibility = this.mFragment.mView.getVisibility();
            float postOnViewCreatedAlpha = this.mFragment.mView.getAlpha();
            this.mFragment.setPostOnViewCreatedAlpha(postOnViewCreatedAlpha);
            if (this.mFragment.mContainer != null && postOnViewCreatedVisibility == 0) {
                View focusedView = this.mFragment.mView.findFocus();
                if (focusedView != null) {
                    this.mFragment.setFocusedView(focusedView);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + focusedView + " for Fragment " + this.mFragment);
                    }
                }
                this.mFragment.mView.setAlpha(0.0f);
            }
        }
        this.mFragment.mState = 2;
    }

    void activityCreated() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.mFragment);
        }
        Bundle savedInstanceState = null;
        if (this.mFragment.mSavedFragmentState != null) {
            savedInstanceState = this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY);
        }
        this.mFragment.performActivityCreated(savedInstanceState);
        this.mDispatcher.dispatchOnFragmentActivityCreated(this.mFragment, savedInstanceState, false);
    }

    void start() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.mFragment);
        }
        this.mFragment.performStart();
        this.mDispatcher.dispatchOnFragmentStarted(this.mFragment, false);
    }

    void resume() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.mFragment);
        }
        View focusedView = this.mFragment.getFocusedView();
        if (focusedView != null && isFragmentViewChild(focusedView)) {
            boolean success = focusedView.requestFocus();
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "requestFocus: Restoring focused view " + focusedView + " " + (success ? "succeeded" : "failed") + " on Fragment " + this.mFragment + " resulting in focused view " + this.mFragment.mView.findFocus());
            }
        }
        this.mFragment.setFocusedView(null);
        this.mFragment.performResume();
        this.mDispatcher.dispatchOnFragmentResumed(this.mFragment, false);
        this.mFragmentStore.setSavedState(this.mFragment.mWho, null);
        this.mFragment.mSavedFragmentState = null;
        this.mFragment.mSavedViewState = null;
        this.mFragment.mSavedViewRegistryState = null;
    }

    private boolean isFragmentViewChild(View view) {
        if (view == this.mFragment.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.mFragment.mView) {
                return true;
            }
        }
        return false;
    }

    void pause() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.mFragment);
        }
        this.mFragment.performPause();
        this.mDispatcher.dispatchOnFragmentPaused(this.mFragment, false);
    }

    void stop() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.mFragment);
        }
        this.mFragment.performStop();
        this.mDispatcher.dispatchOnFragmentStopped(this.mFragment, false);
    }

    Bundle saveState() {
        Bundle stateBundle = new Bundle();
        if (this.mFragment.mState == -1 && this.mFragment.mSavedFragmentState != null) {
            stateBundle.putAll(this.mFragment.mSavedFragmentState);
        }
        FragmentState fs = new FragmentState(this.mFragment);
        stateBundle.putParcelable(FRAGMENT_STATE_KEY, fs);
        if (this.mFragment.mState > -1) {
            Bundle savedInstanceState = new Bundle();
            this.mFragment.performSaveInstanceState(savedInstanceState);
            if (!savedInstanceState.isEmpty()) {
                stateBundle.putBundle(SAVED_INSTANCE_STATE_KEY, savedInstanceState);
            }
            this.mDispatcher.dispatchOnFragmentSaveInstanceState(this.mFragment, savedInstanceState, false);
            Bundle savedStateRegistryState = new Bundle();
            this.mFragment.mSavedStateRegistryController.performSave(savedStateRegistryState);
            if (!savedStateRegistryState.isEmpty()) {
                stateBundle.putBundle(REGISTRY_STATE_KEY, savedStateRegistryState);
            }
            Bundle childFragmentManagerState = this.mFragment.mChildFragmentManager.m46lambda$attachController$4$androidxfragmentappFragmentManager();
            if (!childFragmentManagerState.isEmpty()) {
                stateBundle.putBundle(CHILD_FRAGMENT_MANAGER_KEY, childFragmentManagerState);
            }
            if (this.mFragment.mView != null) {
                saveViewState();
            }
            if (this.mFragment.mSavedViewState != null) {
                stateBundle.putSparseParcelableArray(VIEW_STATE_KEY, this.mFragment.mSavedViewState);
            }
            if (this.mFragment.mSavedViewRegistryState != null) {
                stateBundle.putBundle(VIEW_REGISTRY_STATE_KEY, this.mFragment.mSavedViewRegistryState);
            }
        }
        if (this.mFragment.mArguments != null) {
            stateBundle.putBundle(ARGUMENTS_KEY, this.mFragment.mArguments);
        }
        return stateBundle;
    }

    Fragment.SavedState saveInstanceState() {
        if (this.mFragment.mState > -1) {
            return new Fragment.SavedState(saveState());
        }
        return null;
    }

    void saveViewState() {
        if (this.mFragment.mView == null) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + this.mFragment + " with view " + this.mFragment.mView);
        }
        SparseArray<Parcelable> mStateArray = new SparseArray<>();
        this.mFragment.mView.saveHierarchyState(mStateArray);
        if (mStateArray.size() > 0) {
            this.mFragment.mSavedViewState = mStateArray;
        }
        Bundle outBundle = new Bundle();
        this.mFragment.mViewLifecycleOwner.performSave(outBundle);
        if (!outBundle.isEmpty()) {
            this.mFragment.mSavedViewRegistryState = outBundle;
        }
    }

    void destroyFragmentView() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.mFragment);
        }
        if (this.mFragment.mContainer != null && this.mFragment.mView != null) {
            this.mFragment.mContainer.removeView(this.mFragment.mView);
        }
        this.mFragment.performDestroyView();
        this.mDispatcher.dispatchOnFragmentViewDestroyed(this.mFragment, false);
        this.mFragment.mContainer = null;
        this.mFragment.mView = null;
        this.mFragment.mViewLifecycleOwner = null;
        this.mFragment.mViewLifecycleOwnerLiveData.setValue(null);
        this.mFragment.mInLayout = false;
    }

    void destroy() {
        Fragment target;
        boolean shouldClear;
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.mFragment);
        }
        boolean beingRemoved = this.mFragment.mRemoving && !this.mFragment.isInBackStack();
        if (beingRemoved && !this.mFragment.mBeingSaved) {
            this.mFragmentStore.setSavedState(this.mFragment.mWho, null);
        }
        boolean shouldDestroy = beingRemoved || this.mFragmentStore.getNonConfig().shouldDestroy(this.mFragment);
        if (shouldDestroy) {
            FragmentHostCallback<?> host = this.mFragment.mHost;
            if (host instanceof ViewModelStoreOwner) {
                shouldClear = this.mFragmentStore.getNonConfig().isCleared();
            } else if (host.getContext() instanceof Activity) {
                Activity activity = (Activity) host.getContext();
                shouldClear = true ^ activity.isChangingConfigurations();
            } else {
                shouldClear = true;
            }
            if ((beingRemoved && !this.mFragment.mBeingSaved) || shouldClear) {
                this.mFragmentStore.getNonConfig().clearNonConfigState(this.mFragment, false);
            }
            this.mFragment.performDestroy();
            this.mDispatcher.dispatchOnFragmentDestroyed(this.mFragment, false);
            for (FragmentStateManager fragmentStateManager : this.mFragmentStore.getActiveFragmentStateManagers()) {
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.getFragment();
                    if (this.mFragment.mWho.equals(fragment.mTargetWho)) {
                        fragment.mTarget = this.mFragment;
                        fragment.mTargetWho = null;
                    }
                }
            }
            if (this.mFragment.mTargetWho != null) {
                Fragment fragment2 = this.mFragment;
                fragment2.mTarget = this.mFragmentStore.findActiveFragment(fragment2.mTargetWho);
            }
            this.mFragmentStore.makeInactive(this);
            return;
        }
        if (this.mFragment.mTargetWho != null && (target = this.mFragmentStore.findActiveFragment(this.mFragment.mTargetWho)) != null && target.mRetainInstance) {
            this.mFragment.mTarget = target;
        }
        this.mFragment.mState = 0;
    }

    void detach() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.mFragment);
        }
        this.mFragment.performDetach();
        boolean z = false;
        this.mDispatcher.dispatchOnFragmentDetached(this.mFragment, false);
        this.mFragment.mState = -1;
        this.mFragment.mHost = null;
        this.mFragment.mParentFragment = null;
        this.mFragment.mFragmentManager = null;
        if (this.mFragment.mRemoving && !this.mFragment.isInBackStack()) {
            z = true;
        }
        boolean beingRemoved = z;
        if (beingRemoved || this.mFragmentStore.getNonConfig().shouldDestroy(this.mFragment)) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.mFragment);
            }
            this.mFragment.initState();
        }
    }

    void addViewToContainer() {
        Fragment expectedParent = FragmentManager.findViewFragment(this.mFragment.mContainer);
        Fragment actualParent = this.mFragment.getParentFragment();
        if (expectedParent != null && !expectedParent.equals(actualParent)) {
            Fragment fragment = this.mFragment;
            FragmentStrictMode.onWrongNestedHierarchy(fragment, expectedParent, fragment.mContainerId);
        }
        int index = this.mFragmentStore.findFragmentIndexInContainer(this.mFragment);
        this.mFragment.mContainer.addView(this.mFragment.mView, index);
    }
}
