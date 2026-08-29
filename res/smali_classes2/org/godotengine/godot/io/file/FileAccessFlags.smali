.class public final enum Lorg/godotengine/godot/io/file/FileAccessFlags;
.super Ljava/lang/Enum;
.source "FileAccessFlags.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;,
        Lorg/godotengine/godot/io/file/FileAccessFlags$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0080\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        "",
        "nativeValue",
        "",
        "(Ljava/lang/String;II)V",
        "getNativeValue",
        "()I",
        "getMode",
        "",
        "shouldTruncate",
        "",
        "READ",
        "WRITE",
        "READ_WRITE",
        "WRITE_READ",
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

.field private static final synthetic $VALUES:[Lorg/godotengine/godot/io/file/FileAccessFlags;

.field public static final Companion:Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;

.field public static final enum READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

.field public static final enum READ_WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

.field public static final enum WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

.field public static final enum WRITE_READ:Lorg/godotengine/godot/io/file/FileAccessFlags;


# instance fields
.field private final nativeValue:I


# direct methods
.method private static final synthetic $values()[Lorg/godotengine/godot/io/file/FileAccessFlags;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/godotengine/godot/io/file/FileAccessFlags;

    const/4 v1, 0x0

    sget-object v2, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ_WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE_READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    const-string v1, "READ"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/godotengine/godot/io/file/FileAccessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 47
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    const-string v1, "WRITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/godotengine/godot/io/file/FileAccessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 53
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    const-string v1, "READ_WRITE"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/godotengine/godot/io/file/FileAccessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ_WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 60
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    const-string v1, "WRITE_READ"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lorg/godotengine/godot/io/file/FileAccessFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE_READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    invoke-static {}, Lorg/godotengine/godot/io/file/FileAccessFlags;->$values()[Lorg/godotengine/godot/io/file/FileAccessFlags;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->$VALUES:[Lorg/godotengine/godot/io/file/FileAccessFlags;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->Companion:Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/godotengine/godot/io/file/FileAccessFlags;->nativeValue:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lorg/godotengine/godot/io/file/FileAccessFlags;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/io/file/FileAccessFlags;
    .locals 1

    const-class v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    return-object v0
.end method

.method public static values()[Lorg/godotengine/godot/io/file/FileAccessFlags;
    .locals 1

    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->$VALUES:[Lorg/godotengine/godot/io/file/FileAccessFlags;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/godotengine/godot/io/file/FileAccessFlags;

    return-object v0
.end method


# virtual methods
.method public final getMode()Ljava/lang/String;
    .locals 2

    .line 63
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/FileAccessFlags;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const-string v0, "rw"

    goto :goto_0

    .line 65
    :pswitch_1
    const-string v0, "w"

    goto :goto_0

    .line 64
    :pswitch_2
    const-string v0, "r"

    .line 63
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getNativeValue()I
    .locals 1

    .line 36
    iget v0, p0, Lorg/godotengine/godot/io/file/FileAccessFlags;->nativeValue:I

    return v0
.end method

.method public final shouldTruncate()Z
    .locals 2

    .line 71
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/FileAccessFlags;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :pswitch_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
