package org.godotengine.godot.xr.ovr;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import org.godotengine.godot.gl.GLSurfaceView;

/* JADX INFO: loaded from: classes2.dex */
public class OvrWindowSurfaceFactory implements GLSurfaceView.EGLWindowSurfaceFactory {
    private static final int[] SURFACE_ATTRIBS = {12375, 16, 12374, 16, 12344};

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLWindowSurfaceFactory
    public EGLSurface createWindowSurface(EGL10 egl, EGLDisplay display, EGLConfig config, Object nativeWindow) {
        return egl.eglCreatePbufferSurface(display, config, SURFACE_ATTRIBS);
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLWindowSurfaceFactory
    public void destroySurface(EGL10 egl, EGLDisplay display, EGLSurface surface) {
        egl.eglDestroySurface(display, surface);
    }
}
