package org.godotengine.godot.input;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GodotGestureHandler.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u000e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0007J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010%\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#H\u0016J*\u0010&\u001a\u00020\u00072\b\u0010'\u001a\u0004\u0018\u00010\u00172\u0006\u0010(\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\n2\u0006\u0010*\u001a\u00020\nH\u0016J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lorg/godotengine/godot/input/GodotGestureHandler;", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;", "inputHandler", "Lorg/godotengine/godot/input/GodotInputHandler;", "(Lorg/godotengine/godot/input/GodotInputHandler;)V", "contextClickInProgress", "", "dragInProgress", "lastDragX", "", "lastDragY", "nextDownIsDoubleTap", "panningAndScalingEnabled", "getPanningAndScalingEnabled", "()Z", "setPanningAndScalingEnabled", "(Z)V", "pointerCaptureInProgress", "scaleInProgress", "contextClickRouter", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onActionMove", "onActionUp", "onDoubleTap", "onDoubleTapEvent", "onDown", "onLongPress", "onMotionEvent", "onPointerCaptureChange", "hasCapture", "onScale", "detector", "Landroid/view/ScaleGestureDetector;", "onScaleBegin", "onScaleEnd", "onScroll", "originEvent", "terminusEvent", "distanceX", "distanceY", "onSingleTapUp", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GodotGestureHandler extends GestureDetector.SimpleOnGestureListener implements ScaleGestureDetector.OnScaleGestureListener {
    private static final String TAG = GodotGestureHandler.class.getSimpleName();
    private boolean contextClickInProgress;
    private boolean dragInProgress;
    private final GodotInputHandler inputHandler;
    private float lastDragX;
    private float lastDragY;
    private boolean nextDownIsDoubleTap;
    private boolean panningAndScalingEnabled;
    private boolean pointerCaptureInProgress;
    private boolean scaleInProgress;

    public GodotGestureHandler(GodotInputHandler inputHandler) {
        Intrinsics.checkNotNullParameter(inputHandler, "inputHandler");
        this.inputHandler = inputHandler;
    }

    public final boolean getPanningAndScalingEnabled() {
        return this.panningAndScalingEnabled;
    }

    public final void setPanningAndScalingEnabled(boolean z) {
        this.panningAndScalingEnabled = z;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.inputHandler.handleMotionEvent(event, 0, this.nextDownIsDoubleTap);
        this.nextDownIsDoubleTap = false;
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.inputHandler.handleMotionEvent(event);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int toolType = GodotInputHandler.getEventToolType(event);
        if (toolType != 3) {
            contextClickRouter(event);
        }
    }

    private final void contextClickRouter(MotionEvent event) {
        if (this.scaleInProgress || this.nextDownIsDoubleTap) {
            return;
        }
        this.inputHandler.handleMotionEvent(event, 3);
        this.inputHandler.handleMouseEvent(event, 0, 2, false);
        this.contextClickInProgress = true;
    }

    public final void onPointerCaptureChange(boolean hasCapture) {
        if (this.pointerCaptureInProgress == hasCapture) {
            return;
        }
        if (!hasCapture) {
            this.inputHandler.handleMouseEvent(1, true);
        }
        this.pointerCaptureInProgress = hasCapture;
    }

    public final boolean onMotionEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        switch (event.getActionMasked()) {
            case 1:
            case 3:
            case 12:
                return onActionUp(event);
            case 2:
                return onActionMove(event);
            default:
                return false;
        }
    }

    private final boolean onActionUp(MotionEvent event) {
        if (event.getActionMasked() == 3 && this.pointerCaptureInProgress) {
            return true;
        }
        if (!this.pointerCaptureInProgress && !this.dragInProgress && !this.contextClickInProgress) {
            return false;
        }
        if (this.contextClickInProgress || GodotInputHandler.isMouseEvent(event)) {
            this.inputHandler.handleMouseEvent(event, 1);
        } else {
            this.inputHandler.handleTouchEvent(event);
        }
        this.pointerCaptureInProgress = false;
        this.dragInProgress = false;
        this.contextClickInProgress = false;
        this.lastDragX = 0.0f;
        this.lastDragY = 0.0f;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        if ((r5.lastDragY == r6.getY(0)) == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean onActionMove(android.view.MotionEvent r6) {
        /*
            r5 = this;
            boolean r0 = r5.contextClickInProgress
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L11
            org.godotengine.godot.input.GodotInputHandler r0 = r5.inputHandler
            int r3 = r6.getActionMasked()
            r4 = 2
            r0.handleMouseEvent(r6, r3, r4, r2)
            return r1
        L11:
            boolean r0 = r5.scaleInProgress
            if (r0 != 0) goto L45
            float r0 = r5.lastDragX
            float r3 = r6.getX(r2)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L21
            r0 = 1
            goto L22
        L21:
            r0 = 0
        L22:
            if (r0 == 0) goto L33
            float r0 = r5.lastDragY
            float r3 = r6.getY(r2)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 != 0) goto L30
            r0 = 1
            goto L31
        L30:
            r0 = 0
        L31:
            if (r0 != 0) goto L45
        L33:
            float r0 = r6.getX(r2)
            r5.lastDragX = r0
            float r0 = r6.getY(r2)
            r5.lastDragY = r0
            org.godotengine.godot.input.GodotInputHandler r0 = r5.inputHandler
            r0.handleMotionEvent(r6)
            return r1
        L45:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.godotengine.godot.input.GodotGestureHandler.onActionMove(android.view.MotionEvent):boolean");
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getActionMasked() == 1) {
            this.nextDownIsDoubleTap = false;
            this.inputHandler.handleMotionEvent(event);
        } else if (event.getActionMasked() == 2 && !this.panningAndScalingEnabled) {
            this.inputHandler.handleMotionEvent(event);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.nextDownIsDoubleTap = true;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0026 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0028  */
    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent originEvent, MotionEvent terminusEvent, float distanceX, float distanceY) {
        Intrinsics.checkNotNullParameter(terminusEvent, "terminusEvent");
        if (this.scaleInProgress) {
            if (this.dragInProgress) {
                if (originEvent != null) {
                    this.inputHandler.handleMotionEvent(originEvent, 3);
                }
                this.dragInProgress = false;
                this.lastDragX = 0.0f;
                this.lastDragY = 0.0f;
            } else {
                if (this.lastDragX == 0.0f) {
                    if (!(this.lastDragY == 0.0f)) {
                        if (originEvent != null) {
                            this.inputHandler.handleMotionEvent(originEvent, 3);
                        }
                        this.dragInProgress = false;
                        this.lastDragX = 0.0f;
                        this.lastDragY = 0.0f;
                    }
                } else {
                    if (originEvent != null) {
                        this.inputHandler.handleMotionEvent(originEvent, 3);
                    }
                    this.dragInProgress = false;
                    this.lastDragX = 0.0f;
                    this.lastDragY = 0.0f;
                }
            }
        }
        float x = terminusEvent.getX();
        float y = terminusEvent.getY();
        if (terminusEvent.getPointerCount() >= 2 && this.panningAndScalingEnabled && !this.pointerCaptureInProgress && !this.dragInProgress) {
            this.inputHandler.handlePanEvent(x, y, distanceX / 5.0f, distanceY / 5.0f);
        } else if (!this.scaleInProgress) {
            this.dragInProgress = true;
            this.lastDragX = terminusEvent.getX(0);
            this.lastDragY = terminusEvent.getY(0);
            this.inputHandler.handleMotionEvent(terminusEvent);
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (!this.panningAndScalingEnabled || this.pointerCaptureInProgress || this.dragInProgress) {
            return false;
        }
        if (detector.getScaleFactor() >= 0.8f) {
            if (!(detector.getScaleFactor() == 1.0f) && detector.getScaleFactor() <= 1.2f) {
                this.inputHandler.handleMagnifyEvent(detector.getFocusX(), detector.getFocusY(), detector.getScaleFactor());
            }
        }
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (!this.panningAndScalingEnabled || this.pointerCaptureInProgress || this.dragInProgress) {
            return false;
        }
        this.scaleInProgress = true;
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        this.scaleInProgress = false;
    }
}
