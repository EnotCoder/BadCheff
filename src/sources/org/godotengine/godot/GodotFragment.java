package org.godotengine.godot;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Messenger;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.vending.expansion.downloader.DownloadProgressInfo;
import com.google.android.vending.expansion.downloader.DownloaderClientMarshaller;
import com.google.android.vending.expansion.downloader.DownloaderServiceMarshaller;
import com.google.android.vending.expansion.downloader.Helpers;
import com.google.android.vending.expansion.downloader.IDownloaderClient;
import com.google.android.vending.expansion.downloader.IDownloaderService;
import com.google.android.vending.expansion.downloader.IStub;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.utils.BenchmarkUtils;

/* JADX INFO: loaded from: classes2.dex */
public class GodotFragment extends Fragment implements IDownloaderClient, GodotHost {
    private static final String TAG = GodotFragment.class.getSimpleName();
    private static Intent mCurrentIntent;
    private Godot godot;
    private FrameLayout godotContainerLayout;
    private TextView mAverageSpeed;
    private View mCellMessage;
    private View mDashboard;
    private IStub mDownloaderClientStub;
    private ProgressBar mPB;
    private Button mPauseButton;
    private TextView mProgressFraction;
    private TextView mProgressPercent;
    private int mState;
    private boolean mStatePaused;
    private TextView mStatusText;
    private TextView mTimeRemaining;
    private Button mWiFiSettingsButton;
    private GodotHost parentHost;
    public ResultCallback resultCallback;

    public interface ResultCallback {
        void callback(int i, int i2, Intent intent);
    }

    @Override // org.godotengine.godot.GodotHost
    public /* bridge */ /* synthetic */ Activity getActivity() {
        return super.getActivity();
    }

    public void onNewIntent(Intent intent) {
        mCurrentIntent = intent;
    }

    public static Intent getCurrentIntent() {
        return mCurrentIntent;
    }

    private void setState(int newState) {
        if (this.mState != newState) {
            this.mState = newState;
            this.mStatusText.setText(Helpers.getDownloaderStringResourceIDFromState(newState));
        }
    }

    private void setButtonPausedState(boolean paused) {
        this.mStatePaused = paused;
        int stringResourceID = paused ? R.string.text_button_resume : R.string.text_button_pause;
        this.mPauseButton.setText(stringResourceID);
    }

    @Override // org.godotengine.godot.GodotHost
    public Godot getGodot() {
        return this.godot;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getParentFragment() instanceof GodotHost) {
            this.parentHost = (GodotHost) getParentFragment();
        } else if (getActivity() instanceof GodotHost) {
            this.parentHost = (GodotHost) getActivity();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.parentHost = null;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        this.godot.onConfigurationChanged(newConfig);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        ResultCallback resultCallback = this.resultCallback;
        if (resultCallback != null) {
            resultCallback.callback(requestCode, resultCode, data);
            this.resultCallback = null;
        }
        this.godot.onActivityResult(requestCode, resultCode, data);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        this.godot.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override // com.google.android.vending.expansion.downloader.IDownloaderClient
    public void onServiceConnected(Messenger m) {
        IDownloaderService remoteService = DownloaderServiceMarshaller.CreateProxy(m);
        remoteService.onClientUpdated(this.mDownloaderClientStub.getMessenger());
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle icicle) throws Throwable {
        BenchmarkUtils.beginBenchmarkMeasure("Startup", "GodotFragment::onCreate");
        super.onCreate(icicle);
        Activity activity = getActivity();
        mCurrentIntent = activity.getIntent();
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            this.godot = godotHost.getGodot();
        }
        if (this.godot == null) {
            this.godot = new Godot(requireContext());
        }
        performEngineInitialization();
        BenchmarkUtils.endBenchmarkMeasure("Startup", "GodotFragment::onCreate");
    }

