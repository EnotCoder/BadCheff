package org.godotengine.godot.plugin;

import android.app.Activity;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.Godot;
import org.godotengine.godot.variant.Callable;

/* JADX INFO: compiled from: AndroidRuntimePlugin.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\tH\u0007J\n\u0010\f\u001a\u0004\u0018\u00010\rH\u0015J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\b\u0010\u0010\u001a\u00020\u0011H\u0016¨\u0006\u0012"}, d2 = {"Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;", "Lorg/godotengine/godot/plugin/GodotPlugin;", "godot", "Lorg/godotengine/godot/Godot;", "(Lorg/godotengine/godot/Godot;)V", "createCallableFromGodotCallable", "Ljava/util/concurrent/Callable;", "", "godotCallable", "Lorg/godotengine/godot/variant/Callable;", "createRunnableFromGodotCallable", "Ljava/lang/Runnable;", "getActivity", "Landroid/app/Activity;", "getApplicationContext", "Landroid/content/Context;", "getPluginName", "", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AndroidRuntimePlugin extends GodotPlugin {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidRuntimePlugin(Godot godot) {
        super(godot);
        Intrinsics.checkNotNullParameter(godot, "godot");
    }

    @Override // org.godotengine.godot.plugin.GodotPlugin
    public String getPluginName() {
        return "AndroidRuntime";
    }

    @UsedByGodot
    public final Context getApplicationContext() {
        Activity activity = getActivity();
        if (activity != null) {
            return activity.getApplicationContext();
        }
        return null;
    }

    @Override // org.godotengine.godot.plugin.GodotPlugin
    @UsedByGodot
    protected Activity getActivity() {
        return super.getActivity();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createRunnableFromGodotCallable$lambda$0(Callable godotCallable) {
        Intrinsics.checkNotNullParameter(godotCallable, "$godotCallable");
        godotCallable.call$lib_templateDebug(new Object[0]);
    }

    @UsedByGodot
    public final Runnable createRunnableFromGodotCallable(final Callable godotCallable) {
        Intrinsics.checkNotNullParameter(godotCallable, "godotCallable");
        return new Runnable() { // from class: org.godotengine.godot.plugin.AndroidRuntimePlugin$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AndroidRuntimePlugin.createRunnableFromGodotCallable$lambda$0(godotCallable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object createCallableFromGodotCallable$lambda$1(Callable godotCallable) {
        Intrinsics.checkNotNullParameter(godotCallable, "$godotCallable");
        return godotCallable.call$lib_templateDebug(new Object[0]);
    }

    @UsedByGodot
    public final java.util.concurrent.Callable<Object> createCallableFromGodotCallable(final Callable godotCallable) {
        Intrinsics.checkNotNullParameter(godotCallable, "godotCallable");
        return new java.util.concurrent.Callable() { // from class: org.godotengine.godot.plugin.AndroidRuntimePlugin$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return AndroidRuntimePlugin.createCallableFromGodotCallable$lambda$1(godotCallable);
            }
        };
    }
}
