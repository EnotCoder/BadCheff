.class Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/gl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fputmExited(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/gl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1277
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/godotengine/godot/gl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1839
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1278
    const/4 v1, 0x0

    iput v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWidth:I

    .line 1279
    iput v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHeight:I

    .line 1280
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1281
    iput v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1282
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1283
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1284
    return-void
.end method

.method private guardedRun()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1325
    move-object/from16 v1, p0

    new-instance v0, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    iget-object v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 1326
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1327
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1328
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1331
    const/4 v2, 0x0

    .line 1332
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1333
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1334
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1335
    .local v5, "createGlInterface":Z
    const/4 v6, 0x0

    .line 1336
    .local v6, "lostEglContext":Z
    const/4 v7, 0x0

    .line 1337
    .local v7, "sizeChanged":Z
    const/4 v8, 0x0

    .line 1338
    .local v8, "wantRenderNotification":Z
    const/4 v9, 0x0

    .line 1339
    .local v9, "doRenderNotification":Z
    const/4 v10, 0x0

    .line 1340
    .local v10, "askedToReleaseEglContext":Z
    const/4 v11, 0x0

    .line 1341
    .local v11, "w":I
    const/4 v12, 0x0

    .line 1342
    .local v12, "h":I
    const/4 v13, 0x0

    .line 1343
    .local v13, "event":Ljava/lang/Runnable;
    const/4 v14, 0x0

    .line 1346
    .local v14, "finishDrawingRunnable":Ljava/lang/Runnable;
    :goto_0
    :try_start_0
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 1348
    :goto_1
    :try_start_1
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldExit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v0, :cond_1

    .line 1349
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1637
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v16

    monitor-enter v16

    .line 1638
    :try_start_3
    const-string v0, "GLThread"

    const-string v15, "Exiting render thread"

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 1640
    .local v0, "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    if-eqz v0, :cond_0

    .line 1641
    invoke-static {v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$fgetmRenderer(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    move-result-object v15

    invoke-interface {v15}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onRenderThreadExiting()V

    .line 1644
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1645
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1646
    .end local v0    # "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    monitor-exit v16

    .line 1349
    return-void

    .line 1646
    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1521
    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_d

    .line 1352
    :cond_1
    :try_start_4
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object/from16 v17, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v17, "gl":Ljavax/microedition/khronos/opengles/GL10;
    if-nez v0, :cond_2

    .line 1353
    :try_start_5
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1354
    .end local v13    # "event":Ljava/lang/Runnable;
    .local v0, "event":Ljava/lang/Runnable;
    move-object v13, v0

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1358
    .end local v0    # "event":Ljava/lang/Runnable;
    .restart local v13    # "event":Ljava/lang/Runnable;
    :cond_2
    const/4 v0, 0x0

    .line 1359
    .local v0, "pausing":Z
    iget-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v18, v0

    .end local v0    # "pausing":Z
    .local v18, "pausing":Z
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_3

    .line 1360
    move v2, v0

    .line 1361
    .end local v18    # "pausing":Z
    .local v2, "pausing":Z
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1362
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 1359
    .end local v2    # "pausing":Z
    .restart local v18    # "pausing":Z
    :cond_3
    move/from16 v2, v18

    .line 1369
    .end local v18    # "pausing":Z
    .restart local v2    # "pausing":Z
    :goto_2
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_4

    .line 1373
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1374
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1375
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1376
    const/4 v10, 0x1

    .line 1380
    :cond_4
    if-eqz v6, :cond_5

    .line 1381
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1382
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1383
    const/4 v0, 0x0

    move v6, v0

    .line 1387
    :cond_5
    if-eqz v2, :cond_6

    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_6

    .line 1391
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1395
    :cond_6
    if-eqz v2, :cond_8

    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_8

    .line 1396
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 1397
    .local v0, "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    if-nez v0, :cond_7

    .line 1398
    const/16 v18, 0x0

    goto :goto_3

    :cond_7
    invoke-static {v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$fgetmPreserveEGLContextOnPause(Lorg/godotengine/godot/gl/GLSurfaceView;)Z

    move-result v18

    .line 1399
    .local v18, "preserveEglContextOnPause":Z
    :goto_3
    if-nez v18, :cond_8

    .line 1400
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1408
    .end local v0    # "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    .end local v18    # "preserveEglContextOnPause":Z
    :cond_8
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_a

    .line 1412
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_9

    .line 1413
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1415
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1416
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1417
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1421
    :cond_a
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_b

    .line 1425
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1426
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1429
    :cond_b
    if-eqz v9, :cond_c

    .line 1433
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1434
    const/4 v9, 0x0

    .line 1435
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1436
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1439
    :cond_c
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 1440
    move-object v14, v0

    .line 1441
    const/4 v0, 0x0

    iput-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1445
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1448
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-nez v0, :cond_f

    .line 1449
    if-eqz v10, :cond_e

    .line 1450
    const/4 v0, 0x0

    move v10, v0

    move/from16 v18, v2

    .end local v10    # "askedToReleaseEglContext":Z
    .local v0, "askedToReleaseEglContext":Z
    goto :goto_4

    .line 1453
    .end local v0    # "askedToReleaseEglContext":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    :cond_e
    :try_start_6
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->start()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 1457
    nop

    .line 1458
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1459
    const/4 v3, 0x1

    .line 1461
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    move/from16 v18, v2

    goto :goto_4

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "t":Ljava/lang/RuntimeException;
    move/from16 v18, v2

    .end local v2    # "pausing":Z
    .local v18, "pausing":Z
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V

    .line 1456
    nop

    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    throw v0

    .line 1448
    .end local v0    # "t":Ljava/lang/RuntimeException;
    .end local v18    # "pausing":Z
    .restart local v2    # "pausing":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v7    # "sizeChanged":Z
    .restart local v8    # "wantRenderNotification":Z
    .restart local v9    # "doRenderNotification":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    .restart local v11    # "w":I
    .restart local v12    # "h":I
    .restart local v13    # "event":Ljava/lang/Runnable;
    .restart local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_f
    move/from16 v18, v2

    .line 1465
    .end local v2    # "pausing":Z
    .restart local v18    # "pausing":Z
    :goto_4
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_10

    .line 1466
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1467
    const/4 v4, 0x1

    .line 1468
    const/4 v5, 0x1

    .line 1469
    const/4 v7, 0x1

    .line 1472
    :cond_10
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_20

    .line 1473
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_11

    .line 1474
    const/4 v7, 0x1

    .line 1475
    iget v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWidth:I

    move v11, v0

    .line 1476
    iget v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHeight:I

    move v12, v0

    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1485
    const/4 v4, 0x1

    .line 1487
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1489
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1490
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1491
    iget-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v2, :cond_12

    .line 1492
    const/4 v2, 0x1

    move v8, v2

    .line 1521
    .end local v18    # "pausing":Z
    :cond_12
    :goto_5
    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1523
    if-eqz v13, :cond_13

    .line 1524
    :try_start_9
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 1525
    const/4 v13, 0x0

    .line 1526
    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 1529
    :cond_13
    if-eqz v4, :cond_15

    .line 1533
    iget-object v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1534
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 1535
    const/4 v15, 0x1

    :try_start_a
    iput-boolean v15, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1536
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1537
    monitor-exit v2

    .line 1546
    const/4 v2, 0x0

    move v4, v2

    .end local v4    # "createEglSurface":Z
    .local v2, "createEglSurface":Z
    goto :goto_6

    .line 1537
    .end local v2    # "createEglSurface":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    .line 1539
    :cond_14
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 1540
    const/4 v15, 0x1

    :try_start_c
    iput-boolean v15, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1541
    iput-boolean v15, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1542
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1543
    monitor-exit v2

    .line 1544
    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 1543
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    .line 1549
    :cond_15
    :goto_6
    if-eqz v5, :cond_16

    .line 1550
    iget-object v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 1552
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    goto :goto_7

    .line 1549
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_16
    move-object/from16 v2, v17

    .line 1556
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_7
    if-eqz v3, :cond_18

    .line 1560
    iget-object v15, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 1561
    .local v15, "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    if-eqz v15, :cond_17

    .line 1563
    invoke-static {v15}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$fgetmRenderer(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    move-result-object v0

    move/from16 v18, v3

    .end local v3    # "createEglContext":Z
    .local v18, "createEglContext":Z
    iget-object v3, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    iget-object v3, v3, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v3}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_8

    .line 1561
    .end local v18    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :cond_17
    move/from16 v18, v3

    .line 1567
    .end local v3    # "createEglContext":Z
    .restart local v18    # "createEglContext":Z
    :goto_8
    const/4 v0, 0x0

    move v3, v0

    .end local v18    # "createEglContext":Z
    .local v0, "createEglContext":Z
    goto :goto_9

    .line 1556
    .end local v0    # "createEglContext":Z
    .end local v15    # "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    .restart local v3    # "createEglContext":Z
    :cond_18
    move/from16 v18, v3

    .line 1570
    :goto_9
    if-eqz v7, :cond_1a

    .line 1574
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 1575
    .local v0, "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    if-eqz v0, :cond_19

    .line 1577
    invoke-static {v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$fgetmRenderer(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    move-result-object v15

    invoke-interface {v15, v2, v11, v12}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1581
    :cond_19
    const/4 v7, 0x0

    .line 1584
    .end local v0    # "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    :cond_1a
    const/4 v0, 0x0

    .line 1589
    .local v0, "swapBuffers":Z
    iget-object v15, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 1590
    .restart local v15    # "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    if-eqz v15, :cond_1c

    .line 1592
    move/from16 v17, v0

    .end local v0    # "swapBuffers":Z
    .local v17, "swapBuffers":Z
    invoke-static {v15}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$fgetmRenderer(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    .line 1593
    .end local v17    # "swapBuffers":Z
    .restart local v0    # "swapBuffers":Z
    if-eqz v14, :cond_1b

    .line 1594
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 1595
    const/4 v14, 0x0

    move/from16 v17, v0

    goto :goto_a

    .line 1593
    :cond_1b
    move/from16 v17, v0

    goto :goto_a

    .line 1590
    :cond_1c
    move/from16 v17, v0

    .line 1600
    .end local v0    # "swapBuffers":Z
    .end local v15    # "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    .restart local v17    # "swapBuffers":Z
    :goto_a
    if-eqz v17, :cond_1d

    .line 1601
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->swap()I

    move-result v0

    move v15, v0

    .line 1602
    .local v15, "swapError":I
    sparse-switch v15, :sswitch_data_0

    .line 1616
    const-string v0, "GLThread"

    goto :goto_b

    .line 1609
    :sswitch_0
    const/4 v0, 0x1

    .line 1610
    .end local v6    # "lostEglContext":Z
    .local v0, "lostEglContext":Z
    move v6, v0

    move-object/from16 v19, v2

    goto :goto_c

    .line 1604
    .end local v0    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :sswitch_1
    move-object/from16 v19, v2

    goto :goto_c

    .line 1616
    :goto_b
    move-object/from16 v19, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v19, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const-string v2, "eglSwapBuffers"

    invoke-static {v0, v2, v15}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1618
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1619
    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1620
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1621
    monitor-exit v2

    goto :goto_c

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 1600
    .end local v15    # "swapError":I
    .end local v19    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_1d
    move-object/from16 v19, v2

    .line 1627
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v19    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_c
    if-eqz v8, :cond_1e

    .line 1628
    const/4 v0, 0x1

    .line 1629
    .end local v9    # "doRenderNotification":Z
    .local v0, "doRenderNotification":Z
    const/4 v2, 0x0

    move v9, v0

    move v8, v2

    .line 1631
    .end local v0    # "doRenderNotification":Z
    .end local v17    # "swapBuffers":Z
    .restart local v9    # "doRenderNotification":Z
    :cond_1e
    move-object/from16 v2, v19

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1521
    .end local v19    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v17, "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_5
    move-exception v0

    move/from16 v18, v3

    .end local v3    # "createEglContext":Z
    .restart local v18    # "createEglContext":Z
    goto :goto_d

    .line 1497
    .end local v18    # "createEglContext":Z
    .local v2, "pausing":Z
    .restart local v3    # "createEglContext":Z
    :cond_1f
    move/from16 v18, v2

    .end local v2    # "pausing":Z
    .local v18, "pausing":Z
    if-eqz v14, :cond_20

    .line 1498
    :try_start_10
    const-string v0, "GLSurfaceView"

    const-string v2, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 1501
    const/4 v0, 0x0

    move-object v14, v0

    .line 1519
    :cond_20
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 1520
    .end local v18    # "pausing":Z
    move-object/from16 v2, v17

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1521
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_6
    move-exception v0

    move-object/from16 v17, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_d
    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_7
    move-exception v0

    goto :goto_d

    .line 1637
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_8
    move-exception v0

    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1638
    :try_start_12
    const-string v3, "GLThread"

    const-string v4, "Exiting render thread"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v3, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 1640
    .local v3, "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    if-eqz v3, :cond_21

    .line 1641
    invoke-static {v3}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$fgetmRenderer(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    move-result-object v4

    invoke-interface {v4}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onRenderThreadExiting()V

    .line 1644
    :cond_21
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1645
    invoke-direct/range {p0 .. p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1646
    .end local v3    # "view":Lorg/godotengine/godot/gl/GLSurfaceView;
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 1647
    throw v0

    .line 1646
    :catchall_9
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_1
        0x300e -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$requestRenderAndNotify$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "oldCallback"    # Ljava/lang/Runnable;
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .line 1706
    if-eqz p0, :cond_0

    .line 1707
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1709
    :cond_0
    if-eqz p1, :cond_1

    .line 1710
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1712
    :cond_1
    return-void
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1655
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1318
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->finish()V

    .line 1320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1321
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V

    .line 1323
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1307
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1309
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1311
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1651
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    .line 1671
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1672
    :try_start_0
    iget v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 2

    .line 1741
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1745
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1746
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1747
    monitor-exit v0

    .line 1748
    return-void

    .line 1747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    .line 1751
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1755
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1756
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1757
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1758
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1759
    monitor-exit v0

    .line 1760
    return-void

    .line 1759
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1763
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1764
    :try_start_0
    iput p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWidth:I

    .line 1765
    iput p2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHeight:I

    .line 1766
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1767
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1768
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1775
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1776
    monitor-exit v0

    return-void

    .line 1779
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1780
    monitor-exit v0

    .line 1781
    return-void

    .line 1780
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1809
    if-eqz p1, :cond_0

    .line 1812
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1813
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1815
    monitor-exit v0

    .line 1816
    return-void

    .line 1815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1810
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .line 1786
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1787
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1788
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1789
    :goto_0
    iget-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1791
    :try_start_1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1794
    :goto_1
    goto :goto_0

    .line 1792
    :catch_0
    move-exception v1

    .line 1793
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1796
    :cond_0
    monitor-exit v0

    .line 1797
    return-void

    .line 1796
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .line 1800
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1801
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1802
    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1677
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1678
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1679
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1680
    monitor-exit v0

    .line 1681
    return-void

    .line 1680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .line 1684
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1689
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1690
    monitor-exit v0

    return-void

    .line 1693
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1694
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1695
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1704
    iget-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1705
    .local v1, "oldCallback":Ljava/lang/Runnable;
    new-instance v2, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1715
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1716
    .end local v1    # "oldCallback":Ljava/lang/Runnable;
    monitor-exit v0

    .line 1717
    return-void

    .line 1716
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1294
    :try_start_0
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    :goto_0
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->threadExiting(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V

    .line 1299
    goto :goto_1

    .line 1298
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->threadExiting(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V

    .line 1299
    throw v0

    .line 1295
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1300
    :goto_1
    return-void
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .line 1661
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1664
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1665
    :try_start_0
    iput p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1666
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1667
    monitor-exit v0

    .line 1668
    return-void

    .line 1667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1662
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public surfaceCreated()V
    .locals 2

    .line 1720
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1724
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1725
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1726
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1727
    monitor-exit v0

    .line 1728
    return-void

    .line 1727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 2

    .line 1731
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1735
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1736
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1737
    monitor-exit v0

    .line 1738
    return-void

    .line 1737
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