    private void performEngineInitialization() throws Throwable {
        String errorMessage;
        PendingIntent pendingIntent;
        try {
            this.godot.onCreate(this);
            if (!this.godot.onInitNativeLayer(this)) {
                throw new IllegalStateException("Unable to initialize engine native layer");
            }
            FrameLayout frameLayoutOnInitRenderView = this.godot.onInitRenderView(this);
            this.godotContainerLayout = frameLayoutOnInitRenderView;
            if (frameLayoutOnInitRenderView == null) {
                throw new IllegalStateException("Unable to initialize engine render view");
            }
        } catch (IllegalArgumentException e) {
            Activity activity = getActivity();
            Intent notifierIntent = new Intent(activity, activity.getClass());
            notifierIntent.setFlags(335544320);
            if (Build.VERSION.SDK_INT >= 23) {
                pendingIntent = PendingIntent.getActivity(activity, 0, notifierIntent, 201326592);
            } else {
                pendingIntent = PendingIntent.getActivity(activity, 0, notifierIntent, 134217728);
            }
            try {
                int startResult = DownloaderClientMarshaller.startDownloadServiceIfRequired(getContext(), pendingIntent, (Class<?>) GodotDownloaderService.class);
                if (startResult != 0) {
                    this.mDownloaderClientStub = DownloaderClientMarshaller.CreateStub(this, GodotDownloaderService.class);
                } else {
                    performEngineInitialization();
                }
            } catch (PackageManager.NameNotFoundException e2) {
                Log.e(TAG, "Unable to start download service", e2);
            }
        } catch (IllegalStateException e3) {
            Log.e(TAG, "Engine initialization failed", e3);
            if (TextUtils.isEmpty(e3.getMessage())) {
                errorMessage = getString(R.string.error_engine_setup_message);
            } else {
                errorMessage = e3.getMessage();
            }
            Godot godot = this.godot;
            String string = getString(R.string.text_error_title);
            final Godot godot2 = this.godot;
            Objects.requireNonNull(godot2);
            godot.alert(errorMessage, string, new Runnable() { // from class: org.godotengine.godot.GodotFragment$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    godot2.destroyAndKillProcess();
                }
            });
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle icicle) {
        if (this.mDownloaderClientStub != null) {
            View downloadingExpansionView = inflater.inflate(R.layout.downloading_expansion, container, false);
            this.mPB = (ProgressBar) downloadingExpansionView.findViewById(R.id.progressBar);
            this.mStatusText = (TextView) downloadingExpansionView.findViewById(R.id.statusText);
            this.mProgressFraction = (TextView) downloadingExpansionView.findViewById(R.id.progressAsFraction);
            this.mProgressPercent = (TextView) downloadingExpansionView.findViewById(R.id.progressAsPercentage);
            this.mAverageSpeed = (TextView) downloadingExpansionView.findViewById(R.id.progressAverageSpeed);
            this.mTimeRemaining = (TextView) downloadingExpansionView.findViewById(R.id.progressTimeRemaining);
            this.mDashboard = downloadingExpansionView.findViewById(R.id.downloaderDashboard);
            this.mCellMessage = downloadingExpansionView.findViewById(R.id.approveCellular);
            this.mPauseButton = (Button) downloadingExpansionView.findViewById(R.id.pauseButton);
            this.mWiFiSettingsButton = (Button) downloadingExpansionView.findViewById(R.id.wifiSettingsButton);
            return downloadingExpansionView;
        }
        return this.godotContainerLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        this.godot.onDestroy(this);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (!this.godot.isInitialized()) {
            IStub iStub = this.mDownloaderClientStub;
            if (iStub != null) {
                iStub.disconnect(getActivity());
                return;
            }
            return;
        }
        this.godot.onPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (!this.godot.isInitialized()) {
            IStub iStub = this.mDownloaderClientStub;
            if (iStub != null) {
                iStub.disconnect(getActivity());
                return;
            }
            return;
        }
        this.godot.onStop(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (!this.godot.isInitialized()) {
            IStub iStub = this.mDownloaderClientStub;
            if (iStub != null) {
                iStub.connect(getActivity());
                return;
            }
            return;
        }
        this.godot.onStart(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (!this.godot.isInitialized()) {
            IStub iStub = this.mDownloaderClientStub;
            if (iStub != null) {
                iStub.connect(getActivity());
                return;
            }
            return;
        }
        this.godot.onResume(this);
    }

    public void onBackPressed() {
        this.godot.onBackPressed();
    }

    @Override // com.google.android.vending.expansion.downloader.IDownloaderClient
    public void onDownloadStateChanged(int newState) throws Throwable {
        boolean paused;
        boolean indeterminate;
        setState(newState);
        boolean showDashboard = true;
        boolean showCellMessage = false;
        switch (newState) {
            case 1:
                paused = false;
                indeterminate = true;
                break;
            case 2:
            case 3:
                showDashboard = true;
                paused = false;
                indeterminate = true;
                break;
            case 4:
                paused = false;
                showDashboard = true;
                indeterminate = false;
                break;
            case 5:
                performEngineInitialization();
                return;
            case 6:
            case 10:
            case 11:
            case 13:
            case 17:
            default:
                paused = true;
                indeterminate = true;
                showDashboard = true;
                break;
            case 7:
                paused = true;
                indeterminate = false;
                break;
            case 8:
            case 9:
                showDashboard = false;
                paused = true;
                indeterminate = false;
                showCellMessage = true;
                break;
            case 12:
            case 14:
                paused = true;
                indeterminate = false;
                break;
            case 15:
            case 16:
            case 18:
            case 19:
                paused = true;
                showDashboard = false;
                indeterminate = false;
                break;
        }
        int newDashboardVisibility = showDashboard ? 0 : 8;
        if (this.mDashboard.getVisibility() != newDashboardVisibility) {
            this.mDashboard.setVisibility(newDashboardVisibility);
        }
        int cellMessageVisibility = showCellMessage ? 0 : 8;
        if (this.mCellMessage.getVisibility() != cellMessageVisibility) {
            this.mCellMessage.setVisibility(cellMessageVisibility);
        }
        this.mPB.setIndeterminate(indeterminate);
        setButtonPausedState(paused);
    }

    @Override // com.google.android.vending.expansion.downloader.IDownloaderClient
    public void onDownloadProgress(DownloadProgressInfo progress) {
        this.mAverageSpeed.setText(getString(R.string.kilobytes_per_second, Helpers.getSpeedString(progress.mCurrentSpeed)));
        this.mTimeRemaining.setText(getString(R.string.time_remaining, Helpers.getTimeRemaining(progress.mTimeRemaining)));
        this.mPB.setMax((int) (progress.mOverallTotal >> 8));
        this.mPB.setProgress((int) (progress.mOverallProgress >> 8));
        this.mProgressPercent.setText(String.format(Locale.ENGLISH, "%d %%", Long.valueOf((progress.mOverallProgress * 100) / progress.mOverallTotal)));
        this.mProgressFraction.setText(Helpers.getDownloadProgressString(progress.mOverallProgress, progress.mOverallTotal));
    }

    @Override // org.godotengine.godot.GodotHost
    public List<String> getCommandLine() {
        GodotHost godotHost = this.parentHost;
        return godotHost != null ? godotHost.getCommandLine() : Collections.emptyList();
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotSetupCompleted() {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onGodotSetupCompleted();
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotMainLoopStarted() {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onGodotMainLoopStarted();
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotForceQuit(Godot instance) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onGodotForceQuit(instance);
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public boolean onGodotForceQuit(int godotInstanceId) {
        GodotHost godotHost = this.parentHost;
        return godotHost != null && godotHost.onGodotForceQuit(godotInstanceId);
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotRestartRequested(Godot instance) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onGodotRestartRequested(instance);
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public int onNewGodotInstanceRequested(String[] args) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            return godotHost.onNewGodotInstanceRequested(args);
        }
        return -1;
    }

    @Override // org.godotengine.godot.GodotHost
    public Set<GodotPlugin> getHostPlugins(Godot engine) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            return godotHost.getHostPlugins(engine);
        }
        return Collections.emptySet();
    }

    @Override // org.godotengine.godot.GodotHost
    public Error signApk(String inputPath, String outputPath, String keystorePath, String keystoreUser, String keystorePassword) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            return godotHost.signApk(inputPath, outputPath, keystorePath, keystoreUser, keystorePassword);
        }
        return Error.ERR_UNAVAILABLE;
    }

    @Override // org.godotengine.godot.GodotHost
    public Error verifyApk(String apkPath) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            return godotHost.verifyApk(apkPath);
        }
        return Error.ERR_UNAVAILABLE;
    }

    @Override // org.godotengine.godot.GodotHost
    public boolean supportsFeature(String featureTag) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            return godotHost.supportsFeature(featureTag);
        }
        return false;
    }

    @Override // org.godotengine.godot.GodotHost
    public void onEditorWorkspaceSelected(String workspace) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onEditorWorkspaceSelected(workspace);
        }
    }
}
