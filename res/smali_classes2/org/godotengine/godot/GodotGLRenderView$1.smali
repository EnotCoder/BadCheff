.class synthetic Lorg/godotengine/godot/GodotGLRenderView$1;
.super Ljava/lang/Object;
.source "GodotGLRenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/GodotGLRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$godotengine$godot$xr$XRMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 252
    invoke-static {}, Lorg/godotengine/godot/xr/XRMode;->values()[Lorg/godotengine/godot/xr/XRMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/godotengine/godot/GodotGLRenderView$1;->$SwitchMap$org$godotengine$godot$xr$XRMode:[I

    :try_start_0
    sget-object v1, Lorg/godotengine/godot/xr/XRMode;->OPENXR:Lorg/godotengine/godot/xr/XRMode;

    invoke-virtual {v1}, Lorg/godotengine/godot/xr/XRMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/godotengine/godot/GodotGLRenderView$1;->$SwitchMap$org$godotengine$godot$xr$XRMode:[I

    sget-object v1, Lorg/godotengine/godot/xr/XRMode;->REGULAR:Lorg/godotengine/godot/xr/XRMode;

    invoke-virtual {v1}, Lorg/godotengine/godot/xr/XRMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
