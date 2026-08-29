package androidx.core.splashscreen;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.window.SplashScreenView;
import java.time.Duration;
import java.time.Instant;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SplashScreenViewProvider.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0002\u0018\u0019B\u0017\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u000f\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0006\u0010\u0016\u001a\u00020\u0017R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0011¨\u0006\u001a"}, d2 = {"Landroidx/core/splashscreen/SplashScreenViewProvider;", "", "platformView", "Landroid/window/SplashScreenView;", "ctx", "Landroid/app/Activity;", "(Landroid/window/SplashScreenView;Landroid/app/Activity;)V", "(Landroid/app/Activity;)V", "iconAnimationDurationMillis", "", "getIconAnimationDurationMillis", "()J", "iconAnimationStartMillis", "getIconAnimationStartMillis", "iconView", "Landroid/view/View;", "getIconView", "()Landroid/view/View;", "impl", "Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;", "view", "getView", "remove", "", "ViewImpl", "ViewImpl31", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class SplashScreenViewProvider {
    private final ViewImpl impl;

    public SplashScreenViewProvider(Activity ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        ViewImpl31 viewImpl31 = Build.VERSION.SDK_INT >= 31 ? new ViewImpl31(ctx) : new ViewImpl(ctx);
        ViewImpl $this$impl_u24lambda_u2d0 = viewImpl31;
        $this$impl_u24lambda_u2d0.createSplashScreenView();
        this.impl = viewImpl31;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplashScreenViewProvider(SplashScreenView platformView, Activity ctx) {
        this(ctx);
        Intrinsics.checkNotNullParameter(platformView, "platformView");
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        ((ViewImpl31) this.impl).setPlatformView(platformView);
    }

    public final View getView() {
        return this.impl.getSplashScreenView();
    }

    public final View getIconView() {
        return this.impl.getIconView();
    }

    public final long getIconAnimationStartMillis() {
        return this.impl.getIconAnimationStartMillis();
    }

    public final long getIconAnimationDurationMillis() {
        return this.impl.getIconAnimationDurationMillis();
    }

    public final void remove() {
        this.impl.remove();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SplashScreenViewProvider.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0012\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u001aH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\b¨\u0006\u001c"}, d2 = {"Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;", "", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "_splashScreenView", "Landroid/view/ViewGroup;", "get_splashScreenView", "()Landroid/view/ViewGroup;", "_splashScreenView$delegate", "Lkotlin/Lazy;", "getActivity", "()Landroid/app/Activity;", "iconAnimationDurationMillis", "", "getIconAnimationDurationMillis", "()J", "iconAnimationStartMillis", "getIconAnimationStartMillis", "iconView", "Landroid/view/View;", "getIconView", "()Landroid/view/View;", "splashScreenView", "getSplashScreenView", "createSplashScreenView", "", "remove", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    static class ViewImpl {

        /* JADX INFO: renamed from: _splashScreenView$delegate, reason: from kotlin metadata */
        private final Lazy _splashScreenView;
        private final Activity activity;

        public ViewImpl(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.activity = activity;
            this._splashScreenView = LazyKt.lazy(new Function0<ViewGroup>() { // from class: androidx.core.splashscreen.SplashScreenViewProvider$ViewImpl$_splashScreenView$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final ViewGroup invoke() {
                    View viewInflate = FrameLayout.inflate(this.this$0.getActivity(), R.layout.splash_screen_view, null);
                    if (viewInflate != null) {
                        return (ViewGroup) viewInflate;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup");
                }
            });
        }

        public final Activity getActivity() {
            return this.activity;
        }

        private final ViewGroup get_splashScreenView() {
            return (ViewGroup) this._splashScreenView.getValue();
        }

        public void createSplashScreenView() {
            ViewGroup content = (ViewGroup) this.activity.findViewById(android.R.id.content);
            View rootView = content.getRootView();
            ViewGroup viewGroup = rootView instanceof ViewGroup ? (ViewGroup) rootView : null;
            if (viewGroup != null) {
                viewGroup.addView(get_splashScreenView());
            }
        }

        public ViewGroup getSplashScreenView() {
            return get_splashScreenView();
        }

        public View getIconView() {
            View viewFindViewById = getSplashScreenView().findViewById(R.id.splashscreen_icon_view);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "splashScreenView.findVie…d.splashscreen_icon_view)");
            return viewFindViewById;
        }

        public long getIconAnimationStartMillis() {
            return 0L;
        }

        public long getIconAnimationDurationMillis() {
            return 0L;
        }

        public void remove() {
            ViewParent parent = getSplashScreenView().getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(getSplashScreenView());
            }
        }
    }

    /* JADX INFO: compiled from: SplashScreenViewProvider.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0018H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\bR\u0014\u0010\u000b\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0012¨\u0006\u001a"}, d2 = {"Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl31;", "Landroidx/core/splashscreen/SplashScreenViewProvider$ViewImpl;", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;)V", "iconAnimationDurationMillis", "", "getIconAnimationDurationMillis", "()J", "iconAnimationStartMillis", "getIconAnimationStartMillis", "iconView", "Landroid/view/View;", "getIconView", "()Landroid/view/View;", "platformView", "Landroid/window/SplashScreenView;", "getPlatformView", "()Landroid/window/SplashScreenView;", "setPlatformView", "(Landroid/window/SplashScreenView;)V", "splashScreenView", "getSplashScreenView", "createSplashScreenView", "", "remove", "core-splashscreen_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    private static final class ViewImpl31 extends ViewImpl {
        public SplashScreenView platformView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewImpl31(Activity activity) {
            super(activity);
            Intrinsics.checkNotNullParameter(activity, "activity");
        }

        public final SplashScreenView getPlatformView() {
            SplashScreenView splashScreenView = this.platformView;
            if (splashScreenView != null) {
                return splashScreenView;
            }
            Intrinsics.throwUninitializedPropertyAccessException("platformView");
            return null;
        }

        public final void setPlatformView(SplashScreenView splashScreenView) {
            Intrinsics.checkNotNullParameter(splashScreenView, "<set-?>");
            this.platformView = splashScreenView;
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public void createSplashScreenView() {
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public SplashScreenView getSplashScreenView() {
            return getPlatformView();
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public View getIconView() {
            View iconView = getPlatformView().getIconView();
            Intrinsics.checkNotNull(iconView);
            return iconView;
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public long getIconAnimationStartMillis() {
            Instant iconAnimationStart = getPlatformView().getIconAnimationStart();
            if (iconAnimationStart != null) {
                return iconAnimationStart.toEpochMilli();
            }
            return 0L;
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public long getIconAnimationDurationMillis() {
            Duration iconAnimationDuration = getPlatformView().getIconAnimationDuration();
            if (iconAnimationDuration != null) {
                return iconAnimationDuration.toMillis();
            }
            return 0L;
        }

        @Override // androidx.core.splashscreen.SplashScreenViewProvider.ViewImpl
        public void remove() {
            getPlatformView().remove();
            Resources.Theme theme = getActivity().getTheme();
            Intrinsics.checkNotNullExpressionValue(theme, "activity.theme");
            View decorView = getActivity().getWindow().getDecorView();
            Intrinsics.checkNotNullExpressionValue(decorView, "activity.window.decorView");
            ThemeUtils.Api31.applyThemesSystemBarAppearance$default(theme, decorView, null, 4, null);
        }
    }
}
