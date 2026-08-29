package org.godotengine.godot.vulkan;

import android.util.Log;
import android.view.Surface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.GodotLib;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.plugin.GodotPluginRegistry;

/* JADX INFO: compiled from: VkRenderer.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u001e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lorg/godotengine/godot/vulkan/VkRenderer;", "", "()V", "pluginRegistry", "Lorg/godotengine/godot/plugin/GodotPluginRegistry;", "onRenderThreadExiting", "", "onVkDrawFrame", "onVkPause", "onVkResume", "onVkSurfaceChanged", "surface", "Landroid/view/Surface;", "width", "", "height", "onVkSurfaceCreated", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VkRenderer {
    private static final String TAG = VkRenderer.class.getSimpleName();
    private final GodotPluginRegistry pluginRegistry;

    public VkRenderer() {
        GodotPluginRegistry pluginRegistry = GodotPluginRegistry.getPluginRegistry();
        Intrinsics.checkNotNullExpressionValue(pluginRegistry, "getPluginRegistry(...)");
        this.pluginRegistry = pluginRegistry;
    }

    public final void onVkSurfaceCreated(Surface surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        GodotLib.newcontext(surface);
        for (GodotPlugin plugin : this.pluginRegistry.getAllPlugins()) {
            plugin.onVkSurfaceCreated(surface);
        }
    }

    public final void onVkSurfaceChanged(Surface surface, int width, int height) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        GodotLib.resize(surface, width, height);
        for (GodotPlugin plugin : this.pluginRegistry.getAllPlugins()) {
            plugin.onVkSurfaceChanged(surface, width, height);
        }
    }

    public final void onVkDrawFrame() {
        GodotLib.step();
        for (GodotPlugin plugin : this.pluginRegistry.getAllPlugins()) {
            plugin.onVkDrawFrame();
        }
    }

    public final void onVkResume() {
        GodotLib.onRendererResumed();
    }

    public final void onVkPause() {
        GodotLib.onRendererPaused();
    }

    public final void onRenderThreadExiting() {
        Log.d(TAG, "Destroying Godot Engine");
        GodotLib.ondestroy();
    }
}
