.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;
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
    name = "DownloadColumns"
.end annotation


# static fields
.field public static final CONTROL:Ljava/lang/String; = "CONTROL"

.field public static final CURRENTBYTES:Ljava/lang/String; = "CURRENTBYTES"

.field public static final ETAG:Ljava/lang/String; = "ETAG"

.field public static final FILENAME:Ljava/lang/String; = "FN"

.field public static final INDEX:Ljava/lang/String; = "FILEIDX"

.field public static final LASTMOD:Ljava/lang/String; = "LASTMOD"

.field public static final NUM_FAILED:Ljava/lang/String; = "FAILCOUNT"

.field public static final REDIRECT_COUNT:Ljava/lang/String; = "REDIRECTCOUNT"

.field public static final RETRY_AFTER:Ljava/lang/String; = "RETRYAFTER"

.field public static final SCHEMA:[[Ljava/lang/String;

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final TABLE_NAME:Ljava/lang/String; = "DownloadColumns"

.field public static final TOTALBYTES:Ljava/lang/String; = "TOTALBYTES"

.field public static final URI:Ljava/lang/String; = "URI"

.field public static final _ID:Ljava/lang/String; = "DownloadColumns._id"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 258
    const/16 v0, 0xd

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FILEIDX"

    const-string v2, "INTEGER UNIQUE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "URI"

    const-string v2, "TEXT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "FN"

    const-string v3, "TEXT UNIQUE"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "ETAG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "TOTALBYTES"

    const-string v2, "INTEGER"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "CURRENTBYTES"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "LASTMOD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "STATUS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "CONTROL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "FAILCOUNT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "RETRYAFTER"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "REDIRECTCOUNT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;->SCHEMA:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
