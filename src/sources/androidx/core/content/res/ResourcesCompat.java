package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class ResourcesCompat {
    public static final int ID_NULL = 0;
    private static final String TAG = "ResourcesCompat";
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();
    private static final WeakHashMap<ColorStateListCacheKey, SparseArray<ColorStateListCacheEntry>> sColorStateCaches = new WeakHashMap<>(0);
    private static final Object sColorStateCacheLock = new Object();

    public static void clearCachesForTheme(Resources.Theme theme) {
        synchronized (sColorStateCacheLock) {
            Iterator<ColorStateListCacheKey> keys = sColorStateCaches.keySet().iterator();
            while (keys.hasNext()) {
                ColorStateListCacheKey key = keys.next();
                if (key != null && theme.equals(key.mTheme)) {
                    keys.remove();
                }
            }
        }
    }

    public static Drawable getDrawable(Resources res, int id, Resources.Theme theme) throws Resources.NotFoundException {
        return Api21Impl.getDrawable(res, id, theme);
    }

    public static Drawable getDrawableForDensity(Resources res, int id, int density, Resources.Theme theme) throws Resources.NotFoundException {
        return Api21Impl.getDrawableForDensity(res, id, density, theme);
    }

    public static int getColor(Resources res, int id, Resources.Theme theme) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getColor(res, id, theme);
        }
        return res.getColor(id);
    }

    public static ColorStateList getColorStateList(Resources res, int id, Resources.Theme theme) throws Resources.NotFoundException {
        ColorStateListCacheKey key = new ColorStateListCacheKey(res, theme);
        ColorStateList csl = getCachedColorStateList(key, id);
        if (csl != null) {
            return csl;
        }
        ColorStateList csl2 = inflateColorStateList(res, id, theme);
        if (csl2 != null) {
            addColorStateListToCache(key, id, csl2, theme);
            return csl2;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getColorStateList(res, id, theme);
        }
        return res.getColorStateList(id);
    }

    private static ColorStateList inflateColorStateList(Resources resources, int resId, Resources.Theme theme) {
        if (isColorInt(resources, resId)) {
            return null;
        }
        XmlPullParser xml = resources.getXml(resId);
        try {
            return ColorStateListInflaterCompat.createFromXml(resources, xml, theme);
        } catch (Exception e) {
            Log.w(TAG, "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    private static ColorStateList getCachedColorStateList(ColorStateListCacheKey key, int resId) {
        ColorStateListCacheEntry entry;
        synchronized (sColorStateCacheLock) {
            SparseArray<ColorStateListCacheEntry> entries = sColorStateCaches.get(key);
            if (entries != null && entries.size() > 0 && (entry = entries.get(resId)) != null) {
                if (entry.mConfiguration.equals(key.mResources.getConfiguration()) && ((key.mTheme == null && entry.mThemeHash == 0) || (key.mTheme != null && entry.mThemeHash == key.mTheme.hashCode()))) {
                    return entry.mValue;
                }
                entries.remove(resId);
            }
            return null;
        }
    }

    private static void addColorStateListToCache(ColorStateListCacheKey key, int resId, ColorStateList value, Resources.Theme theme) {
        synchronized (sColorStateCacheLock) {
            WeakHashMap<ColorStateListCacheKey, SparseArray<ColorStateListCacheEntry>> weakHashMap = sColorStateCaches;
            SparseArray<ColorStateListCacheEntry> entries = weakHashMap.get(key);
            if (entries == null) {
                entries = new SparseArray<>();
                weakHashMap.put(key, entries);
            }
            entries.append(resId, new ColorStateListCacheEntry(value, key.mResources.getConfiguration(), theme));
        }
    }

    private static boolean isColorInt(Resources resources, int resId) {
        TypedValue value = getTypedValue();
        resources.getValue(resId, value, true);
        return value.type >= 28 && value.type <= 31;
    }

    private static TypedValue getTypedValue() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue tv = threadLocal.get();
        if (tv == null) {
            TypedValue tv2 = new TypedValue();
            threadLocal.set(tv2);
            return tv2;
        }
        return tv;
    }

    private static final class ColorStateListCacheKey {
        final Resources mResources;
        final Resources.Theme mTheme;

        ColorStateListCacheKey(Resources resources, Resources.Theme theme) {
            this.mResources = resources;
            this.mTheme = theme;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            ColorStateListCacheKey that = (ColorStateListCacheKey) o;
            return this.mResources.equals(that.mResources) && ObjectsCompat.equals(this.mTheme, that.mTheme);
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.mResources, this.mTheme);
        }
    }

    private static class ColorStateListCacheEntry {
        final Configuration mConfiguration;
        final int mThemeHash;
        final ColorStateList mValue;

        ColorStateListCacheEntry(ColorStateList value, Configuration configuration, Resources.Theme theme) {
            this.mValue = value;
            this.mConfiguration = configuration;
            this.mThemeHash = theme == null ? 0 : theme.hashCode();
        }
    }

    public static float getFloat(Resources res, int id) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.getFloat(res, id);
        }
        TypedValue value = getTypedValue();
        res.getValue(id, value, true);
        if (value.type == 4) {
            return value.getFloat();
        }
        throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(id) + " type #0x" + Integer.toHexString(value.type) + " is not valid");
    }

    public static Typeface getFont(Context context, int id) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, id, new TypedValue(), 0, null, null, false, false);
    }

    public static Typeface getCachedFont(Context context, int id) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, id, new TypedValue(), 0, null, null, false, true);
    }

    public static abstract class FontCallback {
        /* JADX INFO: renamed from: onFontRetrievalFailed, reason: merged with bridge method [inline-methods] */
        public abstract void m10xb24343b7(int i);

        /* JADX INFO: renamed from: onFontRetrieved, reason: merged with bridge method [inline-methods] */
        public abstract void m11x46c88379(Typeface typeface);

        public final void callbackSuccessAsync(final Typeface typeface, Handler handler) {
            getHandler(handler).post(new Runnable() { // from class: androidx.core.content.res.ResourcesCompat$FontCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m11x46c88379(typeface);
                }
            });
        }

        public final void callbackFailAsync(final int reason, Handler handler) {
            getHandler(handler).post(new Runnable() { // from class: androidx.core.content.res.ResourcesCompat$FontCallback$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m10xb24343b7(reason);
                }
            });
        }

        public static Handler getHandler(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }
    }

    public static void getFont(Context context, int id, FontCallback fontCallback, Handler handler) throws Resources.NotFoundException {
        Preconditions.checkNotNull(fontCallback);
        if (context.isRestricted()) {
            fontCallback.callbackFailAsync(-4, handler);
        } else {
            loadFont(context, id, new TypedValue(), 0, fontCallback, handler, false, false);
        }
    }

    public static Typeface getFont(Context context, int id, TypedValue value, int style, FontCallback fontCallback) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return loadFont(context, id, value, style, fontCallback, null, true, false);
    }

    private static Typeface loadFont(Context context, int id, TypedValue value, int style, FontCallback fontCallback, Handler handler, boolean isRequestFromLayoutInflator, boolean isCachedOnly) {
        Resources resources = context.getResources();
        resources.getValue(id, value, true);
        Typeface typeface = loadFont(context, resources, value, id, style, fontCallback, handler, isRequestFromLayoutInflator, isCachedOnly);
        if (typeface == null && fontCallback == null && !isCachedOnly) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(id) + " could not be retrieved.");
        }
        return typeface;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0117  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x00c1: MOVE (r2 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY] A[D('file' java.lang.String)]), block:B:49:0x00c1 */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x00bd: MOVE (r6 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY] A[D('typeface' android.graphics.Typeface)]), block:B:47:0x00bd */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x00c3: MOVE (r6 I:??[OBJECT, ARRAY]) = (r19 I:??[OBJECT, ARRAY] A[D('typeface' android.graphics.Typeface)]), block:B:49:0x00c1 */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x00c5: MOVE (r3 I:??[OBJECT, ARRAY]) = (r20 I:??[OBJECT, ARRAY]), block:B:49:0x00c1 */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [int] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r26v0, types: [androidx.core.content.res.ResourcesCompat$FontCallback] */
    private static Typeface loadFont(Context context, Resources resources, TypedValue typedValue, int i, int i2, FontCallback fontCallback, Handler handler, boolean z, boolean z2) {
        String str;
        String str2;
        ?? r11;
        String str3;
        String str4;
        ?? r12;
        String str5;
        String str6;
        ?? r13 = resources;
        if (typedValue.string == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String string = typedValue.string.toString();
        if (!string.startsWith("res/")) {
            if (fontCallback != 0) {
                fontCallback.callbackFailAsync(-3, handler);
            }
            return null;
        }
        Typeface typefaceFindFromCache = TypefaceCompat.findFromCache(r13, i, string, typedValue.assetCookie, i2);
        if (typefaceFindFromCache != null) {
            if (fontCallback != 0) {
                fontCallback.callbackSuccessAsync(typefaceFindFromCache, handler);
            }
            return typefaceFindFromCache;
        }
        if (z2) {
            return null;
        }
        try {
            try {
                try {
                    try {
                        if (!string.toLowerCase().endsWith(".xml")) {
                            str3 = string;
                            str4 = TAG;
                            r11 = -3;
                            r13 = -3;
                            Typeface typefaceCreateFromResourcesFontFile = TypefaceCompat.createFromResourcesFontFile(context, resources, i, str3, typedValue.assetCookie, i2);
                            if (fontCallback != 0) {
                                try {
                                    if (typefaceCreateFromResourcesFontFile != null) {
                                        fontCallback.callbackSuccessAsync(typefaceCreateFromResourcesFontFile, handler);
                                    } else {
                                        fontCallback.callbackFailAsync(-3, handler);
                                    }
                                } catch (IOException e) {
                                    e = e;
                                    Log.e(str4, "Failed to read xml resource " + str3, e);
                                    r12 = r13;
                                    if (fontCallback != 0) {
                                        fontCallback.callbackFailAsync(r12, handler);
                                    }
                                    return null;
                                } catch (XmlPullParserException e2) {
                                    e = e2;
                                    str = str3;
                                    str2 = str4;
                                }
                            }
                            return typefaceCreateFromResourcesFontFile;
                        }
                        FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry = FontResourcesParserCompat.parse(r13.getXml(i), r13);
                        if (familyResourceEntry != null) {
                            return TypefaceCompat.createFromResourcesFamilyXml(context, familyResourceEntry, resources, i, string, typedValue.assetCookie, i2, fontCallback, handler, z);
                        }
                        try {
                            Log.e(TAG, "Failed to find font-family tag");
                            if (fontCallback != 0) {
                                fontCallback.callbackFailAsync(-3, handler);
                            }
                            return null;
                        } catch (IOException e3) {
                            e = e3;
                            str3 = string;
                            str4 = TAG;
                            r13 = -3;
                            Log.e(str4, "Failed to read xml resource " + str3, e);
                            r12 = r13;
                            if (fontCallback != 0) {
                                fontCallback.callbackFailAsync(r12, handler);
                            }
                            return null;
                        } catch (XmlPullParserException e4) {
                            e = e4;
                            str = string;
                            str2 = TAG;
                            r11 = -3;
                        }
                        Log.e(str2, "Failed to parse xml resource " + str, e);
                        r12 = r11;
                    } catch (IOException e5) {
                        e = e5;
                    } catch (XmlPullParserException e6) {
                        e = e6;
                        str = str5;
                        str2 = str6;
                        r11 = r13;
                    }
                } catch (XmlPullParserException e7) {
                    e = e7;
                    r11 = -3;
                    str = string;
                    str2 = TAG;
                }
            } catch (IOException e8) {
                e = e8;
                str3 = string;
                str4 = TAG;
                r13 = -3;
            }
        } catch (XmlPullParserException e9) {
            e = e9;
            str = string;
            str2 = TAG;
            r11 = -3;
        }
        if (fontCallback != 0) {
            fontCallback.callbackFailAsync(r12, handler);
        }
        return null;
    }

    static class Api29Impl {
        private Api29Impl() {
        }

        static float getFloat(Resources res, int id) {
            return res.getFloat(id);
        }
    }

    static class Api23Impl {
        private Api23Impl() {
        }

        static ColorStateList getColorStateList(Resources res, int id, Resources.Theme theme) {
            return res.getColorStateList(id, theme);
        }

        static int getColor(Resources resources, int id, Resources.Theme theme) {
            return resources.getColor(id, theme);
        }
    }

    static class Api21Impl {
        private Api21Impl() {
        }

        static Drawable getDrawable(Resources resources, int id, Resources.Theme theme) {
            return resources.getDrawable(id, theme);
        }

        static Drawable getDrawableForDensity(Resources resources, int id, int density, Resources.Theme theme) {
            return resources.getDrawableForDensity(id, density, theme);
        }
    }

    static class Api15Impl {
        private Api15Impl() {
        }

        static Drawable getDrawableForDensity(Resources resources, int id, int density) {
            return resources.getDrawableForDensity(id, density);
        }
    }

    private ResourcesCompat() {
    }

    public static final class ThemeCompat {
        private ThemeCompat() {
        }

        public static void rebase(Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                Api29Impl.rebase(theme);
            } else if (Build.VERSION.SDK_INT >= 23) {
                Api23Impl.rebase(theme);
            }
        }

        static class Api29Impl {
            private Api29Impl() {
            }

            static void rebase(Resources.Theme theme) {
                theme.rebase();
            }
        }

        static class Api23Impl {
            private static Method sRebaseMethod;
            private static boolean sRebaseMethodFetched;
            private static final Object sRebaseMethodLock = new Object();

            private Api23Impl() {
            }

            /* JADX WARN: Code duplicated, block: B:30:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            static void rebase(Resources.Theme theme) {
                Method method;
                synchronized (sRebaseMethodLock) {
                    if (!sRebaseMethodFetched) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            sRebaseMethod = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i(ResourcesCompat.TAG, "Failed to retrieve rebase() method", e);
                        }
                        sRebaseMethodFetched = true;
                        method = sRebaseMethod;
                        if (method != null) {
                            try {
                                method.invoke(theme, new Object[0]);
                            } catch (IllegalAccessException | InvocationTargetException e2) {
                                Log.i(ResourcesCompat.TAG, "Failed to invoke rebase() method via reflection", e2);
                                sRebaseMethod = null;
                            }
                        }
                    } else {
                        method = sRebaseMethod;
                        if (method != null) {
                            method.invoke(theme, new Object[0]);
                        }
                    }
                    throw th;
                }
            }
        }
    }
}
