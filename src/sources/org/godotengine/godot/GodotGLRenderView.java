package org.godotengine.godot;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.SurfaceView;
import java.io.InputStream;
import org.godotengine.godot.gl.GLSurfaceView;
import org.godotengine.godot.gl.GodotRenderer;
import org.godotengine.godot.input.GodotInputHandler;
import org.godotengine.godot.xr.XRMode;
import org.godotengine.godot.xr.ovr.OvrConfigChooser;
import org.godotengine.godot.xr.ovr.OvrContextFactory;
import org.godotengine.godot.xr.ovr.OvrWindowSurfaceFactory;
import org.godotengine.godot.xr.regular.RegularConfigChooser;
import org.godotengine.godot.xr.regular.RegularContextFactory;
import org.godotengine.godot.xr.regular.RegularFallbackConfigChooser;

/* JADX INFO: loaded from: classes2.dex */
class GodotGLRenderView extends GLSurfaceView implements GodotRenderView {
    private final SparseArray<PointerIcon> customPointerIcons;
    private final Godot godot;
    private final GodotRenderer godotRenderer;
    private final GodotHost host;
    private final GodotInputHandler inputHandler;

    @Override // org.godotengine.godot.GodotRenderView
    public /* synthetic */ boolean canCapturePointer() {
        return GodotRenderView.CC.$default$canCapturePointer(this);
    }

    public GodotGLRenderView(GodotHost host, Godot godot, GodotInputHandler inputHandler, XRMode xrMode, boolean useDebugOpengl) {
        super(host.getActivity());
        this.customPointerIcons = new SparseArray<>();
        this.host = host;
        this.godot = godot;
        this.inputHandler = inputHandler;
        this.godotRenderer = new GodotRenderer();
        if (Build.VERSION.SDK_INT >= 24) {
            setPointerIcon(PointerIcon.getSystemIcon(getContext(), 1000));
        }
        init(xrMode, false, useDebugOpengl);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public SurfaceView getView() {
        return this;
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void queueOnRenderThread(Runnable event) {
        queueEvent(event);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityPaused() {
        queueEvent(new Runnable() { // from class: org.godotengine.godot.GodotGLRenderView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onActivityPaused$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityPaused$0() {
        GodotLib.focusout();
        this.godotRenderer.onActivityPaused();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityStopped() {
        pauseGLThread();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityResumed() {
        queueEvent(new Runnable() { // from class: org.godotengine.godot.GodotGLRenderView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onActivityResumed$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResumed$1() {
        this.godotRenderer.onActivityResumed();
        GodotLib.focusin();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityStarted() {
        resumeGLThread();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityDestroyed() {
        requestRenderThreadExitAndWait();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public GodotInputHandler getInputHandler() {
        return this.inputHandler;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        super.onTouchEvent(event);
        return this.inputHandler.onTouchEvent(event);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return this.inputHandler.onKeyUp(keyCode, event) || super.onKeyUp(keyCode, event);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return this.inputHandler.onKeyDown(keyCode, event) || super.onKeyDown(keyCode, event);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent event) {
        return this.inputHandler.onGenericMotionEvent(event) || super.onGenericMotionEvent(event);
    }

    @Override // android.view.View
    public boolean onCapturedPointerEvent(MotionEvent event) {
        return this.inputHandler.onGenericMotionEvent(event);
    }

    @Override // android.view.View
    public void onPointerCaptureChange(boolean hasCapture) {
        super.onPointerCaptureChange(hasCapture);
        this.inputHandler.onPointerCaptureChange(hasCapture);
    }

    @Override // android.view.View
    public void requestPointerCapture() {
        if (canCapturePointer()) {
            super.requestPointerCapture();
            this.inputHandler.onPointerCaptureChange(true);
        }
    }

    @Override // android.view.View
    public void releasePointerCapture() {
        super.releasePointerCapture();
        this.inputHandler.onPointerCaptureChange(false);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void configurePointerIcon(int pointerType, String imagePath, float hotSpotX, float hotSpotY) {
        if (Build.VERSION.SDK_INT >= 24) {
            Bitmap bitmap = null;
            try {
                if (!TextUtils.isEmpty(imagePath)) {
                    if (this.godot.getDirectoryAccessHandler().filesystemFileExists(imagePath)) {
                        bitmap = BitmapFactory.decodeFile(imagePath);
                    } else if (this.godot.getDirectoryAccessHandler().assetsFileExists(imagePath)) {
                        AssetManager am = getContext().getAssets();
                        InputStream imageInputStream = am.open(imagePath);
                        bitmap = BitmapFactory.decodeStream(imageInputStream);
                    }
                }
                PointerIcon customPointerIcon = PointerIcon.create(bitmap, hotSpotX, hotSpotY);
                this.customPointerIcons.put(pointerType, customPointerIcon);
            } catch (Exception e) {
                this.customPointerIcons.delete(pointerType);
            }
        }
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void setPointerIcon(int pointerType) {
        if (Build.VERSION.SDK_INT >= 24) {
            PointerIcon pointerIcon = this.customPointerIcons.get(pointerType);
            if (pointerIcon == null) {
                pointerIcon = PointerIcon.getSystemIcon(getContext(), pointerType);
            }
            setPointerIcon(pointerIcon);
        }
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent me, int pointerIndex) {
        if (Build.VERSION.SDK_INT >= 24) {
            return getPointerIcon();
        }
        return super.onResolvePointerIcon(me, pointerIndex);
    }

    private void init(XRMode xrMode, boolean translucent, boolean useDebugOpengl) {
        setPreserveEGLContextOnPause(true);
        setFocusableInTouchMode(true);
        switch (AnonymousClass1.$SwitchMap$org$godotengine$godot$xr$XRMode[xrMode.ordinal()]) {
            case 1:
                setEGLConfigChooser(new OvrConfigChooser());
                setEGLContextFactory(new OvrContextFactory());
                setEGLWindowSurfaceFactory(new OvrWindowSurfaceFactory());
                break;
            default:
                if (translucent) {
                    getHolder().setFormat(-3);
                }
                setEGLContextFactory(new RegularContextFactory(useDebugOpengl));
                setEGLConfigChooser(new RegularFallbackConfigChooser(8, 8, 8, 8, 24, 0, new RegularConfigChooser(8, 8, 8, 8, 16, 0)));
                break;
        }
    }

    /* JADX INFO: renamed from: org.godotengine.godot.GodotGLRenderView$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$godotengine$godot$xr$XRMode;

        static {
            int[] iArr = new int[XRMode.values().length];
            $SwitchMap$org$godotengine$godot$xr$XRMode = iArr;
            try {
                iArr[XRMode.OPENXR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$godotengine$godot$xr$XRMode[XRMode.REGULAR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void startRenderer() {
        setRenderer(this.godotRenderer);
    }
}
