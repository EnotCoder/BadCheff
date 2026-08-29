package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public final class CompoundButtonCompat {
    private static final String TAG = "CompoundButtonCompat";
    private static Field sButtonDrawableField;
    private static boolean sButtonDrawableFieldFetched;

    private CompoundButtonCompat() {
    }

    public static void setButtonTintList(CompoundButton button, ColorStateList tint) {
        Api21Impl.setButtonTintList(button, tint);
    }

    public static ColorStateList getButtonTintList(CompoundButton button) {
        return Api21Impl.getButtonTintList(button);
    }

    public static void setButtonTintMode(CompoundButton button, PorterDuff.Mode tintMode) {
        Api21Impl.setButtonTintMode(button, tintMode);
    }

    public static PorterDuff.Mode getButtonTintMode(CompoundButton button) {
        return Api21Impl.getButtonTintMode(button);
    }

    public static Drawable getButtonDrawable(CompoundButton button) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getButtonDrawable(button);
        }
        if (!sButtonDrawableFieldFetched) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                sButtonDrawableField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i(TAG, "Failed to retrieve mButtonDrawable field", e);
            }
            sButtonDrawableFieldFetched = true;
        }
        Field field = sButtonDrawableField;
        if (field != null) {
            try {
                return (Drawable) field.get(button);
            } catch (IllegalAccessException e2) {
                Log.i(TAG, "Failed to get button drawable via reflection", e2);
                sButtonDrawableField = null;
            }
        }
        return null;
    }

    static class Api21Impl {
        private Api21Impl() {
        }

        static void setButtonTintList(CompoundButton compoundButton, ColorStateList tint) {
            compoundButton.setButtonTintList(tint);
        }

        static ColorStateList getButtonTintList(CompoundButton compoundButton) {
            return compoundButton.getButtonTintList();
        }

        static void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode tintMode) {
            compoundButton.setButtonTintMode(tintMode);
        }

        static PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton) {
            return compoundButton.getButtonTintMode();
        }
    }

    static class Api23Impl {
        private Api23Impl() {
        }

        static Drawable getButtonDrawable(CompoundButton compoundButton) {
            return compoundButton.getButtonDrawable();
        }
    }
}
