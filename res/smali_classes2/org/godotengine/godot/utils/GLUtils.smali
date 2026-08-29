.class public Lorg/godotengine/godot/utils/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# static fields
.field private static final ATTRIBUTES:[I

.field private static final ATTRIBUTES_NAMES:[Ljava/lang/String;

.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 43
    const-class v0, Lorg/godotengine/godot/utils/GLUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/utils/GLUtils;->TAG:Ljava/lang/String;

    .line 47
    const-string v1, "EGL_BUFFER_SIZE"

    const-string v2, "EGL_ALPHA_SIZE"

    const-string v3, "EGL_BLUE_SIZE"

    const-string v4, "EGL_GREEN_SIZE"

    const-string v5, "EGL_RED_SIZE"

    const-string v6, "EGL_DEPTH_SIZE"

    const-string v7, "EGL_STENCIL_SIZE"

    const-string v8, "EGL_CONFIG_CAVEAT"

    const-string v9, "EGL_CONFIG_ID"

    const-string v10, "EGL_LEVEL"

    const-string v11, "EGL_MAX_PBUFFER_HEIGHT"

    const-string v12, "EGL_MAX_PBUFFER_PIXELS"

    const-string v13, "EGL_MAX_PBUFFER_WIDTH"

    const-string v14, "EGL_NATIVE_RENDERABLE"

    const-string v15, "EGL_NATIVE_VISUAL_ID"

    const-string v16, "EGL_NATIVE_VISUAL_TYPE"

    const-string v17, "EGL_PRESERVED_RESOURCES"

    const-string v18, "EGL_SAMPLES"

    const-string v19, "EGL_SAMPLE_BUFFERS"

    const-string v20, "EGL_SURFACE_TYPE"

    const-string v21, "EGL_TRANSPARENT_TYPE"

    const-string v22, "EGL_TRANSPARENT_RED_VALUE"

    const-string v23, "EGL_TRANSPARENT_GREEN_VALUE"

    const-string v24, "EGL_TRANSPARENT_BLUE_VALUE"

    const-string v25, "EGL_BIND_TO_TEXTURE_RGB"

    const-string v26, "EGL_BIND_TO_TEXTURE_RGBA"

    const-string v27, "EGL_MIN_SWAP_INTERVAL"

    const-string v28, "EGL_MAX_SWAP_INTERVAL"

    const-string v29, "EGL_LUMINANCE_SIZE"

    const-string v30, "EGL_ALPHA_MASK_SIZE"

    const-string v31, "EGL_COLOR_BUFFER_TYPE"

    const-string v32, "EGL_RENDERABLE_TYPE"

    const-string v33, "EGL_CONFORMANT"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/utils/GLUtils;->ATTRIBUTES_NAMES:[Ljava/lang/String;

    .line 83
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/godotengine/godot/utils/GLUtils;->ATTRIBUTES:[I

    return-void

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEglError(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .line 123
    nop

    :goto_0
    invoke-interface {p2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    move v1, v0

    .local v1, "error":I
    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 124
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "%s: EGL error: 0x%x"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method private static printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 140
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 141
    .local v1, "value":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lorg/godotengine/godot/utils/GLUtils;->ATTRIBUTES:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 142
    aget v3, v3, v2

    .line 143
    .local v3, "attribute":I
    sget-object v4, Lorg/godotengine/godot/utils/GLUtils;->ATTRIBUTES_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 144
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p0, p1, p2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    sget-object v5, Lorg/godotengine/godot/utils/GLUtils;->TAG:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    aget v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "  %s: %d\n"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 148
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    const/16 v6, 0x3000

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 141
    .end local v3    # "attribute":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public static printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 130
    array-length v0, p2

    .line 131
    .local v0, "numConfigs":I
    sget-object v1, Lorg/godotengine/godot/utils/GLUtils;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d configurations"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    sget-object v3, Lorg/godotengine/godot/utils/GLUtils;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v6, "Configuration %d:\n"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    aget-object v3, p2, v1

    invoke-static {p0, p1, v3}, Lorg/godotengine/godot/utils/GLUtils;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
