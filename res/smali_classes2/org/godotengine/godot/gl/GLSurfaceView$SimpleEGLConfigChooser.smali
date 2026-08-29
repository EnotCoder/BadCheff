.class Lorg/godotengine/godot/gl/GLSurfaceView$SimpleEGLConfigChooser;
.super Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/godotengine/godot/gl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/gl/GLSurfaceView;Z)V
    .locals 8
    .param p2, "withDepthBuffer"    # Z

    .line 1030
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 1031
    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    const/16 v0, 0x10

    const/16 v6, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/godotengine/godot/gl/GLSurfaceView$ComponentSizeChooser;-><init>(Lorg/godotengine/godot/gl/GLSurfaceView;IIIIII)V

    .line 1032
    return-void
.end method
