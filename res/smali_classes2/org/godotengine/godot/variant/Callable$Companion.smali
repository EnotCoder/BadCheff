.class public final Lorg/godotengine/godot/variant/Callable$Companion;
.super Ljava/lang/Object;
.source "Callable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/variant/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J3\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t\"\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\nJ1\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\t\"\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\rJ#\u0010\u000e\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000f\u001a\u00020\u00052\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\tH\u0083 J+\u0010\u0011\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\tH\u0083 J)\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\tH\u0083 J\u0011\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0005H\u0083 \u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/godotengine/godot/variant/Callable$Companion;",
        "",
        "()V",
        "call",
        "godotObjectId",
        "",
        "methodName",
        "",
        "methodParameters",
        "",
        "(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;",
        "callDeferred",
        "",
        "(JLjava/lang/String;[Ljava/lang/Object;)V",
        "nativeCall",
        "pointer",
        "params",
        "nativeCallObject",
        "nativeCallObjectDeferred",
        "releaseNativePointer",
        "nativePointer",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/variant/Callable$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$nativeCall(Lorg/godotengine/godot/variant/Callable$Companion;J[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lorg/godotengine/godot/variant/Callable$Companion;
    .param p1, "pointer"    # J
    .param p3, "params"    # [Ljava/lang/Object;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable$Companion;->nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$releaseNativePointer(Lorg/godotengine/godot/variant/Callable$Companion;J)V
    .locals 0
    .param p0, "$this"    # Lorg/godotengine/godot/variant/Callable$Companion;
    .param p1, "nativePointer"    # J

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/godotengine/godot/variant/Callable$Companion;->releaseNativePointer(J)V

    return-void
.end method

.method private final nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3}, Lorg/godotengine/godot/variant/Callable;->access$nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lorg/godotengine/godot/variant/Callable;->access$nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lorg/godotengine/godot/variant/Callable;->access$nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final releaseNativePointer(J)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1, p2}, Lorg/godotengine/godot/variant/Callable;->access$releaseNativePointer(J)V

    return-void
.end method


# virtual methods
.method public final varargs call(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "godotObjectId"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "methodParameters"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "methodName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/godotengine/godot/variant/Callable$Companion;->nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final varargs callDeferred(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "godotObjectId"    # J
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "methodParameters"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "methodName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/godotengine/godot/variant/Callable$Companion;->nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method
