.class final Lorg/godotengine/godot/input/InputEventRunnable;
.super Ljava/lang/Object;
.source "InputEventRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/input/InputEventRunnable$EventType;
    }
.end annotation


# static fields
.field private static final MAX_TOUCH_POINTER_COUNT:I = 0xa

.field private static final POOL:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lorg/godotengine/godot/input/InputEventRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private actionPointerId:I

.field private axis:I

.field private button:I

.field private buttonsMask:I

.field private connected:Z

.field private final creationRank:I

.field private currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field private doubleTap:Z

.field private echo:Z

.field private eventAction:I

.field private eventDeltaX:F

.field private eventDeltaY:F

.field private eventPressed:Z

.field private eventX:F

.field private eventY:F

.field private hatX:I

.field private hatY:I

.field private joystickDevice:I

.field private joystickName:Ljava/lang/String;

.field private keyLabel:I

.field private magnifyFactor:F

.field private physicalKeycode:I

.field private pointerCount:I

.field private final positions:[F

.field private pressure:F

.field private rotatedValue0:F

.field private rotatedValue1:F

.field private rotatedValue2:F

.field private sensorType:I

.field private sourceMouseRelative:Z

.field private tiltX:F

.field private tiltY:F

.field private unicode:I

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lorg/godotengine/godot/input/InputEventRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$1;

    invoke-direct {v0}, Lorg/godotengine/godot/input/InputEventRunnable$1;-><init>()V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->POOL:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "creationRank"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 156
    const/16 v0, 0x3c

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    .line 100
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->creationRank:I

    .line 101
    return-void
.end method

.method synthetic constructor <init>(ILorg/godotengine/godot/input/InputEventRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/InputEventRunnable;-><init>(I)V

    return-void
.end method

.method static obtain()Lorg/godotengine/godot/input/InputEventRunnable;
    .locals 3

    .line 86
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->POOL:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/input/InputEventRunnable;

    .line 87
    .local v0, "runnable":Lorg/godotengine/godot/input/InputEventRunnable;
    if-nez v0, :cond_0

    .line 88
    sget-object v1, Lorg/godotengine/godot/input/InputEventRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Input event pool is at capacity"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-object v0
.end method

.method private recycle()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 351
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->POOL:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 263
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable;->TAG:Ljava/lang/String;

    const-string v1, "Invalid event type"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-direct {p0}, Lorg/godotengine/godot/input/InputEventRunnable;->recycle()V

    .line 265
    return-void

    .line 268
    :cond_0
    :try_start_1
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$2;->$SwitchMap$org$godotengine$godot$input$InputEventRunnable$EventType:[I

    iget-object v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    invoke-virtual {v1}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 322
    :pswitch_0
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->sensorType:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 328
    :sswitch_0
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    neg-float v0, v0

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    neg-float v1, v1

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    neg-float v2, v2

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->gravity(FFF)V

    .line 329
    goto/16 :goto_0

    .line 336
    :sswitch_1
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->gyroscope(FFF)V

    goto/16 :goto_0

    .line 332
    :sswitch_2
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    neg-float v0, v0

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    neg-float v1, v1

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    neg-float v2, v2

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->magnetometer(FFF)V

    .line 333
    goto/16 :goto_0

    .line 324
    :sswitch_3
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    neg-float v0, v0

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    neg-float v1, v1

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    neg-float v2, v2

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->accelerometer(FFF)V

    .line 325
    goto/16 :goto_0

    .line 318
    :pswitch_1
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->physicalKeycode:I

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->unicode:I

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->keyLabel:I

    iget-boolean v3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventPressed:Z

    iget-boolean v4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->echo:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/godotengine/godot/GodotLib;->key(IIIZZ)V

    .line 319
    goto :goto_0

    .line 314
    :pswitch_2
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    iget-boolean v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->connected:Z

    iget-object v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->joyconnectionchanged(IZLjava/lang/String;)V

    .line 315
    goto :goto_0

    .line 310
    :pswitch_3
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->hatX:I

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->hatY:I

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->joyhat(III)V

    .line 311
    goto :goto_0

    .line 306
    :pswitch_4
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->axis:I

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->value:F

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->joyaxis(IIF)V

    .line 307
    goto :goto_0

    .line 302
    :pswitch_5
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->button:I

    iget-boolean v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventPressed:Z

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->joybutton(IIZ)V

    .line 303
    goto :goto_0

    .line 298
    :pswitch_6
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaX:F

    iget v3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaY:F

    invoke-static {v0, v1, v2, v3}, Lorg/godotengine/godot/GodotLib;->pan(FFFF)V

    .line 299
    goto :goto_0

    .line 294
    :pswitch_7
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->magnifyFactor:F

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/GodotLib;->magnify(FFF)V

    .line 295
    goto :goto_0

    .line 285
    :pswitch_8
    iget v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventAction:I

    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->actionPointerId:I

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pointerCount:I

    iget-object v3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    iget-boolean v4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->doubleTap:Z

    invoke-static {v0, v1, v2, v3, v4}, Lorg/godotengine/godot/GodotLib;->dispatchTouchEvent(III[FZ)V

    .line 291
    goto :goto_0

    .line 270
    :pswitch_9
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventAction:I

    iget v2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->buttonsMask:I

    iget v3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    iget v4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    iget v5, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaX:F

    iget v6, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaY:F

    iget-boolean v7, p0, Lorg/godotengine/godot/input/InputEventRunnable;->doubleTap:Z

    iget-boolean v8, p0, Lorg/godotengine/godot/input/InputEventRunnable;->sourceMouseRelative:Z

    iget v9, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pressure:F

    iget v10, p0, Lorg/godotengine/godot/input/InputEventRunnable;->tiltX:F

    iget v11, p0, Lorg/godotengine/godot/input/InputEventRunnable;->tiltY:F

    invoke-static/range {v1 .. v11}, Lorg/godotengine/godot/GodotLib;->dispatchMouseEvent(IIFFFFZZFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    nop

    .line 342
    :goto_0
    invoke-direct {p0}, Lorg/godotengine/godot/input/InputEventRunnable;->recycle()V

    .line 343
    nop

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/godotengine/godot/input/InputEventRunnable;->recycle()V

    .line 343
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method setJoystickAxisEvent(IIF)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "axis"    # I
    .param p3, "value"    # F

    .line 207
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_AXIS:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 208
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 209
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->axis:I

    .line 210
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->value:F

    .line 211
    return-void
.end method

.method setJoystickButtonEvent(IIZ)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "button"    # I
    .param p3, "pressed"    # Z

    .line 197
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_BUTTON:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 198
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 199
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->button:I

    .line 200
    iput-boolean p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventPressed:Z

    .line 201
    return-void
.end method

.method setJoystickConnectionChangedEvent(IZLjava/lang/String;)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "connected"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 227
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_CONNECTION_CHANGED:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 228
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 229
    iput-boolean p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->connected:Z

    .line 230
    iput-object p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickName:Ljava/lang/String;

    .line 231
    return-void
.end method

.method setJoystickHatEvent(III)V
    .locals 1
    .param p1, "device"    # I
    .param p2, "hatX"    # I
    .param p3, "hatY"    # I

    .line 217
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_HAT:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 218
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->joystickDevice:I

    .line 219
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->hatX:I

    .line 220
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->hatY:I

    .line 221
    return-void
.end method

.method setKeyEvent(IIIZZ)V
    .locals 1
    .param p1, "physicalKeycode"    # I
    .param p2, "unicode"    # I
    .param p3, "keyLabel"    # I
    .param p4, "pressed"    # Z
    .param p5, "echo"    # Z

    .line 239
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->KEY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 240
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->physicalKeycode:I

    .line 241
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->unicode:I

    .line 242
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->keyLabel:I

    .line 243
    iput-boolean p4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventPressed:Z

    .line 244
    iput-boolean p5, p0, Lorg/godotengine/godot/input/InputEventRunnable;->echo:Z

    .line 245
    return-void
.end method

.method setMagnifyEvent(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "factor"    # F

    .line 176
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->MAGNIFY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 177
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 178
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 179
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->magnifyFactor:F

    .line 180
    return-void
.end method

.method setMouseEvent(IIFFFFZZFFF)V
    .locals 1
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

    .line 139
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->MOUSE:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 140
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventAction:I

    .line 141
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->buttonsMask:I

    .line 142
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 143
    iput p4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 144
    iput p5, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaX:F

    .line 145
    iput p6, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaY:F

    .line 146
    iput-boolean p7, p0, Lorg/godotengine/godot/input/InputEventRunnable;->doubleTap:Z

    .line 147
    iput-boolean p8, p0, Lorg/godotengine/godot/input/InputEventRunnable;->sourceMouseRelative:Z

    .line 148
    iput p9, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pressure:F

    .line 149
    iput p10, p0, Lorg/godotengine/godot/input/InputEventRunnable;->tiltX:F

    .line 150
    iput p11, p0, Lorg/godotengine/godot/input/InputEventRunnable;->tiltY:F

    .line 151
    return-void
.end method

.method setPanEvent(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .line 184
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->PAN:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 185
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventX:F

    .line 186
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventY:F

    .line 187
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaX:F

    .line 188
    iput p4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventDeltaY:F

    .line 189
    return-void
.end method

.method setSensorEvent(IFFF)V
    .locals 1
    .param p1, "sensorType"    # I
    .param p2, "rotatedValue0"    # F
    .param p3, "rotatedValue1"    # F
    .param p4, "rotatedValue2"    # F

    .line 253
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->SENSOR:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 254
    iput p1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->sensorType:I

    .line 255
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue0:F

    .line 256
    iput p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue1:F

    .line 257
    iput p4, p0, Lorg/godotengine/godot/input/InputEventRunnable;->rotatedValue2:F

    .line 258
    return-void
.end method

.method setTouchEvent(Landroid/view/MotionEvent;IZ)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventAction"    # I
    .param p3, "doubleTap"    # Z

    .line 158
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->TOUCH:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    iput-object v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->currentEventType:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 159
    iput p2, p0, Lorg/godotengine/godot/input/InputEventRunnable;->eventAction:I

    .line 160
    iput-boolean p3, p0, Lorg/godotengine/godot/input/InputEventRunnable;->doubleTap:Z

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->actionPointerId:I

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pointerCount:I

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->pointerCount:I

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v2

    .line 165
    iget-object v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v1, v2

    .line 166
    iget-object v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v1, v2

    .line 167
    iget-object v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    aput v3, v1, v2

    .line 168
    iget-object v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x4

    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventTiltX(Landroid/view/MotionEvent;)F

    move-result v3

    aput v3, v1, v2

    .line 169
    iget-object v1, p0, Lorg/godotengine/godot/input/InputEventRunnable;->positions:[F

    mul-int/lit8 v2, v0, 0x6

    add-int/lit8 v2, v2, 0x5

    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventTiltY(Landroid/view/MotionEvent;)F

    move-result v3

    aput v3, v1, v2

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
