package org.godotengine.godot.plugin;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.godotengine.godot.BuildConfig;
import org.godotengine.godot.Godot;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GodotPlugin {
    private static final String TAG = GodotPlugin.class.getSimpleName();
    private final Godot godot;
    private final ConcurrentHashMap<String, SignalInfo> registeredSignals = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeEmitSignal(String str, String str2, Object[] objArr);

    private static native void nativeRegisterMethod(String str, String str2, String str3, String[] strArr);

    private static native void nativeRegisterSignal(String str, String str2, String[] strArr);

    private static native boolean nativeRegisterSingleton(String str, Object obj);

    public abstract String getPluginName();

    public GodotPlugin(Godot godot) {
        this.godot = godot;
    }

    protected Godot getGodot() {
        return this.godot;
    }

    protected Activity getActivity() {
        return this.godot.getActivity();
    }

    public final void onRegisterPluginWithGodotNative() {
        String pluginName = getPluginName();
        if (!nativeRegisterSingleton(pluginName, this)) {
            return;
        }
        List<String> pluginMethods = getPluginMethods();
        Set<Method> filteredMethods = new HashSet<>();
        Class<?> clazz = getClass();
        Method[] methods = clazz.getDeclaredMethods();
        for (Method method : methods) {
            if (method.getAnnotation(UsedByGodot.class) != null) {
                filteredMethods.add(method);
            } else {
                for (String methodName : pluginMethods) {
                    if (methodName.equals(method.getName())) {
                        filteredMethods.add(method);
                        break;
                    }
                }
            }
        }
        for (Method method2 : filteredMethods) {
            List<String> ptr = new ArrayList<>();
            Class<?>[] paramTypes = method2.getParameterTypes();
            for (Class<?> c : paramTypes) {
                ptr.add(c.getName());
            }
            String[] pt = new String[ptr.size()];
            ptr.toArray(pt);
            nativeRegisterMethod(pluginName, method2.getName(), method2.getReturnType().getName(), pt);
        }
        Set<SignalInfo> pluginSignals = getPluginSignals();
        for (SignalInfo signalInfo : pluginSignals) {
            String signalName = signalInfo.getName();
            nativeRegisterSignal(pluginName, signalName, signalInfo.getParamTypesNames());
            this.registeredSignals.put(signalName, signalInfo);
        }
    }

    public View onMainCreate(Activity activity) {
        return null;
    }

    public void onMainActivityResult(int requestCode, int resultCode, Intent data) {
    }

    public void onMainRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
    }

    public void onMainPause() {
    }

    public void onMainResume() {
    }

    public void onMainDestroy() {
    }

    public boolean onMainBackPressed() {
        return false;
    }

    public void onGodotSetupCompleted() {
    }

    public void onGodotMainLoopStarted() {
    }

    public void onGLDrawFrame(GL10 gl) {
    }

    public void onGLSurfaceChanged(GL10 gl, int width, int height) {
    }

    public void onGLSurfaceCreated(GL10 gl, EGLConfig config) {
    }

    public void onVkDrawFrame() {
    }

    public void onVkSurfaceChanged(Surface surface, int width, int height) {
    }

    public void onVkSurfaceCreated(Surface surface) {
    }

    @Deprecated
    public List<String> getPluginMethods() {
        return Collections.emptyList();
    }

    public Set<SignalInfo> getPluginSignals() {
        return Collections.emptySet();
    }

    public Set<String> getPluginGDExtensionLibrariesPaths() {
        return Collections.emptySet();
    }

    public boolean shouldBeOnTop() {
        return true;
    }

    public boolean supportsFeature(String featureTag) {
        return false;
    }

    protected void runOnUiThread(Runnable action) {
        this.godot.runOnUiThread(action);
    }

    protected void runOnRenderThread(Runnable action) {
        this.godot.runOnRenderThread(action);
    }

    protected void emitSignal(String signalName, Object... signalArgs) {
        try {
            SignalInfo signalInfo = this.registeredSignals.get(signalName);
            if (signalInfo == null) {
                throw new IllegalArgumentException("Signal " + signalName + " is not registered for this plugin.");
            }
            emitSignal(getGodot(), getPluginName(), signalInfo, signalArgs);
        } catch (IllegalArgumentException exception) {
            Log.w(TAG, exception);
            if (BuildConfig.DEBUG) {
                throw exception;
            }
        }
    }

    public static void emitSignal(Godot godot, final String pluginName, final SignalInfo signalInfo, final Object... signalArgs) {
        try {
            if (signalInfo == null) {
                throw new IllegalArgumentException("Signal must be non null.");
            }
            Class<?>[] signalParamTypes = signalInfo.getParamTypes();
            if (signalArgs.length != signalParamTypes.length) {
                throw new IllegalArgumentException("Invalid arguments count. Should be " + signalParamTypes.length + "  but is " + signalArgs.length);
            }
            for (int i = 0; i < signalParamTypes.length; i++) {
                if (!signalParamTypes[i].isInstance(signalArgs[i])) {
                    throw new IllegalArgumentException("Invalid type for argument #" + i + ". Should be of type " + signalParamTypes[i].getName());
                }
            }
            godot.runOnRenderThread(new Runnable() { // from class: org.godotengine.godot.plugin.GodotPlugin$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    GodotPlugin.nativeEmitSignal(pluginName, signalInfo.getName(), signalArgs);
                }
            });
        } catch (IllegalArgumentException exception) {
            Log.w(TAG, exception);
            if (BuildConfig.DEBUG) {
                throw exception;
            }
        }
    }
}
