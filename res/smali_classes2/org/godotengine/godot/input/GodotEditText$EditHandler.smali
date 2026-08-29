.class Lorg/godotengine/godot/input/GodotEditText$EditHandler;
.super Landroid/os/Handler;
.source "GodotEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/input/GodotEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditHandler"
.end annotation


# instance fields
.field private final mEdit:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/input/GodotEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/input/GodotEditText;)V
    .locals 1
    .param p1, "edit"    # Lorg/godotengine/godot/input/GodotEditText;

    .line 84
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText$EditHandler;->mEdit:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 90
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText$EditHandler;->mEdit:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/input/GodotEditText;

    .line 91
    .local v0, "edit":Lorg/godotengine/godot/input/GodotEditText;
    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0, p1}, Lorg/godotengine/godot/input/GodotEditText;->-$$Nest$mhandleMessage(Lorg/godotengine/godot/input/GodotEditText;Landroid/os/Message;)V

    .line 94
    :cond_0
    return-void
.end method
