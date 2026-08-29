package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;

/* JADX INFO: loaded from: classes.dex */
class FragmentViewLifecycleOwner implements HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ViewModelStoreOwner {
    private ViewModelProvider.Factory mDefaultFactory;
    private final Fragment mFragment;
    private final Runnable mRestoreViewSavedStateRunnable;
    private final ViewModelStore mViewModelStore;
    private LifecycleRegistry mLifecycleRegistry = null;
    private SavedStateRegistryController mSavedStateRegistryController = null;

    FragmentViewLifecycleOwner(Fragment fragment, ViewModelStore viewModelStore, Runnable restoreViewSavedStateRunnable) {
        this.mFragment = fragment;
        this.mViewModelStore = viewModelStore;
        this.mRestoreViewSavedStateRunnable = restoreViewSavedStateRunnable;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public ViewModelStore getViewModelStore() {
        initialize();
        return this.mViewModelStore;
    }

    void initialize() {
        if (this.mLifecycleRegistry == null) {
            this.mLifecycleRegistry = new LifecycleRegistry(this);
            SavedStateRegistryController savedStateRegistryControllerCreate = SavedStateRegistryController.create(this);
            this.mSavedStateRegistryController = savedStateRegistryControllerCreate;
            savedStateRegistryControllerCreate.performAttach();
            this.mRestoreViewSavedStateRunnable.run();
        }
    }

    boolean isInitialized() {
        return this.mLifecycleRegistry != null;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public Lifecycle getLifecycle() {
        initialize();
        return this.mLifecycleRegistry;
    }

    void setCurrentState(Lifecycle.State state) {
        this.mLifecycleRegistry.setCurrentState(state);
    }

    void handleLifecycleEvent(Lifecycle.Event event) {
        this.mLifecycleRegistry.handleLifecycleEvent(event);
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        ViewModelProvider.Factory currentFactory = this.mFragment.getDefaultViewModelProviderFactory();
        if (!currentFactory.equals(this.mFragment.mDefaultFactory)) {
            this.mDefaultFactory = currentFactory;
            return currentFactory;
        }
        if (this.mDefaultFactory == null) {
            Application application = null;
            for (Context appContext = this.mFragment.requireContext().getApplicationContext(); appContext instanceof ContextWrapper; appContext = ((ContextWrapper) appContext).getBaseContext()) {
                if (appContext instanceof Application) {
                    application = (Application) appContext;
                    break;
                }
            }
            Fragment fragment = this.mFragment;
            this.mDefaultFactory = new SavedStateViewModelFactory(application, fragment, fragment.getArguments());
        }
        return this.mDefaultFactory;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public CreationExtras getDefaultViewModelCreationExtras() {
        Application application = null;
        for (Context appContext = this.mFragment.requireContext().getApplicationContext(); appContext instanceof ContextWrapper; appContext = ((ContextWrapper) appContext).getBaseContext()) {
            if (appContext instanceof Application) {
                application = (Application) appContext;
                break;
            }
        }
        MutableCreationExtras extras = new MutableCreationExtras();
        if (application != null) {
            extras.set(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY, application);
        }
        extras.set(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY, this.mFragment);
        extras.set(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY, this);
        if (this.mFragment.getArguments() != null) {
            extras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, this.mFragment.getArguments());
        }
        return extras;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public SavedStateRegistry getSavedStateRegistry() {
        initialize();
        return this.mSavedStateRegistryController.getSavedStateRegistry();
    }

    void performRestore(Bundle savedState) {
        this.mSavedStateRegistryController.performRestore(savedState);
    }

    void performSave(Bundle outBundle) {
        this.mSavedStateRegistryController.performSave(outBundle);
    }
}
