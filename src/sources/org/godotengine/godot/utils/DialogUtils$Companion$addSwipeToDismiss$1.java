package org.godotengine.godot.utils;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.PopupWindow;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DialogUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"org/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1", "Landroid/view/View$OnTouchListener;", "dX", "", "initialX", "threshold", "onTouch", "", "v", "Landroid/view/View;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DialogUtils$Companion$addSwipeToDismiss$1 implements View.OnTouchListener {
    final /* synthetic */ PopupWindow $popupWindow;
    final /* synthetic */ View $view;
    private float dX;
    private float initialX;
    private final float threshold = 300.0f;

    DialogUtils$Companion$addSwipeToDismiss$1(View $view, PopupWindow $popupWindow) {
        this.$view = $view;
        this.$popupWindow = $popupWindow;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        switch (event.getAction()) {
            case 0:
                this.initialX = event.getRawX();
                this.dX = this.$view.getTranslationX();
                break;
            case 1:
            case 3:
                float finalX = event.getRawX() - this.initialX;
                if (Math.abs(finalX) > this.threshold) {
                    ViewPropertyAnimator duration = this.$view.animate().translationX(finalX > 0.0f ? this.$view.getWidth() : -this.$view.getWidth()).setDuration(200L);
                    final PopupWindow popupWindow = this.$popupWindow;
                    duration.withEndAction(new Runnable() { // from class: org.godotengine.godot.utils.DialogUtils$Companion$addSwipeToDismiss$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            DialogUtils$Companion$addSwipeToDismiss$1.onTouch$lambda$0(popupWindow);
                        }
                    }).start();
                } else {
                    this.$view.animate().translationX(0.0f).setDuration(200L).start();
                }
                break;
            case 2:
                float deltaX = event.getRawX() - this.initialX;
                this.$view.setTranslationX(this.dX + deltaX);
                break;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTouch$lambda$0(PopupWindow popupWindow) {
        Intrinsics.checkNotNullParameter(popupWindow, "$popupWindow");
        popupWindow.dismiss();
    }
}
