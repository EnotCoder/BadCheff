.class public Lorg/godotengine/godot/xr/regular/RegularConfigChooser;
.super Ljava/lang/Object;
.source "RegularConfigChooser.java"

# interfaces
.implements Lorg/godotengine/godot/gl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static final TAG:Ljava/lang/String;

.field private static s_configAttribs:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    const-class v0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x4

    sput v0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 53
    const/16 v1, 0x9

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3024

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/16 v2, 0x3022

    aput v2, v1, v0

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x3040

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    const/16 v0, 0x8

    const/16 v2, 0x3038

    aput v2, v1, v0

    sput-object v1, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->s_configAttribs:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mValue:[I

    .line 64
    iput p1, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mRedSize:I

    .line 65
    iput p2, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mGreenSize:I

    .line 66
    iput p3, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mBlueSize:I

    .line 67
    iput p4, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mAlphaSize:I

    .line 68
    iput p5, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mDepthSize:I

    .line 69
    iput p6, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mStencilSize:I

    .line 70
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .line 127
    iget-object v0, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 130
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 76
    .local v0, "num_config":[I
    sget-object v3, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->s_configAttribs:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 78
    const/4 v1, 0x0

    aget v7, v0, v1

    .line 80
    .local v7, "numConfigs":I
    if-lez v7, :cond_0

    .line 86
    new-array v8, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 87
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v3, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->s_configAttribs:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v8

    move v5, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 94
    invoke-virtual {p0, p1, p2, v8}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    return-object v1

    .line 81
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 16
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 99
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    array-length v8, v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 100
    .local v10, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 102
    .local v11, "d":I
    const/16 v4, 0x3026

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 106
    .local v12, "s":I
    iget v0, v6, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mDepthSize:I

    if-lt v11, v0, :cond_1

    iget v0, v6, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mStencilSize:I

    if-ge v12, v0, :cond_0

    .line 107
    goto :goto_1

    .line 110
    :cond_0
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 112
    .local v13, "r":I
    const/16 v4, 0x3023

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 114
    .local v14, "g":I
    const/16 v4, 0x3022

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 116
    .local v15, "b":I
    const/16 v4, 0x3021

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 119
    .local v0, "a":I
    iget v1, v6, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mRedSize:I

    if-ne v13, v1, :cond_1

    iget v1, v6, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mGreenSize:I

    if-ne v14, v1, :cond_1

    iget v1, v6, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mBlueSize:I

    if-ne v15, v1, :cond_1

    iget v1, v6, Lorg/godotengine/godot/xr/regular/RegularConfigChooser;->mAlphaSize:I

    if-ne v0, v1, :cond_1

    .line 120
    return-object v10

    .line 99
    .end local v0    # "a":I
    .end local v10    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v11    # "d":I
    .end local v12    # "s":I
    .end local v13    # "r":I
    .end local v14    # "g":I
    .end local v15    # "b":I
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
