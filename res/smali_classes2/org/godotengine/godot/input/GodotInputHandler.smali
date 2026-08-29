.class public Lorg/godotengine/godot/input/GodotInputHandler;
.super Ljava/lang/Object;
.source "GodotInputHandler.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final ROTARY_INPUT_HORIZONTAL_AXIS:I = 0x0

.field private static final ROTARY_INPUT_VERTICAL_AXIS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedRotation:I

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final godot:Lorg/godotengine/godot/Godot;

.field private final godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

.field private lastSeenToolType:I

.field private final mHardwareKeyboardIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mJoystickIds:Landroid/util/SparseIntArray;

.field private final mJoysticksDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/godotengine/godot/input/Joystick;",
            ">;"
        }
    .end annotation
.end field

.field private rotaryInputAxis:I

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/input/GodotInputHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/godotengine/godot/Godot;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "godot"    # Lorg/godotengine/godot/Godot;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoysticksDevices:Landroid/util/SparseArray;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mHardwareKeyboardIds:Ljava/util/HashSet;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:I

    .line 88
    const/4 v1, 0x1

    iput v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->rotaryInputAxis:I

    .line 90
    const/4 v2, -0x1

    iput v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->cachedRotation:I

    .line 93
    iput-object p2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godot:Lorg/godotengine/godot/Godot;

    .line 94
    const-string v2, "input"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mInputManager:Landroid/hardware/input/InputManager;

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 97
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->windowManager:Landroid/view/WindowManager;

    .line 99
    new-instance v2, Lorg/godotengine/godot/input/GodotGestureHandler;

    invoke-direct {v2, p0}, Lorg/godotengine/godot/input/GodotGestureHandler;-><init>(Lorg/godotengine/godot/input/GodotInputHandler;)V

    iput-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    .line 100
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lorg/godotengine/godot/input/GodotInputHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 101
    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 102
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method private assignJoystickIdNumber(I)I
    .locals 2
    .param p1, "deviceId"    # I

    .line 307
    const/4 v0, 0x0

    .line 308
    .local v0, "godotJoyId":I
    :goto_0
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    return v0
.end method

