package org.godotengine.godot.xr.ovr;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import org.godotengine.godot.gl.GLSurfaceView;

/* JADX INFO: loaded from: classes2.dex */
public class OvrContextFactory implements GLSurfaceView.EGLContextFactory {
    private static final int[] CONTEXT_ATTRIBS = {12440, 3, 12344};

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLContextFactory
    public EGLContext createContext(EGL10 egl, EGLDisplay display, EGLConfig eglConfig) {
        return egl.eglCreateContext(display, eglConfig, EGL10.EGL_NO_CONTEXT, CONTEXT_ATTRIBS);
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLContextFactory
    public void destroyContext(EGL10 egl, EGLDisplay display, EGLContext context) {
        egl.eglDestroyContext(display, context);
    }
}
