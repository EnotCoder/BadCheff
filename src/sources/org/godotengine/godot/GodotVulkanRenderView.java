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
import org.godotengine.godot.input.GodotInputHandler;
import org.godotengine.godot.vulkan.VkRenderer;
import org.godotengine.godot.vulkan.VkSurfaceView;

/* JADX INFO: loaded from: classes2.dex */
class GodotVulkanRenderView extends VkSurfaceView implements GodotRenderView {
    private final SparseArray<PointerIcon> customPointerIcons;
    private final Godot godot;
    private final GodotHost host;
    private final GodotInputHandler mInputHandler;
    private final VkRenderer mRenderer;

    @Override // org.godotengine.godot.GodotRenderView
    public /* synthetic */ boolean canCapturePointer() {
        return GodotRenderView.CC.$default$canCapturePointer(this);
    }

    public GodotVulkanRenderView(GodotHost host, Godot godot, GodotInputHandler inputHandler) {
        super(host.getActivity());
        this.customPointerIcons = new SparseArray<>();
        this.host = host;
        this.godot = godot;
        this.mInputHandler = inputHandler;
        this.mRenderer = new VkRenderer();
        if (Build.VERSION.SDK_INT >= 24) {
            setPointerIcon(PointerIcon.getSystemIcon(getContext(), 1000));
        }
        setFocusableInTouchMode(true);
        setClickable(false);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void startRenderer() {
        startRenderer(this.mRenderer);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public SurfaceView getView() {
        return this;
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void queueOnRenderThread(Runnable event) {
        queueOnVkThread(event);
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityPaused() {
        queueOnVkThread(new Runnable() { // from class: org.godotengine.godot.GodotVulkanRenderView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onActivityPaused$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityPaused$0() {
        GodotLib.focusout();
        this.mRenderer.onVkPause();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityStopped() {
        pauseRenderThread();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityStarted() {
        resumeRenderThread();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityResumed() {
        queueOnVkThread(new Runnable() { // from class: org.godotengine.godot.GodotVulkanRenderView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onActivityResumed$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onActivityResumed$1() {
        this.mRenderer.onVkResume();
        GodotLib.focusin();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public void onActivityDestroyed() {
        requestRenderThreadExitAndWait();
    }

    @Override // org.godotengine.godot.GodotRenderView
    public GodotInputHandler getInputHandler() {
        return this.mInputHandler;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        super.onTouchEvent(event);
        return this.mInputHandler.onTouchEvent(event);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return this.mInputHandler.onKeyUp(keyCode, event) || super.onKeyUp(keyCode, event);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return this.mInputHandler.onKeyDown(keyCode, event) || super.onKeyDown(keyCode, event);
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent event) {
        return this.mInputHandler.onGenericMotionEvent(event) || super.onGenericMotionEvent(event);
    }

    @Override // android.view.View
    public boolean onCapturedPointerEvent(MotionEvent event) {
        return this.mInputHandler.onGenericMotionEvent(event);
    }

    @Override // android.view.View
    public void requestPointerCapture() {
        if (canCapturePointer()) {
            super.requestPointerCapture();
            this.mInputHandler.onPointerCaptureChange(true);
        }
    }

    @Override // android.view.View
    public void releasePointerCapture() {
        super.releasePointerCapture();
        this.mInputHandler.onPointerCaptureChange(false);
    }

    @Override // android.view.View
    public void onPointerCaptureChange(boolean hasCapture) {
        super.onPointerCaptureChange(hasCapture);
        this.mInputHandler.onPointerCaptureChange(hasCapture);
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
}
