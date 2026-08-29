.class public final Lorg/godotengine/godot/io/file/FileData$Companion;
.super Ljava/lang/Object;
.source "FileData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/file/FileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u0004J\u0016\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/FileData$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "delete",
        "",
        "filepath",
        "fileExists",
        "path",
        "fileLastModified",
        "",
        "rename",
        "from",
        "to",
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/io/file/FileData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    const-string v0, "filepath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    nop

    .line 64
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public final fileExists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    nop

    .line 48
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return v0
.end method

.method public final fileLastModified(Ljava/lang/String;)J
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;

    const-string v0, "filepath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    nop

    .line 56
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/SecurityException;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .line 55
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    return-wide v0
.end method

.method public final rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    nop

    .line 72
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "fromFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "fromFile":Ljava/io/File;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method
