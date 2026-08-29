package org.godotengine.godot.gl;

import android.util.Log;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.godotengine.godot.GodotLib;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.plugin.GodotPluginRegistry;

/* JADX INFO: loaded from: classes2.dex */
public class GodotRenderer implements GLSurfaceView.Renderer {
    private final String TAG = GodotRenderer.class.getSimpleName();
    private boolean activityJustResumed = false;
    private final GodotPluginRegistry pluginRegistry = GodotPluginRegistry.getPluginRegistry();

    @Override // org.godotengine.godot.gl.GLSurfaceView.Renderer
    public boolean onDrawFrame(GL10 gl) {
        if (this.activityJustResumed) {
            GodotLib.onRendererResumed();
            this.activityJustResumed = false;
        }
        boolean swapBuffers = GodotLib.step();
        for (GodotPlugin plugin : this.pluginRegistry.getAllPlugins()) {
            plugin.onGLDrawFrame(gl);
        }
        return swapBuffers;
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.Renderer
    public void onRenderThreadExiting() {
        Log.d(this.TAG, "Destroying Godot Engine");
        GodotLib.ondestroy();
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl, int width, int height) {
        GodotLib.resize(null, width, height);
        for (GodotPlugin plugin : this.pluginRegistry.getAllPlugins()) {
            plugin.onGLSurfaceChanged(gl, width, height);
        }
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
        GodotLib.newcontext(null);
        for (GodotPlugin plugin : this.pluginRegistry.getAllPlugins()) {
            plugin.onGLSurfaceCreated(gl, config);
        }
    }

    public void onActivityResumed() {
        this.activityJustResumed = true;
    }

    public void onActivityPaused() {
        GodotLib.onRendererPaused();
    }
}
