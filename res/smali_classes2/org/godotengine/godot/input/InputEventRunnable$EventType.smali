.class final enum Lorg/godotengine/godot/input/InputEventRunnable$EventType;
.super Ljava/lang/Enum;
.source "InputEventRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/input/InputEventRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/input/InputEventRunnable$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum JOYSTICK_AXIS:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum JOYSTICK_BUTTON:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum JOYSTICK_CONNECTION_CHANGED:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum JOYSTICK_HAT:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum KEY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum MAGNIFY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum MOUSE:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum PAN:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum SENSOR:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

.field public static final enum TOUCH:Lorg/godotengine/godot/input/InputEventRunnable$EventType;


# direct methods
.method private static synthetic $values()[Lorg/godotengine/godot/input/InputEventRunnable$EventType;
    .locals 3

    .line 106
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const/4 v1, 0x0

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->MOUSE:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->TOUCH:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->MAGNIFY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->PAN:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_BUTTON:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_AXIS:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_HAT:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_CONNECTION_CHANGED:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->KEY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->SENSOR:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "MOUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->MOUSE:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 108
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "TOUCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->TOUCH:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 109
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "MAGNIFY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->MAGNIFY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 110
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "PAN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->PAN:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 111
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "JOYSTICK_BUTTON"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_BUTTON:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 112
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "JOYSTICK_AXIS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_AXIS:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 113
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "JOYSTICK_HAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_HAT:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 114
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "JOYSTICK_CONNECTION_CHANGED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->JOYSTICK_CONNECTION_CHANGED:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 115
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "KEY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->KEY:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 116
    new-instance v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    const-string v1, "SENSOR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->SENSOR:Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    .line 106
    invoke-static {}, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->$values()[Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->$VALUES:[Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/input/InputEventRunnable$EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    return-object v0
.end method

.method public static values()[Lorg/godotengine/godot/input/InputEventRunnable$EventType;
    .locals 1

    .line 106
    sget-object v0, Lorg/godotengine/godot/input/InputEventRunnable$EventType;->$VALUES:[Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    invoke-virtual {v0}, [Lorg/godotengine/godot/input/InputEventRunnable$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/godotengine/godot/input/InputEventRunnable$EventType;

    return-object v0
.end method
