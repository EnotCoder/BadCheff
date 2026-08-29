package org.godotengine.godot.xr.ovr;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import org.godotengine.godot.gl.GLSurfaceView;

/* JADX INFO: loaded from: classes2.dex */
public class OvrConfigChooser implements GLSurfaceView.EGLConfigChooser {
    private static final int[] CONFIG_ATTRIBS = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12337, 0, 12344};

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display) {
        int[] iArr;
        int[] numConfig = new int[1];
        if (!egl.eglGetConfigs(display, null, 0, numConfig)) {
            throw new IllegalArgumentException("eglGetConfigs failed.");
        }
        int configsCount = numConfig[0];
        if (configsCount <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] configs = new EGLConfig[configsCount];
        if (!egl.eglGetConfigs(display, configs, configsCount, numConfig)) {
            throw new IllegalArgumentException("eglGetConfigs #2 failed.");
        }
        int[] value = new int[1];
        for (EGLConfig config : configs) {
            egl.eglGetConfigAttrib(display, config, 12352, value);
            if ((value[0] & 64) == 64) {
                egl.eglGetConfigAttrib(display, config, 12339, value);
                if ((value[0] & 5) != 5) {
                    continue;
                } else {
                    int attribIndex = 0;
                    while (true) {
                        iArr = CONFIG_ATTRIBS;
                        int i = iArr[attribIndex];
                        if (i == 12344) {
                            break;
                        }
                        egl.eglGetConfigAttrib(display, config, i, value);
                        if (value[0] != iArr[attribIndex + 1]) {
                            break;
                        }
                        attribIndex += 2;
                    }
                    if (iArr[attribIndex] == 12344) {
                        return config;
                    }
                }
            }
        }
        return null;
    }
}
