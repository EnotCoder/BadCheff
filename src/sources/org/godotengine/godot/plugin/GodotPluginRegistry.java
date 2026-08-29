package org.godotengine.godot.plugin;

import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.godotengine.godot.Godot;

/* JADX INFO: loaded from: classes2.dex */
public final class GodotPluginRegistry {
    private static final String GODOT_PLUGIN_V1_NAME_PREFIX = "org.godotengine.plugin.v1.";
    private static final String GODOT_PLUGIN_V2_NAME_PREFIX = "org.godotengine.plugin.v2.";
    private static final String TAG = GodotPluginRegistry.class.getSimpleName();
    private static GodotPluginRegistry instance;
    private final ConcurrentHashMap<String, GodotPlugin> registry = new ConcurrentHashMap<>();

    private GodotPluginRegistry() {
    }

    public GodotPlugin getPlugin(String pluginName) {
        return this.registry.get(pluginName);
    }

    public Collection<GodotPlugin> getAllPlugins() {
        if (this.registry.isEmpty()) {
            return Collections.emptyList();
        }
        return this.registry.values();
    }

    public static GodotPluginRegistry initializePluginRegistry(Godot godot, Set<GodotPlugin> runtimePlugins) {
        if (instance == null) {
            GodotPluginRegistry godotPluginRegistry = new GodotPluginRegistry();
            instance = godotPluginRegistry;
            godotPluginRegistry.loadPlugins(godot, runtimePlugins);
        }
        return instance;
    }

    public static GodotPluginRegistry getPluginRegistry() throws IllegalStateException {
        GodotPluginRegistry godotPluginRegistry = instance;
        if (godotPluginRegistry == null) {
            throw new IllegalStateException("Plugin registry hasn't been initialized.");
        }
        return godotPluginRegistry;
    }

    private void loadPlugins(Godot godot, Set<GodotPlugin> runtimePlugins) {
        String pluginName;
        if (runtimePlugins != null && !runtimePlugins.isEmpty()) {
            for (GodotPlugin plugin : runtimePlugins) {
                Log.i(TAG, "Registering runtime plugin " + plugin.getPluginName());
                this.registry.put(plugin.getPluginName(), plugin);
            }
        }
        try {
            Activity activity = godot.getActivity();
            ApplicationInfo appInfo = activity.getPackageManager().getApplicationInfo(activity.getPackageName(), 128);
            Bundle metaData = appInfo.metaData;
            if (metaData != null && !metaData.isEmpty()) {
                for (String metaDataName : metaData.keySet()) {
                    if (metaDataName.startsWith(GODOT_PLUGIN_V2_NAME_PREFIX)) {
                        pluginName = metaDataName.substring(GODOT_PLUGIN_V2_NAME_PREFIX.length()).trim();
                    } else if (!metaDataName.startsWith(GODOT_PLUGIN_V1_NAME_PREFIX)) {
                        pluginName = null;
                    } else {
                        String pluginName2 = metaDataName.substring(GODOT_PLUGIN_V1_NAME_PREFIX.length()).trim();
                        Log.w(TAG, "Godot v1 plugin are deprecated in Godot 4.2 and higher: " + pluginName2);
                        pluginName = pluginName2;
                    }
                    if (!TextUtils.isEmpty(pluginName)) {
                        String str = TAG;
                        Log.i(str, "Initializing Godot plugin " + pluginName);
                        String pluginHandleClassFullName = metaData.getString(metaDataName);
                        if (!TextUtils.isEmpty(pluginHandleClassFullName)) {
                            try {
                                GodotPlugin pluginHandle = (GodotPlugin) Class.forName(pluginHandleClassFullName).getConstructor(Godot.class).newInstance(godot);
                                if (!pluginName.equals(pluginHandle.getPluginName())) {
                                    Log.w(str, "Meta-data plugin name does not match the value returned by the plugin handle: " + pluginName + " =/= " + pluginHandle.getPluginName());
                                }
                                this.registry.put(pluginName, pluginHandle);
                                Log.i(str, "Completed initialization for Godot plugin " + pluginHandle.getPluginName());
                            } catch (Exception e) {
                                Log.w(TAG, "Unable to load Godot plugin " + pluginName, e);
                            }
                        } else {
                            Log.w(str, "Invalid plugin loader class for " + pluginName);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            Log.e(TAG, "Unable load Godot Android plugins from the manifest file.", e2);
        }
    }
}
