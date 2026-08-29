.class final enum Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
.super Ljava/lang/Enum;
.source "DirectoryAccessHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0082\u0081\u0002\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
        "",
        "nativeValue",
        "",
        "(Ljava/lang/String;II)V",
        "getNativeValue",
        "()I",
        "generateDirAccessId",
        "dirId",
        "ACCESS_RESOURCES",
        "ACCESS_USERDATA",
        "ACCESS_FILESYSTEM",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

.field public static final enum ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

.field public static final enum ACCESS_RESOURCES:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

.field public static final enum ACCESS_USERDATA:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

.field public static final Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

.field public static final DIR_ACCESS_ID_MULTIPLIER:I = 0xa


# instance fields
.field private final nativeValue:I


# direct methods
.method private static final synthetic $values()[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    const/4 v1, 0x0

    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_RESOURCES:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_USERDATA:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    const-string v1, "ACCESS_RESOURCES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_RESOURCES:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 57
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    const-string v1, "ACCESS_USERDATA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_USERDATA:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 58
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    const-string v1, "ACCESS_FILESYSTEM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    invoke-static {}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$values()[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$VALUES:[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "nativeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->nativeValue:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 1

    const-class v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    return-object v0
.end method

.method public static values()[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 1

    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$VALUES:[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    return-object v0
.end method


# virtual methods
.method public final generateDirAccessId(I)I
    .locals 2
    .param p1, "dirId"    # I

    .line 60
    mul-int/lit8 v0, p1, 0xa

    iget v1, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->nativeValue:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getNativeValue()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->nativeValue:I

    return v0
.end method
