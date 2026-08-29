.class public interface abstract Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;
.super Ljava/lang/Object;
.source "DirectoryAccessHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DirectoryAccess"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\n\u0008`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0005H&J\u0008\u0010\u0010\u001a\u00020\u0005H&J\u0008\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\tH&J\u0010\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\tH&J\u0018\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\tH&\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;",
        "",
        "dirClose",
        "",
        "dirId",
        "",
        "dirExists",
        "",
        "path",
        "",
        "dirIsDir",
        "dirNext",
        "dirOpen",
        "fileExists",
        "getDrive",
        "drive",
        "getDriveCount",
        "getSpaceLeft",
        "",
        "hasDirId",
        "isCurrentHidden",
        "makeDir",
        "dir",
        "remove",
        "filename",
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


# virtual methods
.method public abstract dirClose(I)V
.end method

.method public abstract dirExists(Ljava/lang/String;)Z
.end method

.method public abstract dirIsDir(I)Z
.end method

.method public abstract dirNext(I)Ljava/lang/String;
.end method

.method public abstract dirOpen(Ljava/lang/String;)I
.end method

.method public abstract fileExists(Ljava/lang/String;)Z
.end method

.method public abstract getDrive(I)Ljava/lang/String;
.end method

.method public abstract getDriveCount()I
.end method

.method public abstract getSpaceLeft()J
.end method

.method public abstract hasDirId(I)Z
.end method

.method public abstract isCurrentHidden(I)Z
.end method

.method public abstract makeDir(Ljava/lang/String;)Z
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;)Z
.end method
