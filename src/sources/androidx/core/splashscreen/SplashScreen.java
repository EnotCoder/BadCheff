package androidx.core.splashscreen;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.ImageView;
import android.window.SplashScreenView;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SplashScreen.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0005\u000f\u0010\u0011\u0012\u0013B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/core/splashscreen/SplashScreen;", "", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "impl", "Landroidx/core/splashscreen/SplashScreen$Impl;", "install", "", "setKeepOnScreenCondition", "condition", "Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;", "setOnExitAnimationListener", "listener", "Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;", "Companion", "Impl", "Impl31", "KeepOnScreenCondition", "OnExitAnimationListener", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class SplashScreen {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final float MASK_FACTOR = 0.6666667f;
    private final Impl impl;

    /* JADX INFO: compiled from: SplashScreen.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'¨\u0006\u0004"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;", "", "shouldKeepOnScreen", "", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public interface KeepOnScreenCondition {
        boolean shouldKeepOnScreen();
    }

    /* JADX INFO: compiled from: SplashScreen.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'¨\u0006\u0006"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;", "", "onSplashScreenExit", "", "splashScreenViewProvider", "Landroidx/core/splashscreen/SplashScreenViewProvider;", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public interface OnExitAnimationListener {
        void onSplashScreenExit(SplashScreenViewProvider splashScreenViewProvider);
    }

    public /* synthetic */ SplashScreen(Activity activity, DefaultConstructorMarker defaultConstructorMarker) {
        this(activity);
    }

    @JvmStatic
    public static final SplashScreen installSplashScreen(Activity activity) {
        return INSTANCE.installSplashScreen(activity);
    }

    private SplashScreen(Activity activity) {
        this.impl = Build.VERSION.SDK_INT >= 31 ? new Impl31(activity) : new Impl(activity);
    }

    /* JADX INFO: compiled from: SplashScreen.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$Companion;", "", "()V", "MASK_FACTOR", "", "installSplashScreen", "Landroidx/core/splashscreen/SplashScreen;", "Landroid/app/Activity;", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SplashScreen installSplashScreen(Activity $this$installSplashScreen) {
            Intrinsics.checkNotNullParameter($this$installSplashScreen, "<this>");
            SplashScreen splashScreen = new SplashScreen($this$installSplashScreen, null);
            splashScreen.install();
            return splashScreen;
        }
    }

    public final void setKeepOnScreenCondition(KeepOnScreenCondition condition) {
        Intrinsics.checkNotNullParameter(condition, "condition");
        this.impl.setKeepOnScreenCondition(condition);
    }

    public final void setOnExitAnimationListener(OnExitAnimationListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.impl.setOnExitAnimationListener(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void install() {
        this.impl.install();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SplashScreen.kt */
    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020%J\u0018\u0010/\u001a\u00020-2\u0006\u00100\u001a\u0002012\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\b\u00102\u001a\u00020-H\u0016J\u0010\u00103\u001a\u00020-2\u0006\u00104\u001a\u00020'H\u0016J\u0010\u00105\u001a\u00020-2\u0006\u00106\u001a\u00020\bH\u0016J\u001c\u00107\u001a\u00020-2\n\u00108\u001a\u000609R\u00020:2\u0006\u0010;\u001a\u00020<H\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001e\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR\u001a\u0010\u0013\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006="}, d2 = {"Landroidx/core/splashscreen/SplashScreen$Impl;", "", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "getActivity", "()Landroid/app/Activity;", "animationListener", "Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;", "backgroundColor", "", "getBackgroundColor", "()Ljava/lang/Integer;", "setBackgroundColor", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "backgroundResId", "getBackgroundResId", "setBackgroundResId", "finalThemeId", "getFinalThemeId", "()I", "setFinalThemeId", "(I)V", "hasBackground", "", "getHasBackground", "()Z", "setHasBackground", "(Z)V", "icon", "Landroid/graphics/drawable/Drawable;", "getIcon", "()Landroid/graphics/drawable/Drawable;", "setIcon", "(Landroid/graphics/drawable/Drawable;)V", "mSplashScreenViewProvider", "Landroidx/core/splashscreen/SplashScreenViewProvider;", "splashScreenWaitPredicate", "Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;", "getSplashScreenWaitPredicate", "()Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;", "setSplashScreenWaitPredicate", "(Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;)V", "dispatchOnExitAnimation", "", "splashScreenViewProvider", "displaySplashScreenIcon", "splashScreenView", "Landroid/view/View;", "install", "setKeepOnScreenCondition", "keepOnScreenCondition", "setOnExitAnimationListener", "exitAnimationListener", "setPostSplashScreenTheme", "currentTheme", "Landroid/content/res/Resources$Theme;", "Landroid/content/res/Resources;", "typedValue", "Landroid/util/TypedValue;", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    static class Impl {
        private final Activity activity;
        private OnExitAnimationListener animationListener;
        private Integer backgroundColor;
        private Integer backgroundResId;
        private int finalThemeId;
        private boolean hasBackground;
        private Drawable icon;
        private SplashScreenViewProvider mSplashScreenViewProvider;
        private KeepOnScreenCondition splashScreenWaitPredicate;

        public Impl(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
            this.splashScreenWaitPredicate = new KeepOnScreenCondition() { // from class: androidx.core.splashscreen.SplashScreen$Impl$$ExternalSyntheticLambda1
                @Override // androidx.core.splashscreen.SplashScreen.KeepOnScreenCondition
                public final boolean shouldKeepOnScreen() {
                    return SplashScreen.Impl.m30splashScreenWaitPredicate$lambda0();
                }
            };
        }

        public final Activity getActivity() {
            return this.activity;
        }

        public final int getFinalThemeId() {
            return this.finalThemeId;
        }

        public final void setFinalThemeId(int i) {
            this.finalThemeId = i;
        }

        public final Integer getBackgroundResId() {
            return this.backgroundResId;
        }

        public final void setBackgroundResId(Integer num) {
            this.backgroundResId = num;
        }

        public final Integer getBackgroundColor() {
            return this.backgroundColor;
        }

        public final void setBackgroundColor(Integer num) {
            this.backgroundColor = num;
        }

        public final Drawable getIcon() {
            return this.icon;
        }

        public final void setIcon(Drawable drawable) {
            this.icon = drawable;
        }

        public final boolean getHasBackground() {
            return this.hasBackground;
        }

        public final void setHasBackground(boolean z) {
            this.hasBackground = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: splashScreenWaitPredicate$lambda-0, reason: not valid java name */
        public static final boolean m30splashScreenWaitPredicate$lambda0() {
            return false;
        }

        public final KeepOnScreenCondition getSplashScreenWaitPredicate() {
            return this.splashScreenWaitPredicate;
        }

        public final void setSplashScreenWaitPredicate(KeepOnScreenCondition keepOnScreenCondition) {
            Intrinsics.checkNotNullParameter(keepOnScreenCondition, "<set-?>");
            this.splashScreenWaitPredicate = keepOnScreenCondition;
        }

        public void install() {
            TypedValue typedValue = new TypedValue();
            Resources.Theme currentTheme = this.activity.getTheme();
            if (currentTheme.resolveAttribute(R.attr.windowSplashScreenBackground, typedValue, true)) {
                this.backgroundResId = Integer.valueOf(typedValue.resourceId);
                this.backgroundColor = Integer.valueOf(typedValue.data);
            }
            if (currentTheme.resolveAttribute(R.attr.windowSplashScreenAnimatedIcon, typedValue, true)) {
                this.icon = currentTheme.getDrawable(typedValue.resourceId);
            }
            if (currentTheme.resolveAttribute(R.attr.splashScreenIconSize, typedValue, true)) {
                this.hasBackground = typedValue.resourceId == R.dimen.splashscreen_icon_size_with_background;
            }
            Intrinsics.checkNotNullExpressionValue(currentTheme, "currentTheme");
            setPostSplashScreenTheme(currentTheme, typedValue);
        }

        protected final void setPostSplashScreenTheme(Resources.Theme currentTheme, TypedValue typedValue) {
            Intrinsics.checkNotNullParameter(currentTheme, "currentTheme");
            Intrinsics.checkNotNullParameter(typedValue, "typedValue");
            if (currentTheme.resolveAttribute(R.attr.postSplashScreenTheme, typedValue, true)) {
                int i = typedValue.resourceId;
                this.finalThemeId = i;
                if (i != 0) {
                    this.activity.setTheme(i);
                }
            }
        }

        public void setKeepOnScreenCondition(KeepOnScreenCondition keepOnScreenCondition) {
            Intrinsics.checkNotNullParameter(keepOnScreenCondition, "keepOnScreenCondition");
            this.splashScreenWaitPredicate = keepOnScreenCondition;
            final View contentView = this.activity.findViewById(android.R.id.content);
            ViewTreeObserver observer = contentView.getViewTreeObserver();
            observer.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.core.splashscreen.SplashScreen$Impl$setKeepOnScreenCondition$1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    if (this.this$0.getSplashScreenWaitPredicate().shouldKeepOnScreen()) {
                        return false;
                    }
                    contentView.getViewTreeObserver().removeOnPreDrawListener(this);
                    SplashScreenViewProvider p0 = this.this$0.mSplashScreenViewProvider;
                    if (p0 != null) {
                        this.this$0.dispatchOnExitAnimation(p0);
                        return true;
                    }
                    return true;
                }
            });
        }

        public void setOnExitAnimationListener(OnExitAnimationListener exitAnimationListener) {
            Intrinsics.checkNotNullParameter(exitAnimationListener, "exitAnimationListener");
            this.animationListener = exitAnimationListener;
            final SplashScreenViewProvider splashScreenViewProvider = new SplashScreenViewProvider(this.activity);
            Integer finalBackgroundResId = this.backgroundResId;
            Integer finalBackgroundColor = this.backgroundColor;
            View splashScreenView = splashScreenViewProvider.getView();
            if (finalBackgroundResId != null && finalBackgroundResId.intValue() != 0) {
                splashScreenView.setBackgroundResource(finalBackgroundResId.intValue());
            } else if (finalBackgroundColor != null) {
                splashScreenView.setBackgroundColor(finalBackgroundColor.intValue());
            } else {
                splashScreenView.setBackground(this.activity.getWindow().getDecorView().getBackground());
            }
            Drawable it = this.icon;
            if (it != null) {
                displaySplashScreenIcon(splashScreenView, it);
            }
            splashScreenView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.core.splashscreen.SplashScreen$Impl$setOnExitAnimationListener$2
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (!view.isAttachedToWindow()) {
                        return;
                    }
                    view.removeOnLayoutChangeListener(this);
                    if (!this.this$0.getSplashScreenWaitPredicate().shouldKeepOnScreen()) {
                        this.this$0.dispatchOnExitAnimation(splashScreenViewProvider);
                    } else {
                        this.this$0.mSplashScreenViewProvider = splashScreenViewProvider;
                    }
                }
            });
        }

        private final void displaySplashScreenIcon(View splashScreenView, Drawable icon) {
            float maskSize;
            ImageView iconView = (ImageView) splashScreenView.findViewById(R.id.splashscreen_icon_view);
            if (this.hasBackground) {
                Drawable iconBackgroundDrawable = iconView.getContext().getDrawable(R.drawable.icon_background);
                float iconSize = iconView.getResources().getDimension(R.dimen.splashscreen_icon_size_with_background);
                maskSize = SplashScreen.MASK_FACTOR * iconSize;
                if (iconBackgroundDrawable != null) {
                    iconView.setBackground(new MaskedDrawable(iconBackgroundDrawable, maskSize));
                }
            } else {
                float iconSize2 = iconView.getResources().getDimension(R.dimen.splashscreen_icon_size_no_background);
                maskSize = SplashScreen.MASK_FACTOR * iconSize2;
            }
            iconView.setImageDrawable(new MaskedDrawable(icon, maskSize));
        }

        public final void dispatchOnExitAnimation(final SplashScreenViewProvider splashScreenViewProvider) {
            Intrinsics.checkNotNullParameter(splashScreenViewProvider, "splashScreenViewProvider");
            final OnExitAnimationListener finalListener = this.animationListener;
            if (finalListener == null) {
                return;
            }
            this.animationListener = null;
            splashScreenViewProvider.getView().postOnAnimation(new Runnable() { // from class: androidx.core.splashscreen.SplashScreen$Impl$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SplashScreen.Impl.m29dispatchOnExitAnimation$lambda3(splashScreenViewProvider, finalListener);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: dispatchOnExitAnimation$lambda-3, reason: not valid java name */
        public static final void m29dispatchOnExitAnimation$lambda3(SplashScreenViewProvider splashScreenViewProvider, OnExitAnimationListener finalListener) {
            Intrinsics.checkNotNullParameter(splashScreenViewProvider, "$splashScreenViewProvider");
            Intrinsics.checkNotNullParameter(finalListener, "$finalListener");
            splashScreenViewProvider.getView().bringToFront();
            finalListener.onSplashScreenExit(splashScreenViewProvider);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SplashScreen.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0019J\b\u0010\u001a\u001a\u00020\u0016H\u0016J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Landroidx/core/splashscreen/SplashScreen$Impl31;", "Landroidx/core/splashscreen/SplashScreen$Impl;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "hierarchyListener", "Landroid/view/ViewGroup$OnHierarchyChangeListener;", "getHierarchyListener", "()Landroid/view/ViewGroup$OnHierarchyChangeListener;", "mDecorFitWindowInsets", "", "getMDecorFitWindowInsets", "()Z", "setMDecorFitWindowInsets", "(Z)V", "preDrawListener", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "getPreDrawListener", "()Landroid/view/ViewTreeObserver$OnPreDrawListener;", "setPreDrawListener", "(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V", "applyAppSystemUiTheme", "", "computeDecorFitsWindow", "child", "Landroid/window/SplashScreenView;", "install", "setKeepOnScreenCondition", "keepOnScreenCondition", "Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;", "setOnExitAnimationListener", "exitAnimationListener", "Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    static final class Impl31 extends Impl {
        private final ViewGroup.OnHierarchyChangeListener hierarchyListener;
        private boolean mDecorFitWindowInsets;
        private ViewTreeObserver.OnPreDrawListener preDrawListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Impl31(final Activity activity) {
            super(activity);
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.mDecorFitWindowInsets = true;
            this.hierarchyListener = new ViewGroup.OnHierarchyChangeListener() { // from class: androidx.core.splashscreen.SplashScreen$Impl31$hierarchyListener$1
                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public void onChildViewAdded(View parent, View child) {
                    if (child instanceof SplashScreenView) {
                        SplashScreen.Impl31 impl31 = this.this$0;
                        impl31.setMDecorFitWindowInsets(impl31.computeDecorFitsWindow((SplashScreenView) child));
                        ((ViewGroup) activity.getWindow().getDecorView()).setOnHierarchyChangeListener(null);
                    }
                }

                @Override // android.view.ViewGroup.OnHierarchyChangeListener
                public void onChildViewRemoved(View parent, View child) {
                }
            };
        }

        public final ViewTreeObserver.OnPreDrawListener getPreDrawListener() {
            return this.preDrawListener;
        }

        public final void setPreDrawListener(ViewTreeObserver.OnPreDrawListener onPreDrawListener) {
            this.preDrawListener = onPreDrawListener;
        }

        public final boolean getMDecorFitWindowInsets() {
            return this.mDecorFitWindowInsets;
        }

        public final void setMDecorFitWindowInsets(boolean z) {
            this.mDecorFitWindowInsets = z;
        }

        public final ViewGroup.OnHierarchyChangeListener getHierarchyListener() {
            return this.hierarchyListener;
        }

        public final boolean computeDecorFitsWindow(SplashScreenView child) {
            Intrinsics.checkNotNullParameter(child, "child");
            WindowInsets inWindowInsets = new WindowInsets.Builder().build();
            Intrinsics.checkNotNullExpressionValue(inWindowInsets, "Builder().build()");
            Rect outLocalInsets = new Rect(Integer.MIN_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
            return (inWindowInsets == child.getRootView().computeSystemWindowInsets(inWindowInsets, outLocalInsets) && outLocalInsets.isEmpty()) ? false : true;
        }

        @Override // androidx.core.splashscreen.SplashScreen.Impl
        public void install() {
            Resources.Theme theme = getActivity().getTheme();
            Intrinsics.checkNotNullExpressionValue(theme, "activity.theme");
            setPostSplashScreenTheme(theme, new TypedValue());
            ((ViewGroup) getActivity().getWindow().getDecorView()).setOnHierarchyChangeListener(this.hierarchyListener);
        }

        @Override // androidx.core.splashscreen.SplashScreen.Impl
        public void setKeepOnScreenCondition(KeepOnScreenCondition keepOnScreenCondition) {
            Intrinsics.checkNotNullParameter(keepOnScreenCondition, "keepOnScreenCondition");
            setSplashScreenWaitPredicate(keepOnScreenCondition);
            final View contentView = getActivity().findViewById(android.R.id.content);
            ViewTreeObserver observer = contentView.getViewTreeObserver();
            if (this.preDrawListener != null && observer.isAlive()) {
                observer.removeOnPreDrawListener(this.preDrawListener);
            }
            ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.core.splashscreen.SplashScreen$Impl31$setKeepOnScreenCondition$1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    if (this.this$0.getSplashScreenWaitPredicate().shouldKeepOnScreen()) {
                        return false;
                    }
                    contentView.getViewTreeObserver().removeOnPreDrawListener(this);
                    return true;
                }
            };
            this.preDrawListener = onPreDrawListener;
            observer.addOnPreDrawListener(onPreDrawListener);
        }

        @Override // androidx.core.splashscreen.SplashScreen.Impl
        public void setOnExitAnimationListener(final OnExitAnimationListener exitAnimationListener) {
            Intrinsics.checkNotNullParameter(exitAnimationListener, "exitAnimationListener");
            getActivity().getSplashScreen().setOnExitAnimationListener(new android.window.SplashScreen.OnExitAnimationListener() { // from class: androidx.core.splashscreen.SplashScreen$Impl31$$ExternalSyntheticLambda0
                @Override // android.window.SplashScreen.OnExitAnimationListener
                public final void onSplashScreenExit(SplashScreenView splashScreenView) {
                    SplashScreen.Impl31.m32setOnExitAnimationListener$lambda0(this.f$0, exitAnimationListener, splashScreenView);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: setOnExitAnimationListener$lambda-0, reason: not valid java name */
        public static final void m32setOnExitAnimationListener$lambda0(Impl31 this$0, OnExitAnimationListener exitAnimationListener, SplashScreenView splashScreenView) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(exitAnimationListener, "$exitAnimationListener");
            Intrinsics.checkNotNullParameter(splashScreenView, "splashScreenView");
            this$0.applyAppSystemUiTheme();
            SplashScreenViewProvider splashScreenViewProvider = new SplashScreenViewProvider(splashScreenView, this$0.getActivity());
            exitAnimationListener.onSplashScreenExit(splashScreenViewProvider);
        }

        private final void applyAppSystemUiTheme() {
            TypedValue tv = new TypedValue();
            Resources.Theme theme = getActivity().getTheme();
            Window window = getActivity().getWindow();
            if (theme.resolveAttribute(android.R.attr.statusBarColor, tv, true)) {
                window.setStatusBarColor(tv.data);
            }
            if (theme.resolveAttribute(android.R.attr.navigationBarColor, tv, true)) {
                window.setNavigationBarColor(tv.data);
            }
            if (theme.resolveAttribute(android.R.attr.windowDrawsSystemBarBackgrounds, tv, true)) {
                if (tv.data != 0) {
                    window.addFlags(Integer.MIN_VALUE);
                } else {
                    window.clearFlags(Integer.MIN_VALUE);
                }
            }
            if (theme.resolveAttribute(android.R.attr.enforceNavigationBarContrast, tv, true)) {
                window.setNavigationBarContrastEnforced(tv.data != 0);
            }
            if (theme.resolveAttribute(android.R.attr.enforceStatusBarContrast, tv, true)) {
                window.setStatusBarContrastEnforced(tv.data != 0);
            }
            ViewGroup decorView = (ViewGroup) window.getDecorView();
            Intrinsics.checkNotNullExpressionValue(theme, "theme");
            ThemeUtils.Api31.applyThemesSystemBarAppearance(theme, decorView, tv);
            decorView.setOnHierarchyChangeListener(null);
            window.setDecorFitsSystemWindows(this.mDecorFitWindowInsets);
        }
    }
}
