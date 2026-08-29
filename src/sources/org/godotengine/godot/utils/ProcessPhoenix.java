package org.godotengine.godot.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ProcessPhoenix extends Activity {
    private static final String KEY_MAIN_PROCESS_PID = "phoenix_main_process_pid";
    private static final String KEY_RESTART_ACTIVITY_OPTIONS = "phoenix_restart_activity_options";
    private static final String KEY_RESTART_INTENTS = "phoenix_restart_intents";

    public static void triggerRebirth(Context context) {
        triggerRebirth(context, getRestartIntent(context));
    }

    public static void triggerRebirth(Context context, Intent... nextIntents) {
        triggerRebirth(context, null, nextIntents);
    }

    public static void triggerRebirth(Context context, Bundle activityOptions, Intent... nextIntents) {
        if (nextIntents.length < 1) {
            throw new IllegalArgumentException("intents cannot be empty");
        }
        nextIntents[0].addFlags(268468224);
        Intent intent = new Intent(context, (Class<?>) ProcessPhoenix.class);
        intent.addFlags(268435456);
        intent.putParcelableArrayListExtra(KEY_RESTART_INTENTS, new ArrayList<>(Arrays.asList(nextIntents)));
        intent.putExtra(KEY_MAIN_PROCESS_PID, Process.myPid());
        if (activityOptions != null) {
            intent.putExtra(KEY_RESTART_ACTIVITY_OPTIONS, activityOptions);
        }
        context.startActivity(intent);
    }

    public static void forceQuit(Activity activity) {
        forceQuit(activity, Process.myPid());
    }

    public static void forceQuit(Activity activity, int pid) {
        Process.killProcess(pid);
        activity.finishAndRemoveTask();
        Runtime.getRuntime().exit(0);
    }

    private static Intent getRestartIntent(Context context) {
        String packageName = context.getPackageName();
        Intent defaultIntent = context.getPackageManager().getLaunchIntentForPackage(packageName);
        if (defaultIntent != null) {
            return defaultIntent;
        }
        throw new IllegalStateException("Unable to determine default activity for " + packageName + ". Does an activity specify the DEFAULT category in its intent filter?");
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent launchIntent = getIntent();
        ArrayList<Intent> intents = launchIntent.getParcelableArrayListExtra(KEY_RESTART_INTENTS);
        Bundle activityOptions = launchIntent.getBundleExtra(KEY_RESTART_ACTIVITY_OPTIONS);
        startActivities((Intent[]) intents.toArray(new Intent[intents.size()]), activityOptions);
        forceQuit(this, launchIntent.getIntExtra(KEY_MAIN_PROCESS_PID, -1));
    }

    public static boolean isPhoenixProcess(Context context) {
        int currentPid = Process.myPid();
        ActivityManager manager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> runningProcesses = manager.getRunningAppProcesses();
        if (runningProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo processInfo : runningProcesses) {
                if (processInfo.pid == currentPid && processInfo.processName.endsWith(":phoenix")) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
