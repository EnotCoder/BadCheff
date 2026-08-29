.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;
.super Ljava/lang/Object;
.source "DownloadsDB.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataColumns"
.end annotation


# static fields
.field public static final APKVERSION:Ljava/lang/String; = "APKVERSION"

.field public static final DOWNLOAD_STATUS:Ljava/lang/String; = "DOWNLOADSTATUS"

.field public static final FLAGS:Ljava/lang/String; = "DOWNLOADFLAGS"

.field public static final SCHEMA:[[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "MetadataColumns"

.field public static final _ID:Ljava/lang/String; = "MetadataColumns._id"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 225
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "APKVERSION"

    const-string v2, "INTEGER"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "DOWNLOADSTATUS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "DOWNLOADFLAGS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;->SCHEMA:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