.method private dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V
    .locals 1
    .param p1, "runnable"    # Lorg/godotengine/godot/input/InputEventRunnable;

    .line 728
    invoke-direct {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->shouldDispatchInputToRenderThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/Godot;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 731
    :cond_0
    invoke-virtual {p1}, Lorg/godotengine/godot/input/InputEventRunnable;->run()V

    .line 733
    :goto_0
    return-void
.end method

.method static getEventTiltX(Landroid/view/MotionEvent;)F
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 514
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v0

    .line 517
    .local v0, "orientation":F
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 519
    .local v1, "tilt":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 522
    .local v2, "tiltMult":F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v3, v3

    mul-float v3, v3, v2

    return v3
.end method

.method static getEventTiltY(Landroid/view/MotionEvent;)F
    .locals 5
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 527
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v0

    .line 530
    .local v0, "orientation":F
    const/16 v1, 0x19

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 532
    .local v1, "tilt":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 535
    .local v2, "tiltMult":F
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v2

    return v3
.end method

.method static getEventToolType(Landroid/view/MotionEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 468
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static getGodotButton(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .line 404
    sparse-switch p0, :sswitch_data_0

    .line 461
    add-int/lit16 v0, p0, -0xbc

    add-int/lit8 v0, v0, 0x14

    .local v0, "button":I
    goto :goto_0

    .line 430
    .end local v0    # "button":I
    :sswitch_0
    const/4 v0, 0x4

    .line 431
    .restart local v0    # "button":I
    goto :goto_0

    .line 433
    .end local v0    # "button":I
    :sswitch_1
    const/4 v0, 0x6

    .line 434
    .restart local v0    # "button":I
    goto :goto_0

    .line 439
    .end local v0    # "button":I
    :sswitch_2
    const/16 v0, 0x8

    .line 440
    .restart local v0    # "button":I
    goto :goto_0

    .line 436
    .end local v0    # "button":I
    :sswitch_3
    const/4 v0, 0x7

    .line 437
    .restart local v0    # "button":I
    goto :goto_0

    .line 427
    .end local v0    # "button":I
    :sswitch_4
    const/16 v0, 0x10

    .line 428
    .restart local v0    # "button":I
    goto :goto_0

    .line 421
    .end local v0    # "button":I
    :sswitch_5
    const/16 v0, 0xf

    .line 422
    .restart local v0    # "button":I
    goto :goto_0

    .line 424
    .end local v0    # "button":I
    :sswitch_6
    const/16 v0, 0xa

    .line 425
    .restart local v0    # "button":I
    goto :goto_0

    .line 418
    .end local v0    # "button":I
    :sswitch_7
    const/16 v0, 0x9

    .line 419
    .restart local v0    # "button":I
    goto :goto_0

    .line 457
    .end local v0    # "button":I
    :sswitch_8
    const/16 v0, 0x12

    .line 458
    .restart local v0    # "button":I
    goto :goto_0

    .line 415
    .end local v0    # "button":I
    :sswitch_9
    const/4 v0, 0x3

    .line 416
    .restart local v0    # "button":I
    goto :goto_0

    .line 412
    .end local v0    # "button":I
    :sswitch_a
    const/4 v0, 0x2

    .line 413
    .restart local v0    # "button":I
    goto :goto_0

    .line 454
    .end local v0    # "button":I
    :sswitch_b
    const/16 v0, 0x11

    .line 455
    .restart local v0    # "button":I
    goto :goto_0

    .line 409
    .end local v0    # "button":I
    :sswitch_c
    const/4 v0, 0x1

    .line 410
    .restart local v0    # "button":I
    goto :goto_0

    .line 406
    .end local v0    # "button":I
    :sswitch_d
    const/4 v0, 0x0

    .line 407
    .restart local v0    # "button":I
    goto :goto_0

    .line 451
    .end local v0    # "button":I
    :sswitch_e
    const/16 v0, 0xe

    .line 452
    .restart local v0    # "button":I
    goto :goto_0

    .line 448
    .end local v0    # "button":I
    :sswitch_f
    const/16 v0, 0xd

    .line 449
    .restart local v0    # "button":I
    goto :goto_0

    .line 445
    .end local v0    # "button":I
    :sswitch_10
    const/16 v0, 0xc

    .line 446
    .restart local v0    # "button":I
    goto :goto_0

    .line 442
    .end local v0    # "button":I
    :sswitch_11
    const/16 v0, 0xb

    .line 443
    .restart local v0    # "button":I
    nop

    .line 464
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_11
        0x14 -> :sswitch_10
        0x15 -> :sswitch_f
        0x16 -> :sswitch_e
        0x60 -> :sswitch_d
        0x61 -> :sswitch_c
        0x62 -> :sswitch_b
        0x63 -> :sswitch_a
        0x64 -> :sswitch_9
        0x65 -> :sswitch_8
        0x66 -> :sswitch_7
        0x67 -> :sswitch_6
        0x68 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6a -> :sswitch_3
        0x6b -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method private handleJoystickAxisEvent(IIF)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "axis"    # I
    .param p3, "value"    # F

    .line 688
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    .line 689
    .local v0, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v0, :cond_0

    .line 690
    return-void

    .line 693
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setJoystickAxisEvent(IIF)V

    .line 694
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 695
    return-void
.end method

.method private handleJoystickButtonEvent(IIZ)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "button"    # I
    .param p3, "pressed"    # Z

    .line 678
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    .line 679
    .local v0, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v0, :cond_0

    .line 680
    return-void

    .line 683
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setJoystickButtonEvent(IIZ)V

    .line 684
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 685
    return-void
.end method

.method private handleJoystickConnectionChangedEvent(IZLjava/lang/String;)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "connected"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 708
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    .line 709
    .local v0, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v0, :cond_0

    .line 710
    return-void

    .line 713
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setJoystickConnectionChangedEvent(IZLjava/lang/String;)V

    .line 714
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 715
    return-void
.end method

.method private handleJoystickHatEvent(III)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "hatX"    # I
    .param p3, "hatY"    # I

    .line 698
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    .line 699
    .local v0, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v0, :cond_0

    .line 700
    return-void

    .line 703
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setJoystickHatEvent(III)V

    .line 704
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 705
    return-void
.end method

.method private isKeyEventGameDevice(I)Z
    .locals 3
    .param p1, "source"    # I

    .line 145
    const/16 v0, 0x301

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 146
    return v1

    .line 148
    :cond_0
    const v0, 0x1000010

    and-int v2, p1, v0

    if-eq v2, v0, :cond_1

    and-int/lit16 v0, p1, 0x201

    const/16 v2, 0x201

    if-eq v0, v2, :cond_1

    and-int/lit16 v0, p1, 0x401

    const/16 v2, 0x401

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static isMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 472
    invoke-static {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventToolType(Landroid/view/MotionEvent;)I

    move-result v0

    .line 473
    .local v0, "toolType":I
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 475
    .local v1, "eventSource":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 486
    and-int/lit16 v4, v1, 0x2002

    const/16 v5, 0x2002

    if-eq v4, v5, :cond_1

    and-int/lit16 v4, v1, 0x5002

    const/16 v5, 0x4002

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 482
    :pswitch_0
    return v2

    .line 477
    :pswitch_1
    return v3

    .line 486
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 489
    .local v4, "mouseSource":Z
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_4

    .line 490
    if-nez v4, :cond_3

    const v5, 0x20004

    and-int v6, v1, v5

    if-ne v6, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    move v4, v2

    .line 493
    :cond_4
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private shouldDispatchInputToRenderThread()Z
    .locals 1

    .line 129
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->shouldDispatchInputToRenderThread()Z

    move-result v0

    return v0
.end method

.method private updateCachedRotation()V
    .locals 1

    .line 788
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->cachedRotation:I

    .line 789
    return-void
.end method


# virtual methods
.method public canCapturePointer()Z
    .locals 2

    .line 152
    iget v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public enableLongPress(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 112
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 113
    return-void
.end method

.method public enablePanningAndScalingGestures(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 121
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->setPanningAndScalingEnabled(Z)V

    .line 122
    return-void
.end method

.method handleKeyEvent(IIIZZ)V
    .locals 7
    .param p1, "physicalKeycode"    # I
    .param p2, "unicode"    # I
    .param p3, "keyLabel"    # I
    .param p4, "pressed"    # Z
    .param p5, "echo"    # Z

    .line 718
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v6

    .line 719
    .local v6, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v6, :cond_0

    .line 720
    return-void

    .line 723
    :cond_0
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/InputEventRunnable;->setKeyEvent(IIIZZ)V

    .line 724
    invoke-direct {p0, v6}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 725
    return-void
.end method

.method handleMagnifyEvent(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "factor"    # F

    .line 658
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    .line 659
    .local v0, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v0, :cond_0

    .line 660
    return-void

    .line 663
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setMagnifyEvent(FFF)V

    .line 664
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 665
    return-void
.end method

.method handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method handleMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventActionOverride"    # I

    .line 502
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;IZ)Z

    move-result v0

    return v0
.end method

.method handleMotionEvent(Landroid/view/MotionEvent;IZ)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventActionOverride"    # I
    .param p3, "doubleTap"    # Z

    .line 506
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->isMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0, p1, p2, p3}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IZ)Z

    move-result v0

    return v0

    .line 509
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;IZ)Z

    move-result v0

    return v0
.end method

.method handleMouseEvent(IIFFFFZZFFF)Z
    .locals 14
    .param p1, "eventAction"    # I
    .param p2, "buttonsMask"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "deltaX"    # F
    .param p6, "deltaY"    # F
    .param p7, "doubleClick"    # Z
    .param p8, "sourceMouseRelative"    # Z
    .param p9, "pressure"    # F
    .param p10, "tiltX"    # F
    .param p11, "tiltY"    # F

    .line 584
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v12

    .line 585
    .local v12, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    const/4 v0, 0x0

    if-nez v12, :cond_0

    .line 586
    return v0

    .line 590
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 594
    :pswitch_0
    const/4 v1, 0x0

    .line 595
    .end local p2    # "buttonsMask":I
    .local v1, "buttonsMask":I
    move v13, v1

    goto :goto_1

    .line 598
    .end local v1    # "buttonsMask":I
    .restart local p2    # "buttonsMask":I
    :pswitch_1
    if-nez p2, :cond_1

    .line 599
    const/4 v1, 0x1

    move v13, v1

    .end local p2    # "buttonsMask":I
    .restart local v1    # "buttonsMask":I
    goto :goto_1

    .line 607
    .end local v1    # "buttonsMask":I
    .restart local p2    # "buttonsMask":I
    :cond_1
    :goto_0
    move/from16 v13, p2

    .end local p2    # "buttonsMask":I
    .local v13, "buttonsMask":I
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 621
    :pswitch_2
    move-object v1, p0

    return v0

    .line 616
    :pswitch_3
    move-object v0, v12

    move v1, p1

    move v2, v13

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lorg/godotengine/godot/input/InputEventRunnable;->setMouseEvent(IIFFFFZZFFF)V

    .line 617
    move-object v1, p0

    invoke-direct {p0, v12}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 618
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method handleMouseEvent(IZ)Z
    .locals 12
    .param p1, "eventAction"    # I
    .param p2, "sourceMouseRelative"    # Z

    .line 580
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move v8, p2

    invoke-virtual/range {v0 .. v11}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(IIFFFFZZFFF)Z

    move-result v0

    return v0
.end method

.method handleMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method handleMouseEvent(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventActionOverride"    # I

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IZ)Z

    move-result v0

    return v0
.end method

.method handleMouseEvent(Landroid/view/MotionEvent;IIZ)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventActionOverride"    # I
    .param p3, "buttonMaskOverride"    # I
    .param p4, "doubleTap"    # Z

    .line 551
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 552
    .local v13, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    .line 554
    .local v14, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v15

    .line 556
    .local v15, "pressure":F
    const/4 v1, 0x0

    .line 557
    .local v1, "verticalFactor":F
    const/4 v2, 0x0

    .line 561
    .local v2, "horizontalFactor":F
    const/high16 v3, 0x400000

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    const/16 v4, 0x1a

    if-eqz v3, :cond_1

    .line 562
    move-object/from16 v12, p0

    iget v3, v12, Lorg/godotengine/godot/input/GodotInputHandler;->rotaryInputAxis:I

    if-nez v3, :cond_0

    .line 563
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v2, v3

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_0

    .line 566
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v1, v3

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_0

    .line 569
    :cond_1
    move-object/from16 v12, p0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 570
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move/from16 v16, v1

    move/from16 v17, v2

    .line 572
    .end local v1    # "verticalFactor":F
    .end local v2    # "horizontalFactor":F
    .local v16, "verticalFactor":F
    .local v17, "horizontalFactor":F
    :goto_0
    const/4 v1, 0x0

    .line 573
    .local v1, "sourceMouseRelative":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    .line 574
    const v2, 0x20004

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    move/from16 v18, v1

    goto :goto_1

    .line 573
    :cond_2
    move/from16 v18, v1

    .line 576
    .end local v1    # "sourceMouseRelative":Z
    .local v18, "sourceMouseRelative":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventTiltX(Landroid/view/MotionEvent;)F

    move-result v11

    invoke-static/range {p1 .. p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventTiltY(Landroid/view/MotionEvent;)F

    move-result v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v13

    move v5, v14

    move/from16 v6, v17

    move/from16 v7, v16

    move/from16 v8, p4

    move/from16 v9, v18

    move v10, v15

    move/from16 v12, v19

    invoke-virtual/range {v1 .. v12}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(IIFFFFZZFFF)Z

    move-result v1

    return v1
.end method

.method handleMouseEvent(Landroid/view/MotionEvent;IZ)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventActionOverride"    # I
    .param p3, "doubleTap"    # Z

    .line 547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IIZ)Z

    move-result v0

    return v0
.end method

.method handlePanEvent(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .line 668
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    .line 669
    .local v0, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v0, :cond_0

    .line 670
    return-void

    .line 673
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/godotengine/godot/input/InputEventRunnable;->setPanEvent(FFFF)V

    .line 674
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 675
    return-void
.end method

.method handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method handleTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventActionOverride"    # I

    .line 629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;IZ)Z

    move-result v0

    return v0
.end method

.method handleTouchEvent(Landroid/view/MotionEvent;IZ)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventActionOverride"    # I
    .param p3, "doubleTap"    # Z

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 634
    return v1

    .line 637
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v0

    .line 638
    .local v0, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 639
    return v2

    .line 642
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 654
    :pswitch_0
    return v2

    .line 649
    :pswitch_1
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/input/InputEventRunnable;->setTouchEvent(Landroid/view/MotionEvent;IZ)V

    .line 650
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->dispatchInputEventRunnable(Lorg/godotengine/godot/input/InputEventRunnable;)V

    .line 651
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method hasHardwareKeyboard()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mHardwareKeyboardIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initInputDevices()V
    .locals 5

    .line 294
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 295
    .local v0, "deviceIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 296
    .local v3, "deviceId":I
    iget-object v4, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 297
    .local v4, "device":Landroid/view/InputDevice;
    if-eqz v4, :cond_0

    .line 301
    invoke-virtual {p0, v3}, Lorg/godotengine/godot/input/GodotInputHandler;->onInputDeviceAdded(I)V

    .line 295
    .end local v3    # "deviceId":I
    .end local v4    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 785
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 792
    invoke-direct {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->updateCachedRotation()V

    .line 793
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 239
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventToolType(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:I

    .line 241
    const v0, 0x1000010

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 244
    .local v0, "deviceId":I
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_6

    .line 245
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 246
    .local v2, "godotJoyId":I
    iget-object v3, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoysticksDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/godotengine/godot/input/Joystick;

    .line 247
    .local v3, "joystick":Lorg/godotengine/godot/input/Joystick;
    if-nez v3, :cond_0

    .line 248
    return v1

    .line 251
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v3, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 252
    iget-object v5, v3, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 253
    .local v5, "axis":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 258
    .local v6, "value":F
    iget-object v7, v3, Lorg/godotengine/godot/input/Joystick;->axesValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_1

    iget-object v7, v3, Lorg/godotengine/godot/input/Joystick;->axesValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_2

    .line 260
    :cond_1
    iget-object v7, v3, Lorg/godotengine/godot/input/Joystick;->axesValues:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    invoke-direct {p0, v2, v4, v6}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickAxisEvent(IIF)V

    .line 251
    .end local v5    # "axis":I
    .end local v6    # "value":F
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 265
    .end local v4    # "i":I
    :cond_3
    iget-boolean v4, v3, Lorg/godotengine/godot/input/Joystick;->hasAxisHat:Z

    if-eqz v4, :cond_5

    .line 266
    const/16 v4, 0xf

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 267
    .local v4, "hatX":I
    const/16 v5, 0x10

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 268
    .local v5, "hatY":I
    iget v6, v3, Lorg/godotengine/godot/input/Joystick;->hatX:I

    if-ne v6, v4, :cond_4

    iget v6, v3, Lorg/godotengine/godot/input/Joystick;->hatY:I

    if-eq v6, v5, :cond_5

    .line 269
    :cond_4
    iput v4, v3, Lorg/godotengine/godot/input/Joystick;->hatX:I

    .line 270
    iput v5, v3, Lorg/godotengine/godot/input/Joystick;->hatY:I

    .line 271
    invoke-direct {p0, v2, v4, v5}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickHatEvent(III)V

    .line 274
    .end local v4    # "hatX":I
    .end local v5    # "hatY":I
    :cond_5
    return v1

    .line 276
    .end local v2    # "godotJoyId":I
    .end local v3    # "joystick":Lorg/godotengine/godot/input/Joystick;
    :cond_6
    const/4 v1, 0x0

    return v1

    .line 279
    .end local v0    # "deviceId":I
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_8

    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 281
    return v1

    .line 284
    :cond_8
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 286
    return v1

    .line 289
    :cond_9
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 14
    .param p1, "deviceId"    # I

    .line 319
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 325
    .local v0, "device":Landroid/view/InputDevice;
    if-nez v0, :cond_1

    .line 326
    return-void

    .line 330
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 331
    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    invoke-virtual {v0}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 334
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mHardwareKeyboardIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_2
    const/16 v1, 0x401

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v2

    const v3, 0x1000010

    if-nez v2, :cond_3

    .line 339
    invoke-virtual {v0, v3}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 340
    return-void

    .line 344
    :cond_3
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->assignJoystickIdNumber(I)I

    move-result v2

    .line 346
    .local v2, "id":I
    new-instance v4, Lorg/godotengine/godot/input/Joystick;

    invoke-direct {v4}, Lorg/godotengine/godot/input/Joystick;-><init>()V

    .line 347
    .local v4, "joystick":Lorg/godotengine/godot/input/Joystick;
    iput p1, v4, Lorg/godotengine/godot/input/Joystick;->device_id:I

    .line 348
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/godotengine/godot/input/Joystick;->name:Ljava/lang/String;

    .line 351
    sget-object v5, Lorg/godotengine/godot/input/GodotInputHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=== New Input Device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lorg/godotengine/godot/input/Joystick;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 354
    .local v5, "already":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InputDevice$MotionRange;

    .line 355
    .local v7, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v7, v3}, Landroid/view/InputDevice$MotionRange;->isFromSource(I)Z

    move-result v9

    .line 356
    .local v9, "isJoystick":Z
    invoke-virtual {v7, v1}, Landroid/view/InputDevice$MotionRange;->isFromSource(I)Z

    move-result v10

    .line 357
    .local v10, "isGamepad":Z
    if-nez v9, :cond_4

    if-nez v10, :cond_4

    .line 358
    goto :goto_0

    .line 360
    :cond_4
    invoke-virtual {v7}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v11

    .line 361
    .local v11, "axis":I
    const/16 v12, 0xf

    if-eq v11, v12, :cond_7

    const/16 v12, 0x10

    if-ne v11, v12, :cond_5

    goto :goto_1

    .line 364
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 365
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v8, v4, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 368
    :cond_6
    sget-object v8, Lorg/godotengine/godot/input/GodotInputHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " - DUPLICATE AXIS VALUE IN LIST: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 362
    :cond_7
    :goto_1
    iput-boolean v8, v4, Lorg/godotengine/godot/input/Joystick;->hasAxisHat:Z

    .line 371
    .end local v7    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v9    # "isJoystick":Z
    .end local v10    # "isGamepad":Z
    .end local v11    # "axis":I
    :goto_2
    goto :goto_0

    .line 372
    :cond_8
    iget-object v1, v4, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 373
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_3
    iget-object v3, v4, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 375
    sget-object v3, Lorg/godotengine/godot/input/GodotInputHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - Mapping Android axis "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to Godot axis "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 377
    .end local v1    # "idx":I
    :cond_9
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoysticksDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    iget-object v1, v4, Lorg/godotengine/godot/input/Joystick;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v8, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickConnectionChangedEvent(IZLjava/lang/String;)V

    .line 380
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 398
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onInputDeviceRemoved(I)V

    .line 399
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->onInputDeviceAdded(I)V

    .line 400
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .line 384
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mHardwareKeyboardIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 391
    .local v0, "godotJoyId":I
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 392
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoysticksDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 393
    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickConnectionChangedEvent(IZLjava/lang/String;)V

    .line 394
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 185
    const/16 v0, 0x18

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    .line 191
    .local v0, "source":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 193
    .local v2, "deviceId":I
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->isKeyEventGameDevice(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 195
    return v4

    .line 197
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 198
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getGodotButton(I)I

    move-result v1

    .line 199
    .local v1, "button":I
    iget-object v3, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 200
    .local v3, "godotJoyId":I
    invoke-direct {p0, v3, v1, v4}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickButtonEvent(IIZ)V

    .line 201
    .end local v1    # "button":I
    .end local v3    # "godotJoyId":I
    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 204
    .local v3, "physical_keycode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v11

    .line 205
    .local v11, "unicode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v12

    .line 206
    .local v12, "key_label":I
    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :goto_0
    move-object v5, p0

    move v6, v3

    move v7, v11

    move v8, v12

    invoke-virtual/range {v5 .. v10}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 209
    .end local v3    # "physical_keycode":I
    .end local v11    # "unicode":I
    .end local v12    # "key_label":I
    :cond_4
    :goto_1
    return v4

    .line 186
    .end local v0    # "source":I
    .end local v2    # "deviceId":I
    :cond_5
    :goto_2
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 160
    const/16 v0, 0x18

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 164
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    .line 165
    .local v0, "source":I
    invoke-direct {p0, v0}, Lorg/godotengine/godot/input/GodotInputHandler;->isKeyEventGameDevice(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 168
    .local v2, "deviceId":I
    iget-object v4, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 169
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getGodotButton(I)I

    move-result v4

    .line 170
    .local v4, "button":I
    iget-object v5, p0, Lorg/godotengine/godot/input/GodotInputHandler;->mJoystickIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 171
    .local v5, "godotJoyId":I
    invoke-direct {p0, v5, v4, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleJoystickButtonEvent(IIZ)V

    .line 173
    .end local v2    # "deviceId":I
    .end local v4    # "button":I
    .end local v5    # "godotJoyId":I
    :cond_1
    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 176
    .local v2, "physical_keycode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    .line 177
    .local v4, "unicode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v5

    .line 178
    .local v5, "key_label":I
    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    :goto_0
    move-object v6, p0

    move v7, v2

    move v8, v4

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Lorg/godotengine/godot/input/GodotInputHandler;->handleKeyEvent(IIIZZ)V

    .line 181
    .end local v2    # "physical_keycode":I
    .end local v4    # "unicode":I
    .end local v5    # "key_label":I
    :goto_1
    return v3

    .line 161
    .end local v0    # "source":I
    :cond_4
    :goto_2
    return v1
.end method

.method public onPointerCaptureChange(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 156
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onPointerCaptureChange(Z)V

    .line 157
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 737
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 738
    .local v0, "values":[F
    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 742
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable;->obtain()Lorg/godotengine/godot/input/InputEventRunnable;

    move-result-object v1

    .line 743
    .local v1, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v1, :cond_1

    .line 744
    return-void

    .line 747
    :cond_1
    iget v2, p0, Lorg/godotengine/godot/input/GodotInputHandler;->cachedRotation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 748
    invoke-direct {p0}, Lorg/godotengine/godot/input/GodotInputHandler;->updateCachedRotation()V

    .line 751
    :cond_2
    const/4 v2, 0x0

    .line 752
    .local v2, "rotatedValue0":F
    const/4 v3, 0x0

    .line 753
    .local v3, "rotatedValue1":F
    const/4 v4, 0x0

    .line 754
    .local v4, "rotatedValue2":F
    iget v5, p0, Lorg/godotengine/godot/input/GodotInputHandler;->cachedRotation:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 774
    :pswitch_0
    aget v2, v0, v7

    .line 775
    aget v5, v0, v8

    neg-float v3, v5

    .line 776
    aget v4, v0, v6

    goto :goto_0

    .line 768
    :pswitch_1
    aget v5, v0, v8

    neg-float v2, v5

    .line 769
    aget v5, v0, v7

    neg-float v3, v5

    .line 770
    aget v4, v0, v6

    .line 771
    goto :goto_0

    .line 762
    :pswitch_2
    aget v5, v0, v7

    neg-float v2, v5

    .line 763
    aget v3, v0, v8

    .line 764
    aget v4, v0, v6

    .line 765
    goto :goto_0

    .line 756
    :pswitch_3
    aget v2, v0, v8

    .line 757
    aget v3, v0, v7

    .line 758
    aget v4, v0, v6

    .line 759
    nop

    .line 780
    :goto_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v1, v5, v2, v3, v4}, Lorg/godotengine/godot/input/InputEventRunnable;->setSensorEvent(IFFF)V

    .line 781
    iget-object v5, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godot:Lorg/godotengine/godot/Godot;

    invoke-virtual {v5, v1}, Lorg/godotengine/godot/Godot;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 782
    return-void

    .line 739
    .end local v1    # "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    .end local v2    # "rotatedValue0":F
    .end local v3    # "rotatedValue1":F
    .end local v4    # "rotatedValue2":F
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 213
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventToolType(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->lastSeenToolType:I

    .line 215
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 216
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 218
    return v1

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotInputHandler;->godotGestureHandler:Lorg/godotengine/godot/input/GodotGestureHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    return v1

    .line 227
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 228
    return v1

    .line 231
    :cond_2
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->isMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 235
    :cond_3
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setRotaryInputAxis(I)V
    .locals 0
    .param p1, "axis"    # I

    .line 136
    iput p1, p0, Lorg/godotengine/godot/input/GodotInputHandler;->rotaryInputAxis:I

    .line 137
    return-void
.end method
