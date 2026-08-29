.class public Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;
.super Lorg/godotengine/godot/xr/regular/RegularConfigChooser;
.source "RegularFallbackConfigChooser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fallback:Lorg/godotengine/godot/xr/regular/RegularConfigChooser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIIILorg/godotengine/godot/xr/regular/RegularConfigChooser;)V
    .locals 0
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I
    .param p7, "fallback"    # Lorg/godotengine/godot/xr/regular/RegularConfigChooser;

    .line 46
    invoke-direct/range {p0 .. p6}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;-><init>(IIIIII)V

    .line 47
    iput-object p7, p0, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;->fallback:Lorg/godotengine/godot/xr/regular/RegularConfigChooser;

    .line 48
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 52
    invoke-super {p0, p1, p2, p3}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 53
    .local v0, "ec":Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v0, :cond_0

    .line 54
    sget-object v1, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;->TAG:Ljava/lang/String;

    const-string v2, "Trying ConfigChooser fallback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lorg/godotengine/godot/xr/regular/RegularFallbackConfigChooser;->fallback:Lorg/godotengine/godot/xr/regular/RegularConfigChooser;

    invoke-virtual {v1, p1, p2, p3}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    .line 57
    :cond_0
    return-object v0
.end method
