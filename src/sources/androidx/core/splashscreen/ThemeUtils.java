package androidx.core.splashscreen;

import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.WindowInsetsController;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ThemeUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Landroidx/core/splashscreen/ThemeUtils;", "", "()V", "Api31", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class ThemeUtils {
    public static final ThemeUtils INSTANCE = new ThemeUtils();

    private ThemeUtils() {
    }

    /* JADX INFO: compiled from: ThemeUtils.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006R\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Landroidx/core/splashscreen/ThemeUtils$Api31;", "", "()V", "applyThemesSystemBarAppearance", "", "theme", "Landroid/content/res/Resources$Theme;", "Landroid/content/res/Resources;", "decor", "Landroid/view/View;", "tv", "Landroid/util/TypedValue;", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static final class Api31 {
        public static final Api31 INSTANCE = new Api31();

        @JvmStatic
        public static final void applyThemesSystemBarAppearance(Resources.Theme theme, View decor) {
            Intrinsics.checkNotNullParameter(theme, "theme");
            Intrinsics.checkNotNullParameter(decor, "decor");
            applyThemesSystemBarAppearance$default(theme, decor, null, 4, null);
        }

        private Api31() {
        }

        public static /* synthetic */ void applyThemesSystemBarAppearance$default(Resources.Theme theme, View view, TypedValue typedValue, int i, Object obj) {
            if ((i & 4) != 0) {
                typedValue = new TypedValue();
            }
            applyThemesSystemBarAppearance(theme, view, typedValue);
        }

        @JvmStatic
        public static final void applyThemesSystemBarAppearance(Resources.Theme theme, View decor, TypedValue tv) {
            Intrinsics.checkNotNullParameter(theme, "theme");
            Intrinsics.checkNotNullParameter(decor, "decor");
            Intrinsics.checkNotNullParameter(tv, "tv");
            int appearance = 0;
            if (theme.resolveAttribute(android.R.attr.windowLightStatusBar, tv, true) && tv.data != 0) {
                appearance = 0 | 8;
            }
            if (theme.resolveAttribute(android.R.attr.windowLightNavigationBar, tv, true) && tv.data != 0) {
                appearance |= 16;
            }
            WindowInsetsController windowInsetsController = decor.getWindowInsetsController();
            Intrinsics.checkNotNull(windowInsetsController);
            windowInsetsController.setSystemBarsAppearance(appearance, 24);
        }
    }
}
