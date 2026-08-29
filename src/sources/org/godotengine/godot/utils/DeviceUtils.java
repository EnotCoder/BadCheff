package org.godotengine.godot.utils;

import android.content.Context;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DeviceUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0006\u0010\u0005\u001a\u00020\u0001¨\u0006\u0006"}, d2 = {"isHorizonOSDevice", "", "context", "Landroid/content/Context;", "isNativeXRDevice", "isPicoOSDevice", "lib_templateDebug"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class DeviceUtils {
    public static final boolean isHorizonOSDevice(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return context.getPackageManager().hasSystemFeature("oculus.hardware.standalone_vr");
    }

    public static final boolean isPicoOSDevice() {
        return StringsKt.equals("Pico", Build.BRAND, true);
    }

    public static final boolean isNativeXRDevice(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return isHorizonOSDevice(context) || isPicoOSDevice();
    }
}
