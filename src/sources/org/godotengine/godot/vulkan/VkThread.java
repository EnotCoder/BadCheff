package org.godotengine.godot.vulkan;

import android.util.Log;
import android.view.Surface;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: VkThread.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0000\u0018\u0000 )2\u00020\u0001:\u0001)B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001fJ\u0016\u0010!\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\"\u001a\u00020\u001fJ\u0006\u0010#\u001a\u00020\u001fJ\u000e\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\tJ\u0006\u0010&\u001a\u00020\u001fJ\b\u0010'\u001a\u00020\u001fH\u0016J\b\u0010(\u001a\u00020\u001fH\u0002R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lorg/godotengine/godot/vulkan/VkThread;", "Ljava/lang/Thread;", "vkSurfaceView", "Lorg/godotengine/godot/vulkan/VkSurfaceView;", "vkRenderer", "Lorg/godotengine/godot/vulkan/VkRenderer;", "(Lorg/godotengine/godot/vulkan/VkSurfaceView;Lorg/godotengine/godot/vulkan/VkRenderer;)V", "eventQueue", "Ljava/util/ArrayList;", "Ljava/lang/Runnable;", "Lkotlin/collections/ArrayList;", "exited", "", "hasSurface", "height", "", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "lockCondition", "Ljava/util/concurrent/locks/Condition;", "kotlin.jvm.PlatformType", "readyToDraw", "getReadyToDraw", "()Z", "rendererInitialized", "rendererResumed", "resumed", "shouldExit", "surfaceChanged", "width", "onPause", "", "onResume", "onSurfaceChanged", "onSurfaceCreated", "onSurfaceDestroyed", "queueEvent", NotificationCompat.CATEGORY_EVENT, "requestExitAndWait", "run", "threadExiting", "Companion", "lib_templateDebug"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VkThread extends Thread {
    private static final String TAG = VkThread.class.getSimpleName();
    private final ArrayList<Runnable> eventQueue;
    private boolean exited;
    private boolean hasSurface;
    private int height;
    private final ReentrantLock lock;
    private final Condition lockCondition;
    private boolean rendererInitialized;
    private boolean rendererResumed;
    private boolean resumed;
    private boolean shouldExit;
    private boolean surfaceChanged;
    private final VkRenderer vkRenderer;
    private final VkSurfaceView vkSurfaceView;
    private int width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VkThread(VkSurfaceView vkSurfaceView, VkRenderer vkRenderer) {
        super(TAG);
        Intrinsics.checkNotNullParameter(vkSurfaceView, "vkSurfaceView");
        Intrinsics.checkNotNullParameter(vkRenderer, "vkRenderer");
        this.vkSurfaceView = vkSurfaceView;
        this.vkRenderer = vkRenderer;
        this.eventQueue = new ArrayList<>();
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        this.lockCondition = reentrantLock.newCondition();
    }

    private final boolean getReadyToDraw() {
        return this.hasSurface && this.resumed;
    }

    private final void threadExiting() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Log.d(TAG, "Exiting render thread");
            this.vkRenderer.onRenderThreadExiting();
            this.exited = true;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void queueEvent(Runnable event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.eventQueue.add(event);
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void requestExitAndWait() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.shouldExit = true;
            this.lockCondition.signalAll();
            while (!this.exited) {
                try {
                    Log.i(TAG, "Waiting on exit for " + getName());
                    this.lockCondition.await();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void onResume() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.resumed = true;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void onPause() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.resumed = false;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void onSurfaceCreated() {
    }

    public final void onSurfaceChanged(int width, int height) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.hasSurface = true;
            this.surfaceChanged = true;
            this.width = width;
            this.height = height;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void onSurfaceDestroyed() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.hasSurface = false;
            this.lockCondition.signalAll();
            Unit unit = Unit.INSTANCE;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Type inference failed for: r3v10, types: [T, java.lang.Object] */
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            try {
                try {
                    Ref.ObjectRef event = new Ref.ObjectRef();
                    ReentrantLock reentrantLock = this.lock;
                    reentrantLock.lock();
                    while (true) {
                        try {
                            if (this.shouldExit) {
                                reentrantLock.unlock();
                                threadExiting();
                                return;
                            }
                            if (!this.eventQueue.isEmpty()) {
                                event.element = this.eventQueue.remove(0);
                                break;
                            }
                            if (getReadyToDraw()) {
                                if (!this.rendererResumed) {
                                    this.rendererResumed = true;
                                    this.vkRenderer.onVkResume();
                                    if (!this.rendererInitialized) {
                                        this.rendererInitialized = true;
                                        VkRenderer vkRenderer = this.vkRenderer;
                                        Surface surface = this.vkSurfaceView.getHolder().getSurface();
                                        Intrinsics.checkNotNullExpressionValue(surface, "getSurface(...)");
                                        vkRenderer.onVkSurfaceCreated(surface);
                                    }
                                }
                                if (!this.surfaceChanged) {
                                    break;
                                }
                                VkRenderer vkRenderer2 = this.vkRenderer;
                                Surface surface2 = this.vkSurfaceView.getHolder().getSurface();
                                Intrinsics.checkNotNullExpressionValue(surface2, "getSurface(...)");
                                vkRenderer2.onVkSurfaceChanged(surface2, this.width, this.height);
                                this.surfaceChanged = false;
                                break;
                            }
                            if (this.rendererResumed) {
                                this.rendererResumed = false;
                                this.vkRenderer.onVkPause();
                            }
                            this.lockCondition.await();
                        } catch (Throwable th) {
                            reentrantLock.unlock();
                            throw th;
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    if (event.element != 0) {
                        Runnable runnable = (Runnable) event.element;
                        if (runnable != null) {
                            runnable.run();
                        }
                    } else {
                        this.vkRenderer.onVkDrawFrame();
                    }
                } catch (IllegalStateException ex) {
                    Log.i(TAG, "IllegalStateException", ex);
                    threadExiting();
                    return;
                } catch (InterruptedException ex2) {
                    Log.i(TAG, "InterruptedException", ex2);
                    threadExiting();
                    return;
                }
            } catch (Throwable th2) {
                threadExiting();
                throw th2;
            }
        }
    }
}
