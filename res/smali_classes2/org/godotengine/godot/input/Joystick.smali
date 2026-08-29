.class Lorg/godotengine/godot/input/Joystick;
.super Ljava/lang/Object;
.source "Joystick.java"


# instance fields
.field axes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final axesValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field device_id:I

.field protected hasAxisHat:Z

.field protected hatX:I

.field protected hatY:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/godotengine/godot/input/Joystick;->axes:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/godotengine/godot/input/Joystick;->hasAxisHat:Z

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/godotengine/godot/input/Joystick;->axesValues:Landroid/util/SparseArray;

    return-void
.end method
