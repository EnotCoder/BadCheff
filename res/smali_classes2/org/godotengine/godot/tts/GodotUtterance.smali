.class Lorg/godotengine/godot/tts/GodotUtterance;
.super Ljava/lang/Object;
.source "GodotUtterance.java"


# instance fields
.field final id:I

.field offset:I

.field final pitch:F

.field final rate:F

.field start:I

.field final text:Ljava/lang/String;

.field final voice:Ljava/lang/String;

.field final volume:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFI)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "voice"    # Ljava/lang/String;
    .param p3, "volume"    # I
    .param p4, "pitch"    # F
    .param p5, "rate"    # F
    .param p6, "id"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    .line 48
    iput-object p1, p0, Lorg/godotengine/godot/tts/GodotUtterance;->text:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/godotengine/godot/tts/GodotUtterance;->voice:Ljava/lang/String;

    .line 50
    iput p3, p0, Lorg/godotengine/godot/tts/GodotUtterance;->volume:I

    .line 51
    iput p4, p0, Lorg/godotengine/godot/tts/GodotUtterance;->pitch:F

    .line 52
    iput p5, p0, Lorg/godotengine/godot/tts/GodotUtterance;->rate:F

    .line 53
    iput p6, p0, Lorg/godotengine/godot/tts/GodotUtterance;->id:I

    .line 54
    return-void
.end method
