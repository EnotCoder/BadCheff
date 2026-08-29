package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Preconditions;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.app.LoaderManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FragmentController {
    private final FragmentHostCallback<?> mHost;

    public static FragmentController createController(FragmentHostCallback<?> callbacks) {
        return new FragmentController((FragmentHostCallback) Preconditions.checkNotNull(callbacks, "callbacks == null"));
    }

    private FragmentController(FragmentHostCallback<?> callbacks) {
        this.mHost = callbacks;
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mHost.getFragmentManager();
    }

    @Deprecated
    public LoaderManager getSupportLoaderManager() {
        throw new UnsupportedOperationException("Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager.");
    }

    public Fragment findFragmentByWho(String who) {
        return this.mHost.getFragmentManager().findFragmentByWho(who);
    }

    public int getActiveFragmentsCount() {
        return this.mHost.getFragmentManager().getActiveFragmentCount();
    }

    public List<Fragment> getActiveFragments(List<Fragment> actives) {
        return this.mHost.getFragmentManager().getActiveFragments();
    }

    public void attachHost(Fragment parent) {
        FragmentManager fragmentManager = this.mHost.getFragmentManager();
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        fragmentManager.attachController(fragmentHostCallback, fragmentHostCallback, parent);
    }

    public View onCreateView(View parent, String name, Context context, AttributeSet attrs) {
        return this.mHost.getFragmentManager().getLayoutInflaterFactory().onCreateView(parent, name, context, attrs);
    }

    public void noteStateNotSaved() {
        this.mHost.getFragmentManager().noteStateNotSaved();
    }

    @Deprecated
    public Parcelable saveAllState() {
        return this.mHost.getFragmentManager().saveAllState();
    }

    @Deprecated
    public void restoreAllState(Parcelable state, List<Fragment> nonConfigList) {
        this.mHost.getFragmentManager().restoreAllState(state, new FragmentManagerNonConfig(nonConfigList, null, null));
    }

    @Deprecated
    public void restoreAllState(Parcelable state, FragmentManagerNonConfig nonConfig) {
        this.mHost.getFragmentManager().restoreAllState(state, nonConfig);
    }

    @Deprecated
    public void restoreSaveState(Parcelable state) {
        FragmentHostCallback<?> fragmentHostCallback = this.mHost;
        if (!(fragmentHostCallback instanceof ViewModelStoreOwner)) {
            throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
        }
        fragmentHostCallback.getFragmentManager().restoreSaveState(state);
    }

    @Deprecated
    public List<Fragment> retainNonConfig() {
        FragmentManagerNonConfig nonconf = this.mHost.getFragmentManager().retainNonConfig();
        if (nonconf != null && nonconf.getFragments() != null) {
            return new ArrayList(nonconf.getFragments());
        }
        return null;
    }

    @Deprecated
    public FragmentManagerNonConfig retainNestedNonConfig() {
        return this.mHost.getFragmentManager().retainNonConfig();
    }

    public void dispatchCreate() {
        this.mHost.getFragmentManager().dispatchCreate();
    }

    public void dispatchActivityCreated() {
        this.mHost.getFragmentManager().dispatchActivityCreated();
    }

    public void dispatchStart() {
        this.mHost.getFragmentManager().dispatchStart();
    }

    public void dispatchResume() {
        this.mHost.getFragmentManager().dispatchResume();
    }

    public void dispatchPause() {
        this.mHost.getFragmentManager().dispatchPause();
    }

    public void dispatchStop() {
        this.mHost.getFragmentManager().dispatchStop();
    }

    @Deprecated
    public void dispatchReallyStop() {
    }

    public void dispatchDestroyView() {
        this.mHost.getFragmentManager().dispatchDestroyView();
    }

    public void dispatchDestroy() {
        this.mHost.getFragmentManager().dispatchDestroy();
    }

    @Deprecated
    public void dispatchMultiWindowModeChanged(boolean isInMultiWindowMode) {
        this.mHost.getFragmentManager().dispatchMultiWindowModeChanged(isInMultiWindowMode, true);
    }

    @Deprecated
    public void dispatchPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        this.mHost.getFragmentManager().dispatchPictureInPictureModeChanged(isInPictureInPictureMode, true);
    }

    @Deprecated
    public void dispatchConfigurationChanged(Configuration newConfig) {
        this.mHost.getFragmentManager().dispatchConfigurationChanged(newConfig, true);
    }

    @Deprecated
    public void dispatchLowMemory() {
        this.mHost.getFragmentManager().dispatchLowMemory(true);
    }

    @Deprecated
    public boolean dispatchCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        return this.mHost.getFragmentManager().dispatchCreateOptionsMenu(menu, inflater);
    }

    @Deprecated
    public boolean dispatchPrepareOptionsMenu(Menu menu) {
        return this.mHost.getFragmentManager().dispatchPrepareOptionsMenu(menu);
    }

    @Deprecated
    public boolean dispatchOptionsItemSelected(MenuItem item) {
        return this.mHost.getFragmentManager().dispatchOptionsItemSelected(item);
    }

    public boolean dispatchContextItemSelected(MenuItem item) {
        return this.mHost.getFragmentManager().dispatchContextItemSelected(item);
    }

    @Deprecated
    public void dispatchOptionsMenuClosed(Menu menu) {
        this.mHost.getFragmentManager().dispatchOptionsMenuClosed(menu);
    }

    public boolean execPendingActions() {
        return this.mHost.getFragmentManager().execPendingActions(true);
    }

    @Deprecated
    public void doLoaderStart() {
    }

    @Deprecated
    public void doLoaderStop(boolean retain) {
    }

    @Deprecated
    public void doLoaderRetain() {
    }

    @Deprecated
    public void doLoaderDestroy() {
    }

    @Deprecated
    public void reportLoaderStart() {
    }

    @Deprecated
    public SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        return null;
    }

    @Deprecated
    public void restoreLoaderNonConfig(SimpleArrayMap<String, LoaderManager> loaderManagers) {
    }

    @Deprecated
    public void dumpLoaders(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
    }
}
