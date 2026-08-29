package androidx.core.util;

import android.util.Half;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Half.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\n\n\u0002\u0010\u000e\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\b\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0004H\u0087\b\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0005H\u0087\b¨\u0006\u0006"}, d2 = {"toHalf", "Landroid/util/Half;", "", "", "", "", "core-ktx_release"}, k = 2, mv = {1, 1, 15})
public final class HalfKt {
    public static final Half toHalf(short $this$toHalf) {
        Half halfValueOf = Half.valueOf($this$toHalf);
        Intrinsics.checkExpressionValueIsNotNull(halfValueOf, "Half.valueOf(this)");
        return halfValueOf;
    }

    public static final Half toHalf(float $this$toHalf) {
        Half halfValueOf = Half.valueOf($this$toHalf);
        Intrinsics.checkExpressionValueIsNotNull(halfValueOf, "Half.valueOf(this)");
        return halfValueOf;
    }

    public static final Half toHalf(double $this$toHalf) {
        float $this$toHalf$iv = (float) $this$toHalf;
        Half halfValueOf = Half.valueOf($this$toHalf$iv);
        Intrinsics.checkExpressionValueIsNotNull(halfValueOf, "Half.valueOf(this)");
        return halfValueOf;
    }

    public static final Half toHalf(String toHalf) {
        Intrinsics.checkParameterIsNotNull(toHalf, "$this$toHalf");
        Half halfValueOf = Half.valueOf(toHalf);
        Intrinsics.checkExpressionValueIsNotNull(halfValueOf, "Half.valueOf(this)");
        return halfValueOf;
    }
}
