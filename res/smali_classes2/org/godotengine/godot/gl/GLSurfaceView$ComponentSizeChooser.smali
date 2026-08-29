.class Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;
.super Lorg/godotengine/godot/gl/GLSurfaceView$BaseConfigChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lorg/godotengine/godot/gl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/gl/GLSurfaceView;IIIIII)V
    .locals 4
    .param p2, "redSize"    # I
    .param p3, "greenSize"    # I
    .param p4, "blueSize"    # I
    .param p5, "alphaSize"    # I
    .param p6, "depthSize"    # I
    .param p7, "stencilSize"    # I

    .line 961
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->this$0:Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 962
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v0, v2

    const/4 v2, 0x5

    aput p4, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x3021

    aput v3, v0, v2

    const/4 v2, 0x7

    aput p5, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x3025

    aput v3, v0, v2

    const/16 v2, 0x9

    aput p6, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x3026

    aput v3, v0, v2

    const/16 v2, 0xb

    aput p7, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x3038

    aput v3, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/GLSurfaceView$BaseConfigChooser;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView;[I)V

    .line 970
    new-array p1, v1, [I

    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    .line 971
    iput p2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    .line 972
    iput p3, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    .line 973
    iput p4, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    .line 974
    iput p5, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    .line 975
    iput p6, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    .line 976
    iput p7, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    .line 977
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .line 1008
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 1011
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 16
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 982
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    array-length v8, v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 983
    .local v10, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 985
    .local v11, "d":I
    const/16 v4, 0x3026

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 987
    .local v12, "s":I
    iget v0, v6, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mDepthSize:I

    if-lt v11, v0, :cond_0

    iget v0, v6, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mStencilSize:I

    if-lt v12, v0, :cond_0

    .line 988
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 990
    .local v13, "r":I
    const/16 v4, 0x3023

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 992
    .local v14, "g":I
    const/16 v4, 0x3022

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 994
    .local v15, "b":I
    const/16 v4, 0x3021

    invoke-direct/range {v0 .. v5}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    .line 996
    .local v0, "a":I
    iget v1, v6, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mRedSize:I

    if-ne v13, v1, :cond_0

    iget v1, v6, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mGreenSize:I

    if-ne v14, v1, :cond_0

    iget v1, v6, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mBlueSize:I

    if-ne v15, v1, :cond_0

    iget v1, v6, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;->mAlphaSize:I

    if-ne v0, v1, :cond_0

    .line 998
    return-object v10

    .line 982
    .end local v0    # "a":I
    .end local v10    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v11    # "d":I
    .end local v12    # "s":I
    .end local v13    # "r":I
    .end local v14    # "g":I
    .end local v15    # "b":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1002
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
