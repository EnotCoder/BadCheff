.class public final synthetic Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;
.super Ljava/lang/Object;
.source "DirectoryAccessHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->values()[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_RESOURCES:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
