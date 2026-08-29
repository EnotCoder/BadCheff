.class final Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
.super Ljava/lang/Object;
.source "FilesystemDirectoryAccess.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J2\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;",
        "",
        "dirFile",
        "Ljava/io/File;",
        "files",
        "",
        "current",
        "",
        "(Ljava/io/File;[Ljava/io/File;I)V",
        "getCurrent",
        "()I",
        "setCurrent",
        "(I)V",
        "getDirFile",
        "()Ljava/io/File;",
        "getFiles",
        "()[Ljava/io/File;",
        "[Ljava/io/File;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/io/File;[Ljava/io/File;I)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private current:I

.field private final dirFile:Ljava/io/File;

.field private final files:[Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;[Ljava/io/File;I)V
    .locals 1
    .param p1, "dirFile"    # Ljava/io/File;
    .param p2, "files"    # [Ljava/io/File;
    .param p3, "current"    # I

    const-string v0, "dirFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    iput-object p2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    iput p3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;[Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 55
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;-><init>(Ljava/io/File;[Ljava/io/File;I)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;Ljava/io/File;[Ljava/io/File;IILjava/lang/Object;)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->copy(Ljava/io/File;[Ljava/io/File;I)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    return-object v0
.end method

.method public final component2()[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    return v0
.end method

.method public final copy(Ljava/io/File;[Ljava/io/File;I)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    .locals 1

    const-string v0, "dirFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    invoke-direct {v0, p1, p2, p3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;-><init>(Ljava/io/File;[Ljava/io/File;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    iget-object v3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    iget-object v4, v1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    iget-object v4, v1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    iget v1, v1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCurrent()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    return v0
.end method

.method public final getDirFile()Ljava/io/File;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    return-object v0
.end method

.method public final getFiles()[Ljava/io/File;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    add-int/2addr v0, v2

    return v0
.end method

.method public final setCurrent(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 55
    iput p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DirData(dirFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", files="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
