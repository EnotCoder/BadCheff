package org.godotengine.godot;

import android.app.Activity;
import java.util.List;
import java.util.Set;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.plugin.GodotPlugin;

/* JADX INFO: loaded from: classes2.dex */
public interface GodotHost {
    Activity getActivity();

    List<String> getCommandLine();

    Godot getGodot();

    Set<GodotPlugin> getHostPlugins(Godot godot);

    void onEditorWorkspaceSelected(String str);

    void onGodotForceQuit(Godot godot);

    boolean onGodotForceQuit(int i);

    void onGodotMainLoopStarted();

    void onGodotRestartRequested(Godot godot);

    void onGodotSetupCompleted();

    int onNewGodotInstanceRequested(String[] strArr);

    Error signApk(String str, String str2, String str3, String str4, String str5);

    boolean supportsFeature(String str);

    Error verifyApk(String str);

    /* JADX INFO: renamed from: org.godotengine.godot.GodotHost$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$onGodotSetupCompleted(GodotHost _this) {
        }

        public static void $default$onGodotMainLoopStarted(GodotHost _this) {
        }

        public static void $default$onGodotForceQuit(GodotHost _this, Godot instance) {
        }

        public static boolean $default$onGodotForceQuit(GodotHost _this, int godotInstanceId) {
            return false;
        }

        public static void $default$onGodotRestartRequested(GodotHost _this, Godot instance) {
        }

        public static int $default$onNewGodotInstanceRequested(GodotHost _this, String[] args) {
            return -1;
        }

        public static boolean $default$supportsFeature(GodotHost _this, String featureTag) {
            return false;
        }

        public static void $default$onEditorWorkspaceSelected(GodotHost _this, String workspace) {
        }
    }
}
