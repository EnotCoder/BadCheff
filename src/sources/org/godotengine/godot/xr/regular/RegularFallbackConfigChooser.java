package org.godotengine.godot.xr.regular;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: loaded from: classes2.dex */
public class RegularFallbackConfigChooser extends RegularConfigChooser {
    private static final String TAG = RegularFallbackConfigChooser.class.getSimpleName();
    private RegularConfigChooser fallback;

    public RegularFallbackConfigChooser(int r, int g, int b, int a, int depth, int stencil, RegularConfigChooser fallback) {
        super(r, g, b, a, depth, stencil);
        this.fallback = fallback;
    }

    @Override // org.godotengine.godot.xr.regular.RegularConfigChooser
    public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display, EGLConfig[] configs) {
        EGLConfig ec = super.chooseConfig(egl, display, configs);
        if (ec == null) {
            Log.w(TAG, "Trying ConfigChooser fallback");
            return this.fallback.chooseConfig(egl, display, configs);
        }
        return ec;
    }
}
