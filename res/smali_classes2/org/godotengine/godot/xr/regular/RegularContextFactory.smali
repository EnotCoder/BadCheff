.class public Lorg/godotengine/godot/xr/regular/RegularContextFactory;
.super Ljava/lang/Object;
.source "RegularContextFactory.java"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final _EGL_CONTEXT_FLAGS_KHR:I = 0x30fc

.field private static final _EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR:I = 0x1


# instance fields
.field private final mUseDebugOpengl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->TAG:Ljava/lang/String;

    .line 52
    const/16 v0, 0x3098

    sput v0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/xr/regular/RegularContextFactory;-><init>(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "useDebugOpengl"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->mUseDebugOpengl:Z

    .line 62
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 6
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 65
    sget-object v0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->TAG:Ljava/lang/String;

    const-string v1, "creating OpenGL ES 3.0 context :"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "Before eglCreateContext"

    invoke-static {v0, v1, p1}, Lorg/godotengine/godot/utils/GLUtils;->checkEglError(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 69
    sget v1, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v2, 0x3

    const/16 v3, 0x30fc

    const/4 v4, 0x1

    const/16 v5, 0x3038

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v3

    .line 70
    .local v3, "debug_attrib_list":[I
    filled-new-array {v1, v2, v5}, [I

    move-result-object v1

    .line 71
    .local v1, "attrib_list":[I
    iget-boolean v2, p0, Lorg/godotengine/godot/xr/regular/RegularContextFactory;->mUseDebugOpengl:Z

    if-eqz v2, :cond_1

    .line 72
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 73
    .local v2, "context":Ljavax/microedition/khronos/egl/EGLContext;
    if-eqz v2, :cond_0

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v4, :cond_2

    .line 74
    :cond_0
    const-string v4, "creating \'OpenGL Debug\' context failed"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    goto :goto_0

    .line 78
    .end local v2    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_1
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    .line 80
    .restart local v2    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_2
    :goto_0
    const-string v4, "After eglCreateContext"

    invoke-static {v0, v4, p1}, Lorg/godotengine/godot/utils/GLUtils;->checkEglError(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 81
    return-object v2
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .line 85
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 86
    return-void
.end method
