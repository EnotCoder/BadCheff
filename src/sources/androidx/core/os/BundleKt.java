package androidx.core.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;

/* JADX INFO: compiled from: Bundle.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\b\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"bundleOf", "Landroid/os/Bundle;", "pairs", "", "Lkotlin/Pair;", "", "", "([Lkotlin/Pair;)Landroid/os/Bundle;", "core-ktx_release"}, k = 2, mv = {1, 1, 15})
public final class BundleKt {
    public static final Bundle bundleOf(Pair<String, ? extends Object>... pairs) {
        Intrinsics.checkParameterIsNotNull(pairs, "pairs");
        Bundle $this$apply = new Bundle(pairs.length);
        for (Pair<String, ? extends Object> pair : pairs) {
            String key = pair.component1();
            Object value = pair.component2();
            if (value == null) {
                $this$apply.putString(key, null);
            } else if (value instanceof Boolean) {
                $this$apply.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value instanceof Byte) {
                $this$apply.putByte(key, ((Number) value).byteValue());
            } else if (value instanceof Character) {
                $this$apply.putChar(key, ((Character) value).charValue());
            } else if (value instanceof Double) {
                $this$apply.putDouble(key, ((Number) value).doubleValue());
            } else if (value instanceof Float) {
                $this$apply.putFloat(key, ((Number) value).floatValue());
            } else if (value instanceof Integer) {
                $this$apply.putInt(key, ((Number) value).intValue());
            } else if (value instanceof Long) {
                $this$apply.putLong(key, ((Number) value).longValue());
            } else if (value instanceof Short) {
                $this$apply.putShort(key, ((Number) value).shortValue());
            } else if (value instanceof Bundle) {
                $this$apply.putBundle(key, (Bundle) value);
            } else if (value instanceof CharSequence) {
                $this$apply.putCharSequence(key, (CharSequence) value);
            } else if (value instanceof Parcelable) {
                $this$apply.putParcelable(key, (Parcelable) value);
            } else if (value instanceof boolean[]) {
                $this$apply.putBooleanArray(key, (boolean[]) value);
            } else if (value instanceof byte[]) {
                $this$apply.putByteArray(key, (byte[]) value);
            } else if (value instanceof char[]) {
                $this$apply.putCharArray(key, (char[]) value);
            } else if (value instanceof double[]) {
                $this$apply.putDoubleArray(key, (double[]) value);
            } else if (value instanceof float[]) {
                $this$apply.putFloatArray(key, (float[]) value);
            } else if (value instanceof int[]) {
                $this$apply.putIntArray(key, (int[]) value);
            } else if (value instanceof long[]) {
                $this$apply.putLongArray(key, (long[]) value);
            } else if (value instanceof short[]) {
                $this$apply.putShortArray(key, (short[]) value);
            } else if (value instanceof Object[]) {
                Class<?> componentType = value.getClass().getComponentType();
                if (componentType == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(componentType, "value::class.java.componentType!!");
                if (Parcelable.class.isAssignableFrom(componentType)) {
                    if (value == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<android.os.Parcelable>");
                    }
                    $this$apply.putParcelableArray(key, (Parcelable[]) value);
                } else if (String.class.isAssignableFrom(componentType)) {
                    if (value == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                    }
                    $this$apply.putStringArray(key, (String[]) value);
                } else if (CharSequence.class.isAssignableFrom(componentType)) {
                    if (value == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.CharSequence>");
                    }
                    $this$apply.putCharSequenceArray(key, (CharSequence[]) value);
                } else if (Serializable.class.isAssignableFrom(componentType)) {
                    $this$apply.putSerializable(key, (Serializable) value);
                } else {
                    String valueType = componentType.getCanonicalName();
                    throw new IllegalArgumentException("Illegal value array type " + valueType + " for key \"" + key + Typography.quote);
                }
            } else if (value instanceof Serializable) {
                $this$apply.putSerializable(key, (Serializable) value);
            } else if (value instanceof Binder) {
                $this$apply.putBinder(key, (IBinder) value);
            } else if (value instanceof Size) {
                $this$apply.putSize(key, (Size) value);
            } else if (value instanceof SizeF) {
                $this$apply.putSizeF(key, (SizeF) value);
            } else {
                String valueType2 = value.getClass().getCanonicalName();
                throw new IllegalArgumentException("Illegal value type " + valueType2 + " for key \"" + key + Typography.quote);
            }
        }
        return $this$apply;
    }
}
