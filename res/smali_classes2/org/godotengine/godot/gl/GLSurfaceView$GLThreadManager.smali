.class Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1895
    const-string v0, "GLThreadManager"

    sput-object v0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method


# virtual methods
.method public releaseEglContextLocked(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V
    .locals 0
    .param p1, "thread"    # Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    .line 1910
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1911
    return-void
.end method

.method public declared-synchronized threadExiting(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;

    monitor-enter p0

    .line 1901
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->-$$Nest$fputmExited(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;Z)V

    .line 1902
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1903
    monitor-exit p0

    return-void

    .line 1900
    .end local p0    # "this":Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;
    .end local p1    # "thread":Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
