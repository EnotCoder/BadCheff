.class public Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;
.super Ljava/lang/Object;
.source "OvrConfigChooser.java"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final CONFIG_ATTRIBS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;->CONFIG_ATTRIBS:[I

    return-void

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3031
        0x0
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 16
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 62
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 63
    .local v3, "numConfig":[I
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, v5, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 67
    aget v6, v3, v5

    .line 68
    .local v6, "configsCount":I
    if-lez v6, :cond_7

    .line 72
    new-array v7, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 73
    .local v7, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-interface {v0, v1, v7, v6, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 77
    new-array v2, v2, [I

    .line 78
    .local v2, "value":[I
    array-length v8, v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 79
    .local v10, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v11, 0x3040

    invoke-interface {v0, v1, v10, v11, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 80
    aget v11, v2, v5

    const/16 v12, 0x40

    and-int/2addr v11, v12

    if-eq v11, v12, :cond_0

    .line 81
    goto :goto_3

    .line 86
    :cond_0
    const/16 v11, 0x3033

    invoke-interface {v0, v1, v10, v11, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 87
    aget v11, v2, v5

    const/4 v12, 0x5

    and-int/2addr v11, v12

    if-eq v11, v12, :cond_1

    .line 88
    goto :goto_3

    .line 93
    :cond_1
    const/4 v11, 0x0

    .line 94
    .local v11, "attribIndex":I
    :goto_1
    sget-object v12, Lorg/godotengine/godot/xr/ovr/OvrConfigChooser;->CONFIG_ATTRIBS:[I

    aget v13, v12, v11

    const/16 v14, 0x3038

    if-eq v13, v14, :cond_3

    .line 95
    invoke-interface {v0, v1, v10, v13, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 96
    aget v13, v2, v5

    add-int/lit8 v15, v11, 0x1

    aget v15, v12, v15

    if-eq v13, v15, :cond_2

    .line 99
    goto :goto_2

    .line 103
    :cond_2
    add-int/lit8 v11, v11, 0x2

    goto :goto_1

    .line 106
    :cond_3
    :goto_2
    aget v12, v12, v11

    if-ne v12, v14, :cond_4

    .line 108
    return-object v10

    .line 78
    .end local v10    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v11    # "attribIndex":I
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 111
    :cond_5
    return-object v4

    .line 74
    .end local v2    # "value":[I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "eglGetConfigs #2 failed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    .end local v7    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "No configs match configSpec"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    .end local v6    # "configsCount":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "eglGetConfigs failed."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
