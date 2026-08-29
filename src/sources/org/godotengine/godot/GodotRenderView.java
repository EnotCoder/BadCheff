package org.godotengine.godot;

import android.view.SurfaceView;
import org.godotengine.godot.input.GodotInputHandler;
import org.godotengine.godot.utils.DeviceUtils;

/* JADX INFO: loaded from: classes2.dex */
public interface GodotRenderView {
    boolean canCapturePointer();

    void configurePointerIcon(int i, String str, float f, float f2);

    GodotInputHandler getInputHandler();

    SurfaceView getView();

    void onActivityDestroyed();

    void onActivityPaused();

    void onActivityResumed();

    void onActivityStarted();

    void onActivityStopped();

    void queueOnRenderThread(Runnable runnable);

    void setPointerIcon(int i);

    void startRenderer();

    /* JADX INFO: renamed from: org.godotengine.godot.GodotRenderView$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static boolean $default$canCapturePointer(GodotRenderView _this) {
            return !DeviceUtils.isNativeXRDevice(_this.getView().getContext()) && _this.getInputHandler().canCapturePointer();
        }
    }
}
