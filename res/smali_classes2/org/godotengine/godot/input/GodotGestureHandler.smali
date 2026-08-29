.class public final Lorg/godotengine/godot/input/GodotGestureHandler;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GodotGestureHandler.kt"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/input/GodotGestureHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u000e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0007J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020#H\u0016J\u0010\u0010%\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#H\u0016J*\u0010&\u001a\u00020\u00072\u0008\u0010\'\u001a\u0004\u0018\u00010\u00172\u0006\u0010(\u001a\u00020\u00172\u0006\u0010)\u001a\u00020\n2\u0006\u0010*\u001a\u00020\nH\u0016J\u0010\u0010+\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lorg/godotengine/godot/input/GodotGestureHandler;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;",
        "inputHandler",
        "Lorg/godotengine/godot/input/GodotInputHandler;",
        "(Lorg/godotengine/godot/input/GodotInputHandler;)V",
        "contextClickInProgress",
        "",
        "dragInProgress",
        "lastDragX",
        "",
        "lastDragY",
        "nextDownIsDoubleTap",
        "panningAndScalingEnabled",
        "getPanningAndScalingEnabled",
        "()Z",
        "setPanningAndScalingEnabled",
        "(Z)V",
        "pointerCaptureInProgress",
        "scaleInProgress",
        "contextClickRouter",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "onActionMove",
        "onActionUp",
        "onDoubleTap",
        "onDoubleTapEvent",
        "onDown",
        "onLongPress",
        "onMotionEvent",
        "onPointerCaptureChange",
        "hasCapture",
        "onScale",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
        "onScaleBegin",
        "onScaleEnd",
        "onScroll",
        "originEvent",
        "terminusEvent",
        "distanceX",
        "distanceY",
        "onSingleTapUp",
        "Companion",
        "lib_templateDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/input/GodotGestureHandler$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contextClickInProgress:Z

.field private dragInProgress:Z

.field private final inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

.field private lastDragX:F

.field private lastDragY:F

.field private nextDownIsDoubleTap:Z

.field private panningAndScalingEnabled:Z

.field private pointerCaptureInProgress:Z

.field private scaleInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/input/GodotGestureHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/input/GodotGestureHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/input/GodotGestureHandler;->Companion:Lorg/godotengine/godot/input/GodotGestureHandler$Companion;

    .line 50
    const-class v0, Lorg/godotengine/godot/input/GodotGestureHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/input/GodotGestureHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/input/GodotInputHandler;)V
    .locals 1
    .param p1, "inputHandler"    # Lorg/godotengine/godot/input/GodotInputHandler;

    const-string v0, "inputHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    return-void
.end method

.method private final contextClickRouter(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 86
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;I)Z

    .line 94
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    .line 95
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    nop

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IIZ)Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    .line 101
    return-void

    .line 87
    :cond_1
    :goto_0
    return-void
.end method

.method private final onActionMove(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 153
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, p1, v3, v4, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;IIZ)Z

    .line 155
    return v1

    .line 156
    :cond_0
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    if-nez v0, :cond_4

    .line 161
    iget v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 162
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 163
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 164
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 165
    return v1

    .line 168
    :cond_4
    return v2
.end method

.method private final onActionUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    if-eqz v0, :cond_0

    .line 130
    return v2

    .line 133
    :cond_0
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    return v1

    .line 134
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->isMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 139
    :cond_3
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 137
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1, v2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(Landroid/view/MotionEvent;I)Z

    .line 141
    :goto_2
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 142
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 143
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickInProgress:Z

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 145
    iput v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 146
    return v2
.end method


# virtual methods
.method public final getPanningAndScalingEnabled()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    .line 184
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    .line 174
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 179
    :cond_1
    :goto_0
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    iget-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;IZ)Z

    .line 69
    iput-boolean v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->nextDownIsDoubleTap:Z

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lorg/godotengine/godot/input/GodotInputHandler;->getEventToolType(Landroid/view/MotionEvent;)I

    move-result v0

    .line 80
    .local v0, "toolType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->contextClickRouter(Landroid/view/MotionEvent;)V

    .line 83
    :cond_0
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 123
    const/4 v0, 0x0

    goto :goto_0

    .line 121
    :sswitch_0
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onActionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 118
    :sswitch_1
    invoke-direct {p0, p1}, Lorg/godotengine/godot/input/GodotGestureHandler;->onActionUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 116
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public final onPointerCaptureChange(Z)V
    .locals 2
    .param p1, "hasCapture"    # Z

    .line 104
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    if-ne v0, p1, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    if-nez p1, :cond_1

    .line 110
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMouseEvent(IZ)Z

    .line 112
    :cond_1
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    .line 113
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v1, 0x3f99999a    # 1.2f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 224
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMagnifyEvent(FFF)V

    .line 226
    :cond_2
    return v3

    .line 220
    :cond_3
    :goto_0
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    .line 234
    return v0

    .line 231
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    .line 239
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "originEvent"    # Landroid/view/MotionEvent;
    .param p2, "terminusEvent"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    const-string v0, "terminusEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 194
    iget-boolean v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 195
    :cond_2
    if-eqz p1, :cond_3

    .line 197
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    const/4 v4, 0x3

    invoke-virtual {v0, p1, v4}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;I)Z

    .line 199
    :cond_3
    iput-boolean v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 200
    iput v3, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 201
    iput v3, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 205
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 206
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 207
    .local v3, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5

    iget-boolean v4, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->pointerCaptureInProgress:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    if-nez v4, :cond_5

    .line 208
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    const/high16 v4, 0x40a00000    # 5.0f

    div-float v5, p3, v4

    div-float v4, p4, v4

    invoke-virtual {v2, v0, v3, v5, v4}, Lorg/godotengine/godot/input/GodotInputHandler;->handlePanEvent(FFFF)V

    goto :goto_2

    .line 209
    :cond_5
    iget-boolean v4, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->scaleInProgress:Z

    if-nez v4, :cond_6

    .line 210
    iput-boolean v1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->dragInProgress:Z

    .line 211
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragX:F

    .line 212
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->lastDragY:F

    .line 213
    iget-object v2, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v2, p2}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 215
    :cond_6
    :goto_2
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->inputHandler:Lorg/godotengine/godot/input/GodotInputHandler;

    invoke-virtual {v0, p1}, Lorg/godotengine/godot/input/GodotInputHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public final setPanningAndScalingEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 56
    iput-boolean p1, p0, Lorg/godotengine/godot/input/GodotGestureHandler;->panningAndScalingEnabled:Z

    return-void
.end method
