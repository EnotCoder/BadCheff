package org.godotengine.godot.xr.regular;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import org.godotengine.godot.gl.GLSurfaceView;

/* JADX INFO: loaded from: classes2.dex */
public class RegularConfigChooser implements GLSurfaceView.EGLConfigChooser {
    protected int mAlphaSize;
    protected int mBlueSize;
    protected int mDepthSize;
    protected int mGreenSize;
    protected int mRedSize;
    protected int mStencilSize;
    private int[] mValue = new int[1];
    private static final String TAG = RegularConfigChooser.class.getSimpleName();
    private static int EGL_OPENGL_ES2_BIT = 4;
    private static int[] s_configAttribs = {12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344};

    public RegularConfigChooser(int r, int g, int b, int a, int depth, int stencil) {
        this.mRedSize = r;
        this.mGreenSize = g;
        this.mBlueSize = b;
        this.mAlphaSize = a;
        this.mDepthSize = depth;
        this.mStencilSize = stencil;
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display) {
        int[] num_config = new int[1];
        egl.eglChooseConfig(display, s_configAttribs, null, 0, num_config);
        int numConfigs = num_config[0];
        if (numConfigs <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] configs = new EGLConfig[numConfigs];
        egl.eglChooseConfig(display, s_configAttribs, configs, numConfigs, num_config);
        return chooseConfig(egl, display, configs);
    }

    public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display, EGLConfig[] configs) {
        for (EGLConfig config : configs) {
            int d = findConfigAttrib(egl, display, config, 12325, 0);
            int s = findConfigAttrib(egl, display, config, 12326, 0);
            if (d >= this.mDepthSize && s >= this.mStencilSize) {
                int r = findConfigAttrib(egl, display, config, 12324, 0);
                int g = findConfigAttrib(egl, display, config, 12323, 0);
                int b = findConfigAttrib(egl, display, config, 12322, 0);
                int a = findConfigAttrib(egl, display, config, 12321, 0);
                if (r == this.mRedSize && g == this.mGreenSize && b == this.mBlueSize && a == this.mAlphaSize) {
                    return config;
                }
            }
        }
        return null;
    }

    private int findConfigAttrib(EGL10 egl, EGLDisplay display, EGLConfig config, int attribute, int defaultValue) {
        if (egl.eglGetConfigAttrib(display, config, attribute, this.mValue)) {
            return this.mValue[0];
        }
        return defaultValue;
    }
}
