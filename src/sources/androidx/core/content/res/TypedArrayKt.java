package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TypedArray.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\u0007\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\b\u001a\u00020\t*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\n\u001a\u00020\u000b*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\f\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0016\u0010\r\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u000e\u001a\u00020\u000f*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0010\u001a\u00020\u000b*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u0013\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\u0014\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u0016\u0010\u0015\u001a\u00020\u0004*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a\u001f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u001b\u001a\u0014\u0010\u001c\u001a\u00020\u001a*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u001a,\u0010\u001d\u001a\u0002H\u001e\"\u0004\b\u0000\u0010\u001e*\u00020\u00022\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u001e0 H\u0086\b¢\u0006\u0002\u0010!¨\u0006\""}, d2 = {"checkAttribute", "", "Landroid/content/res/TypedArray;", "index", "", "getBooleanOrThrow", "", "getColorOrThrow", "getColorStateListOrThrow", "Landroid/content/res/ColorStateList;", "getDimensionOrThrow", "", "getDimensionPixelOffsetOrThrow", "getDimensionPixelSizeOrThrow", "getDrawableOrThrow", "Landroid/graphics/drawable/Drawable;", "getFloatOrThrow", "getFontOrThrow", "Landroid/graphics/Typeface;", "getIntOrThrow", "getIntegerOrThrow", "getResourceIdOrThrow", "getStringOrThrow", "", "getTextArrayOrThrow", "", "", "(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;", "getTextOrThrow", "use", "R", "block", "Lkotlin/Function1;", "(Landroid/content/res/TypedArray;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "core-ktx_release"}, k = 2, mv = {1, 1, 15})
public final class TypedArrayKt {
    private static final void checkAttribute(TypedArray $this$checkAttribute, int index) {
        if (!$this$checkAttribute.hasValue(index)) {
            throw new IllegalArgumentException("Attribute not defined in set.");
        }
    }

    public static final boolean getBooleanOrThrow(TypedArray getBooleanOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getBooleanOrThrow, "$this$getBooleanOrThrow");
        checkAttribute(getBooleanOrThrow, index);
        return getBooleanOrThrow.getBoolean(index, false);
    }

    public static final int getColorOrThrow(TypedArray getColorOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getColorOrThrow, "$this$getColorOrThrow");
        checkAttribute(getColorOrThrow, index);
        return getColorOrThrow.getColor(index, 0);
    }

    public static final ColorStateList getColorStateListOrThrow(TypedArray getColorStateListOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getColorStateListOrThrow, "$this$getColorStateListOrThrow");
        checkAttribute(getColorStateListOrThrow, index);
        ColorStateList colorStateList = getColorStateListOrThrow.getColorStateList(index);
        if (colorStateList != null) {
            return colorStateList;
        }
        throw new IllegalStateException("Attribute value was not a color or color state list.".toString());
    }

    public static final float getDimensionOrThrow(TypedArray getDimensionOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getDimensionOrThrow, "$this$getDimensionOrThrow");
        checkAttribute(getDimensionOrThrow, index);
        return getDimensionOrThrow.getDimension(index, 0.0f);
    }

    public static final int getDimensionPixelOffsetOrThrow(TypedArray getDimensionPixelOffsetOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getDimensionPixelOffsetOrThrow, "$this$getDimensionPixelOffsetOrThrow");
        checkAttribute(getDimensionPixelOffsetOrThrow, index);
        return getDimensionPixelOffsetOrThrow.getDimensionPixelOffset(index, 0);
    }

    public static final int getDimensionPixelSizeOrThrow(TypedArray getDimensionPixelSizeOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getDimensionPixelSizeOrThrow, "$this$getDimensionPixelSizeOrThrow");
        checkAttribute(getDimensionPixelSizeOrThrow, index);
        return getDimensionPixelSizeOrThrow.getDimensionPixelSize(index, 0);
    }

    public static final Drawable getDrawableOrThrow(TypedArray getDrawableOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getDrawableOrThrow, "$this$getDrawableOrThrow");
        checkAttribute(getDrawableOrThrow, index);
        Drawable drawable = getDrawableOrThrow.getDrawable(index);
        if (drawable == null) {
            Intrinsics.throwNpe();
        }
        return drawable;
    }

    public static final float getFloatOrThrow(TypedArray getFloatOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getFloatOrThrow, "$this$getFloatOrThrow");
        checkAttribute(getFloatOrThrow, index);
        return getFloatOrThrow.getFloat(index, 0.0f);
    }

    public static final Typeface getFontOrThrow(TypedArray getFontOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getFontOrThrow, "$this$getFontOrThrow");
        checkAttribute(getFontOrThrow, index);
        Typeface font = getFontOrThrow.getFont(index);
        if (font == null) {
            Intrinsics.throwNpe();
        }
        return font;
    }

    public static final int getIntOrThrow(TypedArray getIntOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getIntOrThrow, "$this$getIntOrThrow");
        checkAttribute(getIntOrThrow, index);
        return getIntOrThrow.getInt(index, 0);
    }

    public static final int getIntegerOrThrow(TypedArray getIntegerOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getIntegerOrThrow, "$this$getIntegerOrThrow");
        checkAttribute(getIntegerOrThrow, index);
        return getIntegerOrThrow.getInteger(index, 0);
    }

    public static final int getResourceIdOrThrow(TypedArray getResourceIdOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getResourceIdOrThrow, "$this$getResourceIdOrThrow");
        checkAttribute(getResourceIdOrThrow, index);
        return getResourceIdOrThrow.getResourceId(index, 0);
    }

    public static final String getStringOrThrow(TypedArray getStringOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getStringOrThrow, "$this$getStringOrThrow");
        checkAttribute(getStringOrThrow, index);
        String string = getStringOrThrow.getString(index);
        if (string != null) {
            return string;
        }
        throw new IllegalStateException("Attribute value could not be coerced to String.".toString());
    }

    public static final CharSequence getTextOrThrow(TypedArray getTextOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getTextOrThrow, "$this$getTextOrThrow");
        checkAttribute(getTextOrThrow, index);
        CharSequence text = getTextOrThrow.getText(index);
        if (text != null) {
            return text;
        }
        throw new IllegalStateException("Attribute value could not be coerced to CharSequence.".toString());
    }

    public static final CharSequence[] getTextArrayOrThrow(TypedArray getTextArrayOrThrow, int index) {
        Intrinsics.checkParameterIsNotNull(getTextArrayOrThrow, "$this$getTextArrayOrThrow");
        checkAttribute(getTextArrayOrThrow, index);
        CharSequence[] textArray = getTextArrayOrThrow.getTextArray(index);
        Intrinsics.checkExpressionValueIsNotNull(textArray, "getTextArray(index)");
        return textArray;
    }

    public static final <R> R use(TypedArray use, Function1<? super TypedArray, ? extends R> block) {
        Intrinsics.checkParameterIsNotNull(use, "$this$use");
        Intrinsics.checkParameterIsNotNull(block, "block");
        R rInvoke = block.invoke(use);
        use.recycle();
        return rInvoke;
    }
}
