.class final Lorg/godotengine/godot/Godot$mAccelerometer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Godot.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/Godot;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/hardware/Sensor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/hardware/Sensor;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/godotengine/godot/Godot;


# direct methods
.method constructor <init>(Lorg/godotengine/godot/Godot;)V
    .locals 1

    iput-object p1, p0, Lorg/godotengine/godot/Godot$mAccelerometer$2;->this$0:Lorg/godotengine/godot/Godot;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/hardware/Sensor;
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/godotengine/godot/Godot$mAccelerometer$2;->this$0:Lorg/godotengine/godot/Godot;

    invoke-static {v0}, Lorg/godotengine/godot/Godot;->access$getMSensorManager$p(Lorg/godotengine/godot/Godot;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/godotengine/godot/Godot$mAccelerometer$2;->invoke()Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method
