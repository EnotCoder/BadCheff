.class Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lorg/godotengine/godot/gl/GLSurfaceView;


# direct methods
.method private constructor <init>(Lorg/godotengine/godot/gl/GLSurfaceView;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;->this$0:Lorg/godotengine/godot/gl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    const/16 p1, 0x3098

    iput p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/godotengine/godot/gl/GLSurfaceView;Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 818
    iget v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    iget-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;->this$0:Lorg/godotengine/godot/gl/GLSurfaceView;

    invoke-static {v1}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Lorg/godotengine/godot/gl/GLSurfaceView;)I

    move-result v1

    const/16 v2, 0x3038

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 821
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 822
    iget-object v2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$DefaultContextFactory;->this$0:Lorg/godotengine/godot/gl/GLSurfaceView;

    invoke-static {v2}, Lorg/godotengine/godot/gl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Lorg/godotengine/godot/gl/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 821
    :goto_0
    invoke-interface {p1, p2, p3, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .line 827
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultContextFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v0, "eglDestroyContex"

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v0, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 834
    :cond_0
    return-void
.end method
