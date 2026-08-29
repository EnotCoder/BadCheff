.class public abstract Lorg/godotengine/godot/io/file/DataAccess;
.super Ljava/lang/Object;
.source "DataAccess.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/DataAccess$Companion;,
        Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008 \u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\nH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\rH&J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH&J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\rJ\u0008\u0010\u0018\u001a\u00020\rH&J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H&R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/DataAccess;",
        "",
        "()V",
        "endOfFile",
        "",
        "getEndOfFile$lib_templateDebug",
        "()Z",
        "setEndOfFile$lib_templateDebug",
        "(Z)V",
        "close",
        "",
        "flush",
        "position",
        "",
        "read",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "resize",
        "Lorg/godotengine/godot/error/Error;",
        "length",
        "seek",
        "seekFromEnd",
        "positionFromEnd",
        "size",
        "write",
        "Companion",
        "FileChannelDataAccess",
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
.field public static final Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private endOfFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/godotengine/godot/io/file/DataAccess$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/file/DataAccess$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    .line 58
    const-class v0, Lorg/godotengine/godot/io/file/DataAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/file/DataAccess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/godotengine/godot/io/file/DataAccess;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public final getEndOfFile$lib_templateDebug()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/godotengine/godot/io/file/DataAccess;->endOfFile:Z

    return v0
.end method

.method public abstract position()J
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract resize(J)Lorg/godotengine/godot/error/Error;
.end method

.method public abstract seek(J)V
.end method

.method public final seekFromEnd(J)V
    .locals 4
    .param p1, "positionFromEnd"    # J

    .line 175
    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/DataAccess;->size()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 176
    .local v0, "positionFromBeginning":J
    invoke-virtual {p0, v0, v1}, Lorg/godotengine/godot/io/file/DataAccess;->seek(J)V

    .line 177
    return-void
.end method

.method public final setEndOfFile$lib_templateDebug(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 164
    iput-boolean p1, p0, Lorg/godotengine/godot/io/file/DataAccess;->endOfFile:Z

    return-void
.end method

.method public abstract size()J
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)Z
.end method
