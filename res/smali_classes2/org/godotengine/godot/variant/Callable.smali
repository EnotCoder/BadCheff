.class public final Lorg/godotengine/godot/variant/Callable;
.super Ljava/lang/Object;
.source "Callable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/variant/Callable$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J%\u0010\u0005\u001a\u0004\u0018\u00010\u00012\u0012\u0010\u0006\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0007\"\u00020\u0001H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0004J\u0008\u0010\u000c\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/godotengine/godot/variant/Callable;",
        "",
        "nativeCallablePointer",
        "",
        "(J)V",
        "call",
        "params",
        "",
        "call$lib_templateDebug",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "finalize",
        "",
        "getNativePointer",
        "Companion",
        "lib_templateDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/variant/Callable$Companion;


# instance fields
.field private final nativeCallablePointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/variant/Callable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/variant/Callable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0
    .param p1, "nativeCallablePointer"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lorg/godotengine/godot/variant/Callable;->nativeCallablePointer:J

    return-void
.end method

.method public static final synthetic access$nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "pointer"    # J
    .param p2, "params"    # [Ljava/lang/Object;

    .line 38
    invoke-static {p0, p1, p2}, Lorg/godotengine/godot/variant/Callable;->nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "godotObjectId"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 38
    invoke-static {p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable;->nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "godotObjectId"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 38
    invoke-static {p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable;->nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$releaseNativePointer(J)V
    .locals 0
    .param p0, "nativePointer"    # J

    .line 38
    invoke-static {p0, p1}, Lorg/godotengine/godot/variant/Callable;->releaseNativePointer(J)V

    return-void
.end method

.method public static final varargs call(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable$Companion;->call(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs callDeferred(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable$Companion;->callDeferred(JLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final getNativePointer()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/godotengine/godot/variant/Callable;->nativeCallablePointer:J

    return-wide v0
.end method

.method private static final native nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native releaseNativePointer(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method


# virtual methods
.method public final varargs call$lib_templateDebug([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-wide v0, p0, Lorg/godotengine/godot/variant/Callable;->nativeCallablePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    sget-object v2, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    invoke-static {v2, v0, v1, p1}, Lorg/godotengine/godot/variant/Callable$Companion;->access$nativeCall(Lorg/godotengine/godot/variant/Callable$Companion;J[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final finalize()V
    .locals 3

    .line 92
    sget-object v0, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    iget-wide v1, p0, Lorg/godotengine/godot/variant/Callable;->nativeCallablePointer:J

    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/variant/Callable$Companion;->access$releaseNativePointer(Lorg/godotengine/godot/variant/Callable$Companion;J)V

    .line 93
    return-void
.end method
