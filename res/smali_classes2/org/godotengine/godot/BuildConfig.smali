.class public final Lorg/godotengine/godot/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = "template"

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "org.godotengine.godot"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/godotengine/godot/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
