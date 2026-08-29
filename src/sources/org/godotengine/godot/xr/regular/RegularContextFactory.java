package org.godotengine.godot.xr.regular;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import org.godotengine.godot.gl.GLSurfaceView;
import org.godotengine.godot.utils.GLUtils;

/* JADX INFO: loaded from: classes2.dex */
public class RegularContextFactory implements GLSurfaceView.EGLContextFactory {
    private static final int _EGL_CONTEXT_FLAGS_KHR = 12540;
    private static final int _EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR = 1;
    private final boolean mUseDebugOpengl;
    private static final String TAG = RegularContextFactory.class.getSimpleName();
    private static int EGL_CONTEXT_CLIENT_VERSION = 12440;

    public RegularContextFactory() {
        this(false);
    }

    public RegularContextFactory(boolean useDebugOpengl) {
        this.mUseDebugOpengl = useDebugOpengl;
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLContextFactory
    public EGLContext createContext(EGL10 egl, EGLDisplay display, EGLConfig eglConfig) {
        EGLContext context;
        String str = TAG;
        Log.w(str, "creating OpenGL ES 3.0 context :");
        GLUtils.checkEglError(str, "Before eglCreateContext", egl);
        int i = EGL_CONTEXT_CLIENT_VERSION;
        int[] debug_attrib_list = {i, 3, _EGL_CONTEXT_FLAGS_KHR, 1, 12344};
        int[] attrib_list = {i, 3, 12344};
        if (this.mUseDebugOpengl) {
            context = egl.eglCreateContext(display, eglConfig, EGL10.EGL_NO_CONTEXT, debug_attrib_list);
            if (context == null || context == EGL10.EGL_NO_CONTEXT) {
                Log.w(str, "creating 'OpenGL Debug' context failed");
                context = egl.eglCreateContext(display, eglConfig, EGL10.EGL_NO_CONTEXT, attrib_list);
            }
        } else {
            EGLContext context2 = EGL10.EGL_NO_CONTEXT;
            context = egl.eglCreateContext(display, eglConfig, context2, attrib_list);
        }
        GLUtils.checkEglError(str, "After eglCreateContext", egl);
        return context;
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLContextFactory
    public void destroyContext(EGL10 egl, EGLDisplay display, EGLContext context) {
        egl.eglDestroyContext(display, context);
    }
}
