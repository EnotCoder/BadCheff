package org.godotengine.godot;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.utils.ProcessPhoenix;

/* JADX INFO: compiled from: GodotActivity.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0006\b&\u0018\u0000 62\u00020\u00012\u00020\u0002:\u00016B\u0005¢\u0006\u0002\u0010\u0003J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0010H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0015J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\tH\u0014J\"\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00142\b\u0010\u001f\u001a\u0004\u0018\u00010\u0018H\u0015J\b\u0010 \u001a\u00020\u0016H\u0016J\u0012\u0010!\u001a\u00020\u00162\b\u0010\"\u001a\u0004\u0018\u00010#H\u0015J\b\u0010$\u001a\u00020\u0016H\u0014J\u0010\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u0012H\u0016J\u0010\u0010'\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u0012H\u0016J\u001b\u0010(\u001a\u00020\u00142\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00060*H\u0016¢\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u0018H\u0014J+\u0010.\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u00142\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00060*2\u0006\u00100\u001a\u000201H\u0017¢\u0006\u0002\u00102J\u0010\u00103\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u0012H\u0002J\u001a\u00104\u001a\u00020\u00162\b\u00105\u001a\u0004\u0018\u00010#2\u0006\u0010\u0017\u001a\u00020\u0018H\u0004R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\t@BX\u0084\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u00067"}, d2 = {"Lorg/godotengine/godot/GodotActivity;", "Landroidx/fragment/app/FragmentActivity;", "Lorg/godotengine/godot/GodotHost;", "()V", "commandLineParams", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "<set-?>", "Lorg/godotengine/godot/GodotFragment;", "godotFragment", "getGodotFragment", "()Lorg/godotengine/godot/GodotFragment;", "getActivity", "Landroid/app/Activity;", "getCommandLine", "", "getGodot", "Lorg/godotengine/godot/Godot;", "getGodotAppLayout", "", "handleStartIntent", "", "intent", "Landroid/content/Intent;", "newLaunch", "", "initGodotInstance", "onActivityResult", "requestCode", "resultCode", "data", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onGodotForceQuit", "instance", "onGodotRestartRequested", "onNewGodotInstanceRequested", "args", "", "([Ljava/lang/String;)I", "onNewIntent", "newIntent", "onRequestPermissionsResult", "permissions", "grantResults", "", "(I[Ljava/lang/String;[I)V", "terminateGodotInstance", "triggerRebirth", "bundle", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class GodotActivity extends FragmentActivity implements GodotHost {
    private final ArrayList<String> commandLineParams = new ArrayList<>();
    private GodotFragment godotFragment;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = GodotActivity.class.getSimpleName();
    private static final String EXTRA_COMMAND_LINE_PARAMS = "command_line_params";
    private static final String EXTRA_NEW_LAUNCH = "new_launch_requested";
    private static final int DEFAULT_WINDOW_ID = 664;

    protected static final String getEXTRA_COMMAND_LINE_PARAMS() {
        return INSTANCE.getEXTRA_COMMAND_LINE_PARAMS();
    }

    protected static final String getEXTRA_NEW_LAUNCH() {
        return INSTANCE.getEXTRA_NEW_LAUNCH();
    }

    @Override // org.godotengine.godot.GodotHost
    public /* synthetic */ Set getHostPlugins(Godot godot) {
        return Collections.emptySet();
    }

    @Override // org.godotengine.godot.GodotHost
    public /* synthetic */ void onEditorWorkspaceSelected(String str) {
        GodotHost.CC.$default$onEditorWorkspaceSelected(this, str);
    }

    @Override // org.godotengine.godot.GodotHost
    public /* synthetic */ boolean onGodotForceQuit(int i) {
        return GodotHost.CC.$default$onGodotForceQuit(this, i);
    }

    @Override // org.godotengine.godot.GodotHost
    public /* synthetic */ void onGodotMainLoopStarted() {
        GodotHost.CC.$default$onGodotMainLoopStarted(this);
    }

    @Override // org.godotengine.godot.GodotHost
    public /* synthetic */ void onGodotSetupCompleted() {
        GodotHost.CC.$default$onGodotSetupCompleted(this);
    }

    @Override // org.godotengine.godot.GodotHost
    public /* synthetic */ Error signApk(String str, String str2, String str3, String str4, String str5) {
        return Error.ERR_UNAVAILABLE;
    }

    @Override // org.godotengine.godot.GodotHost
    public /* synthetic */ boolean supportsFeature(String str) {
        return GodotHost.CC.$default$supportsFeature(this, str);
    }

    @Override // org.godotengine.godot.GodotHost
    public /* synthetic */ Error verifyApk(String str) {
        return Error.ERR_UNAVAILABLE;
    }

    /* JADX INFO: compiled from: GodotActivity.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083D¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002R\u001c\u0010\u0006\u001a\u00020\u00078\u0004X\u0085D¢\u0006\u000e\n\u0000\u0012\u0004\b\b\u0010\u0002\u001a\u0004\b\t\u0010\nR\u001c\u0010\u000b\u001a\u00020\u00078\u0004X\u0085D¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\u0002\u001a\u0004\b\r\u0010\nR\u0016\u0010\u000e\u001a\n \u000f*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lorg/godotengine/godot/GodotActivity$Companion;", "", "()V", "DEFAULT_WINDOW_ID", "", "getDEFAULT_WINDOW_ID$annotations", "EXTRA_COMMAND_LINE_PARAMS", "", "getEXTRA_COMMAND_LINE_PARAMS$annotations", "getEXTRA_COMMAND_LINE_PARAMS", "()Ljava/lang/String;", "EXTRA_NEW_LAUNCH", "getEXTRA_NEW_LAUNCH$annotations", "getEXTRA_NEW_LAUNCH", "TAG", "kotlin.jvm.PlatformType", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        private static /* synthetic */ void getDEFAULT_WINDOW_ID$annotations() {
        }

        @JvmStatic
        protected static /* synthetic */ void getEXTRA_COMMAND_LINE_PARAMS$annotations() {
        }

        @JvmStatic
        protected static /* synthetic */ void getEXTRA_NEW_LAUNCH$annotations() {
        }

        private Companion() {
        }

        protected final String getEXTRA_COMMAND_LINE_PARAMS() {
            return GodotActivity.EXTRA_COMMAND_LINE_PARAMS;
        }

        protected final String getEXTRA_NEW_LAUNCH() {
            return GodotActivity.EXTRA_NEW_LAUNCH;
        }
    }

    protected final GodotFragment getGodotFragment() {
        return this.godotFragment;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        String[] strArr;
        String[] params = getIntent().getStringArrayExtra(EXTRA_COMMAND_LINE_PARAMS);
        String str = TAG;
        Intent intent = getIntent();
        String string = Arrays.toString(params);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Log.d(str, "Starting intent " + intent + " with parameters " + string);
        ArrayList<String> arrayList = this.commandLineParams;
        if (params != null) {
            strArr = params;
        } else {
            strArr = new String[0];
        }
        CollectionsKt.addAll(arrayList, strArr);
        super.onCreate(savedInstanceState);
        setContentView(getGodotAppLayout());
        Intent intent2 = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent2, "getIntent(...)");
        handleStartIntent(intent2, true);
        Fragment currentFragment = getSupportFragmentManager().findFragmentById(R.id.godot_fragment_container);
        if (currentFragment instanceof GodotFragment) {
            Log.v(str, "Reusing existing Godot fragment instance.");
            this.godotFragment = (GodotFragment) currentFragment;
            return;
        }
        Log.v(str, "Creating new Godot fragment instance.");
        this.godotFragment = initGodotInstance();
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        int i = R.id.godot_fragment_container;
        GodotFragment godotFragment = this.godotFragment;
        Intrinsics.checkNotNull(godotFragment);
        fragmentTransactionBeginTransaction.replace(i, godotFragment).setPrimaryNavigationFragment(this.godotFragment).commitNowAllowingStateLoss();
    }

    @Override // org.godotengine.godot.GodotHost
    public int onNewGodotInstanceRequested(String[] args) {
        Intrinsics.checkNotNullParameter(args, "args");
        String str = TAG;
        String string = Arrays.toString(args);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Log.d(str, "Restarting with parameters " + string);
        Intent intent = new Intent().setComponent(new ComponentName(this, getClass().getName())).addFlags(268435456).putExtra(EXTRA_COMMAND_LINE_PARAMS, args);
        Intrinsics.checkNotNullExpressionValue(intent, "putExtra(...)");
        triggerRebirth(null, intent);
        return DEFAULT_WINDOW_ID;
    }

    protected final void triggerRebirth(final Bundle bundle, final Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Godot godot = getGodot();
        if (godot != null) {
            godot.destroyAndKillProcess(new Runnable() { // from class: org.godotengine.godot.GodotActivity$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    GodotActivity.triggerRebirth$lambda$0(this.f$0, bundle, intent);
                }
            });
        } else {
            ProcessPhoenix.triggerRebirth(this, bundle, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void triggerRebirth$lambda$0(GodotActivity this$0, Bundle $bundle, Intent intent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(intent, "$intent");
        ProcessPhoenix.triggerRebirth(this$0, $bundle, intent);
    }

    protected int getGodotAppLayout() {
        return R.layout.godot_app_layout;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        Log.v(TAG, "Destroying GodotActivity " + this + "...");
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGodotForceQuit$lambda$1(GodotActivity this$0, Godot instance) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(instance, "$instance");
        this$0.terminateGodotInstance(instance);
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotForceQuit(final Godot instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        runOnUiThread(new Runnable() { // from class: org.godotengine.godot.GodotActivity$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                GodotActivity.onGodotForceQuit$lambda$1(this.f$0, instance);
            }
        });
    }

    private final void terminateGodotInstance(Godot instance) {
        GodotFragment it = this.godotFragment;
        if (it != null && instance == it.getGodot()) {
            Log.v(TAG, "Force quitting Godot instance");
            ProcessPhoenix.forceQuit(this);
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotRestartRequested(final Godot instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        runOnUiThread(new Runnable() { // from class: org.godotengine.godot.GodotActivity$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                GodotActivity.onGodotRestartRequested$lambda$4(this.f$0, instance);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGodotRestartRequested$lambda$4(GodotActivity this$0, Godot instance) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(instance, "$instance");
        GodotFragment it = this$0.godotFragment;
        if (it != null && instance == it.getGodot()) {
            Log.v(TAG, "Restarting Godot instance...");
            ProcessPhoenix.triggerRebirth(this$0);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent newIntent) {
        Intrinsics.checkNotNullParameter(newIntent, "newIntent");
        super.onNewIntent(newIntent);
        setIntent(newIntent);
        handleStartIntent(newIntent, false);
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment != null) {
            godotFragment.onNewIntent(newIntent);
        }
    }

    private final void handleStartIntent(Intent intent, boolean newLaunch) {
        if (!newLaunch) {
            String str = EXTRA_NEW_LAUNCH;
            boolean newLaunchRequested = intent.getBooleanExtra(str, false);
            if (newLaunchRequested) {
                Log.d(TAG, "New launch requested, restarting..");
                Intent restartIntent = new Intent(intent).putExtra(str, false);
                Intrinsics.checkNotNullExpressionValue(restartIntent, "putExtra(...)");
                ProcessPhoenix.triggerRebirth(this, restartIntent);
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment != null) {
            godotFragment.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment != null) {
            godotFragment.onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        switch (requestCode) {
            case 1001:
            case 1002:
                Log.d(TAG, "Received permissions request result..");
                int length = permissions.length;
                for (int i = 0; i < length; i++) {
                    boolean permissionGranted = grantResults[i] == 0;
                    Log.d(TAG, "Permission " + permissions[i] + " " + (permissionGranted ? "granted" : "denied"));
                }
                break;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Unit unit;
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment != null) {
            godotFragment.onBackPressed();
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            super.onBackPressed();
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public Activity getActivity() {
        return this;
    }

    @Override // org.godotengine.godot.GodotHost
    public Godot getGodot() {
        GodotFragment godotFragment = this.godotFragment;
        if (godotFragment != null) {
            return godotFragment.getGodot();
        }
        return null;
    }

    protected GodotFragment initGodotInstance() {
        return new GodotFragment();
    }

    @Override // org.godotengine.godot.GodotHost
    public List<String> getCommandLine() {
        return this.commandLineParams;
    }
}
