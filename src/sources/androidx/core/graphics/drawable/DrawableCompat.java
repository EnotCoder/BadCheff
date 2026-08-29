package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class DrawableCompat {
    private static final String TAG = "DrawableCompat";
    private static Method sGetLayoutDirectionMethod;
    private static boolean sGetLayoutDirectionMethodFetched;
    private static Method sSetLayoutDirectionMethod;
    private static boolean sSetLayoutDirectionMethodFetched;

    @Deprecated
    public static void jumpToCurrentState(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void setAutoMirrored(Drawable drawable, boolean mirrored) {
        Api19Impl.setAutoMirrored(drawable, mirrored);
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        return Api19Impl.isAutoMirrored(drawable);
    }

    public static void setHotspot(Drawable drawable, float x, float y) {
        Api21Impl.setHotspot(drawable, x, y);
    }

    public static void setHotspotBounds(Drawable drawable, int left, int top, int right, int bottom) {
        Api21Impl.setHotspotBounds(drawable, left, top, right, bottom);
    }

    public static void setTint(Drawable drawable, int tint) {
        Api21Impl.setTint(drawable, tint);
    }

    public static void setTintList(Drawable drawable, ColorStateList tint) {
        Api21Impl.setTintList(drawable, tint);
    }

    public static void setTintMode(Drawable drawable, PorterDuff.Mode tintMode) {
        Api21Impl.setTintMode(drawable, tintMode);
    }

    public static int getAlpha(Drawable drawable) {
        return Api19Impl.getAlpha(drawable);
    }

    public static void applyTheme(Drawable drawable, Resources.Theme theme) {
        Api21Impl.applyTheme(drawable, theme);
    }

    public static boolean canApplyTheme(Drawable drawable) {
        return Api21Impl.canApplyTheme(drawable);
    }

    public static ColorFilter getColorFilter(Drawable drawable) {
        return Api21Impl.getColorFilter(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void clearColorFilter(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            clearColorFilter(Api19Impl.getDrawable((InsetDrawable) drawable));
            return;
        }
        if (drawable instanceof WrappedDrawable) {
            clearColorFilter(((WrappedDrawable) drawable).getWrappedDrawable());
            return;
        }
        if (drawable instanceof DrawableContainer) {
            DrawableContainer container = (DrawableContainer) drawable;
            DrawableContainer.DrawableContainerState state = (DrawableContainer.DrawableContainerState) container.getConstantState();
            if (state != null) {
                int count = state.getChildCount();
                for (int i = 0; i < count; i++) {
                    Drawable child = Api19Impl.getChild(state, i);
                    if (child != null) {
                        clearColorFilter(child);
                    }
                }
            }
        }
    }

    public static void inflate(Drawable drawable, Resources res, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        Api21Impl.inflate(drawable, res, parser, attrs, theme);
    }

    public static Drawable wrap(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 23 && !(drawable instanceof TintAwareDrawable)) {
            return new WrappedDrawableApi21(drawable);
        }
        return drawable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T unwrap(Drawable drawable) {
        if (drawable instanceof WrappedDrawable) {
            return (T) ((WrappedDrawable) drawable).getWrappedDrawable();
        }
        return drawable;
    }

    public static boolean setLayoutDirection(Drawable drawable, int layoutDirection) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.setLayoutDirection(drawable, layoutDirection);
        }
        if (!sSetLayoutDirectionMethodFetched) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                sSetLayoutDirectionMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i(TAG, "Failed to retrieve setLayoutDirection(int) method", e);
            }
            sSetLayoutDirectionMethodFetched = true;
        }
        Method method = sSetLayoutDirectionMethod;
        if (method != null) {
            try {
                method.invoke(drawable, Integer.valueOf(layoutDirection));
                return true;
            } catch (Exception e2) {
                Log.i(TAG, "Failed to invoke setLayoutDirection(int) via reflection", e2);
                sSetLayoutDirectionMethod = null;
            }
        }
        return false;
    }

    public static int getLayoutDirection(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getLayoutDirection(drawable);
        }
        if (!sGetLayoutDirectionMethodFetched) {
            try {
                Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                sGetLayoutDirectionMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i(TAG, "Failed to retrieve getLayoutDirection() method", e);
            }
            sGetLayoutDirectionMethodFetched = true;
        }
        Method method = sGetLayoutDirectionMethod;
        if (method != null) {
            try {
                return ((Integer) method.invoke(drawable, new Object[0])).intValue();
            } catch (Exception e2) {
                Log.i(TAG, "Failed to invoke getLayoutDirection() via reflection", e2);
                sGetLayoutDirectionMethod = null;
            }
        }
        return 0;
    }

    private DrawableCompat() {
    }

    static class Api19Impl {
        private Api19Impl() {
        }

        static void setAutoMirrored(Drawable drawable, boolean mirrored) {
            drawable.setAutoMirrored(mirrored);
        }

        static boolean isAutoMirrored(Drawable drawable) {
            return drawable.isAutoMirrored();
        }

        static int getAlpha(Drawable drawable) {
            return drawable.getAlpha();
        }

        static Drawable getChild(DrawableContainer.DrawableContainerState drawableContainerState, int index) {
            return drawableContainerState.getChild(index);
        }

        static Drawable getDrawable(InsetDrawable drawable) {
            return drawable.getDrawable();
        }
    }

    static class Api21Impl {
        private Api21Impl() {
        }

        static void setHotspot(Drawable drawable, float x, float y) {
            drawable.setHotspot(x, y);
        }

        static void setTint(Drawable drawable, int tintColor) {
            drawable.setTint(tintColor);
        }

        static void setTintList(Drawable drawable, ColorStateList tint) {
            drawable.setTintList(tint);
        }

        static void setTintMode(Drawable drawable, PorterDuff.Mode tintMode) {
            drawable.setTintMode(tintMode);
        }

        static void applyTheme(Drawable drawable, Resources.Theme t) {
            drawable.applyTheme(t);
        }

        static boolean canApplyTheme(Drawable drawable) {
            return drawable.canApplyTheme();
        }

        static ColorFilter getColorFilter(Drawable drawable) {
            return drawable.getColorFilter();
        }

        static void inflate(Drawable drawable, Resources r, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
            drawable.inflate(r, parser, attrs, theme);
        }

        static void setHotspotBounds(Drawable drawable, int left, int top, int right, int bottom) {
            drawable.setHotspotBounds(left, top, right, bottom);
        }
    }

    static class Api23Impl {
        private Api23Impl() {
        }

        static boolean setLayoutDirection(Drawable drawable, int layoutDirection) {
            return drawable.setLayoutDirection(layoutDirection);
        }

        static int getLayoutDirection(Drawable drawable) {
            return drawable.getLayoutDirection();
        }
    }
}
