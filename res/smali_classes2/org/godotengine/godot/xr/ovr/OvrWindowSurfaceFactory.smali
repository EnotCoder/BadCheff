.class public Lorg/godotengine/godot/xr/ovr/OvrWindowSurfaceFactory;
.super Ljava/lang/Object;
.source "OvrWindowSurfaceFactory.java"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$EGLWindowSurfaceFactory;


# static fields
.field private static final SURFACE_ATTRIBS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    const/16 v0, 0x3056

    const/16 v1, 0x3038

    const/16 v2, 0x3057

    const/16 v3, 0x10

    filled-new-array {v2, v3, v0, v3, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/xr/ovr/OvrWindowSurfaceFactory;->SURFACE_ATTRIBS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "nativeWindow"    # Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/godotengine/godot/xr/ovr/OvrWindowSurfaceFactory;->SURFACE_ATTRIBS:[I

    invoke-interface {p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    return-object v0
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .line 58
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 59
    return-void
.end method
