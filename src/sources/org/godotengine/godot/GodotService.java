package org.godotengine.godot;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GodotService.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0002\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0012\u0010\u0011\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\u0018"}, d2 = {"Lorg/godotengine/godot/GodotService;", "Landroid/app/Service;", "()V", "boundIntent", "Landroid/content/Intent;", "godot", "Lorg/godotengine/godot/Godot;", "getGodot", "()Lorg/godotengine/godot/Godot;", "godot$delegate", "Lkotlin/Lazy;", "onBind", "Landroid/os/IBinder;", "intent", "onCreate", "", "onDestroy", "onRebind", "onTaskRemoved", "rootIntent", "onUnbind", "", "Companion", "GodotHandle", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class GodotService extends Service {
    private static final String TAG = GodotService.class.getSimpleName();
    private Intent boundIntent;

    /* JADX INFO: renamed from: godot$delegate, reason: from kotlin metadata */
    private final Lazy godot = LazyKt.lazy(new Function0<Godot>() { // from class: org.godotengine.godot.GodotService$godot$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Godot invoke() {
            Context applicationContext = this.this$0.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            return new Godot(applicationContext);
        }
    });

    private final Godot getGodot() {
        return (Godot) this.godot.getValue();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (this.boundIntent != null) {
            Log.d(TAG, "GodotService already bound");
            return null;
        }
        this.boundIntent = intent;
        return new GodotHandle(getGodot());
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent rootIntent) {
        super.onTaskRemoved(rootIntent);
    }

    /* JADX INFO: compiled from: GodotService.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lorg/godotengine/godot/GodotService$GodotHandle;", "Landroid/os/Binder;", "godot", "Lorg/godotengine/godot/Godot;", "(Lorg/godotengine/godot/Godot;)V", "getGodot", "()Lorg/godotengine/godot/Godot;", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class GodotHandle extends Binder {
        private final Godot godot;

        public GodotHandle(Godot godot) {
            Intrinsics.checkNotNullParameter(godot, "godot");
            this.godot = godot;
        }

        public final Godot getGodot() {
            return this.godot;
        }
    }
}
