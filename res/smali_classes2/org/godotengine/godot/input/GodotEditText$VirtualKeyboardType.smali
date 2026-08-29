.class public final enum Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
.super Ljava/lang/Enum;
.source "GodotEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/input/GodotEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VirtualKeyboardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_EMAIL_ADDRESS:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_MULTILINE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_NUMBER:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_NUMBER_DECIMAL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_PASSWORD:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_PHONE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_URL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;


# direct methods
.method private static synthetic $values()[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .locals 3

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const/4 v1, 0x0

    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_MULTILINE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_NUMBER:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_NUMBER_DECIMAL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_PHONE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_EMAIL_ADDRESS:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_PASSWORD:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_URL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const-string v1, "KEYBOARD_TYPE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 63
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const-string v1, "KEYBOARD_TYPE_MULTILINE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_MULTILINE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 64
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const-string v1, "KEYBOARD_TYPE_NUMBER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_NUMBER:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 65
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const-string v1, "KEYBOARD_TYPE_NUMBER_DECIMAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_NUMBER_DECIMAL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 66
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const-string v1, "KEYBOARD_TYPE_PHONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_PHONE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 67
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const-string v1, "KEYBOARD_TYPE_EMAIL_ADDRESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_EMAIL_ADDRESS:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 68
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const-string v1, "KEYBOARD_TYPE_PASSWORD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_PASSWORD:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 69
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    const-string v1, "KEYBOARD_TYPE_URL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_URL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 61
    invoke-static {}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->$values()[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->$VALUES:[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 61
    const-class v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    return-object v0
.end method

.method public static values()[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .locals 1

    .line 61
    sget-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->$VALUES:[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    invoke-virtual {v0}, [Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    return-object v0
.end method
