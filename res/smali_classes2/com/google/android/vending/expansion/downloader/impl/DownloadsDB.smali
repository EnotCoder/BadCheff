.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.super Ljava/lang/Object;
.source "DownloadsDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;
    }
.end annotation


# static fields
.field private static final CONTROL_IDX:I = 0x7

.field private static final CURRENTBYTES_IDX:I = 0x4

.field private static final DATABASE_NAME:Ljava/lang/String; = "DownloadsDB"

.field private static final DATABASE_VERSION:I = 0x7

.field private static final DC_PROJECTION:[Ljava/lang/String;

.field private static final ETAG_IDX:I = 0x2

.field private static final FILENAME_IDX:I = 0x0

.field private static final INDEX_IDX:I = 0xb

.field private static final LASTMOD_IDX:I = 0x5

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final NUM_FAILED_IDX:I = 0x8

.field private static final REDIRECT_COUNT_IDX:I = 0xa

.field private static final RETRY_AFTER_IDX:I = 0x9

.field private static final STATUS_IDX:I = 0x6

.field private static final TOTALBYTES_IDX:I = 0x3

.field private static final URI_IDX:I = 0x1

.field private static mDownloadsDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;


# instance fields
.field mFlags:I

.field mGetDownloadByIndex:Landroid/database/sqlite/SQLiteStatement;

.field final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mMetadataRowID:J

.field mStatus:I

.field mUpdateCurrentBytes:Landroid/database/sqlite/SQLiteStatement;

.field mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->LOG_TAG:Ljava/lang/String;

    .line 297
    const-string v1, "FN"

    const-string v2, "URI"

    const-string v3, "ETAG"

    const-string v4, "TOTALBYTES"

    const-string v5, "CURRENTBYTES"

    const-string v6, "LASTMOD"

    const-string v7, "STATUS"

    const-string v8, "CONTROL"

    const-string v9, "FAILCOUNT"

    const-string v10, "RETRYAFTER"

    const-string v11, "REDIRECTCOUNT"

    const-string v12, "FILEIDX"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->DC_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "paramContext"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    .line 39
    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    .line 70
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;

    invoke-direct {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 71
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    .local v0, "sqldb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT APKVERSION,_id,DOWNLOADSTATUS,DOWNLOADFLAGS FROM MetadataColumns LIMIT 1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 81
    .local v1, "cur":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    .line 83
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    .line 84
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    .line 85
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_0
    sput-object p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mDownloadsDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    .line 89
    return-void
.end method

.method public static declared-synchronized getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;

    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mDownloadsDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    invoke-direct {v1, p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :cond_0
    monitor-exit v0

    return-object v1

    .line 42
    .end local p0    # "paramContext":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getDownloadByIndexStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mGetDownloadByIndex:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT _id FROM DownloadColumns WHERE FILEIDX = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mGetDownloadByIndex:Landroid/database/sqlite/SQLiteStatement;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mGetDownloadByIndex:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method private getUpdateCurrentBytesStatement()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mUpdateCurrentBytes:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE DownloadColumns SET CURRENTBYTES = ? WHERE FILEIDX = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mUpdateCurrentBytes:Landroid/database/sqlite/SQLiteStatement;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mUpdateCurrentBytes:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 135
    return-void
.end method

.method protected getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    .local v0, "sqldb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 95
    .local v9, "itemcur":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "DownloadColumns"

    sget-object v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->DC_PROJECTION:[Ljava/lang/String;

    const-string v4, "FN = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v9, v1

    .line 100
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0, v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoFromCursor(Landroid/database/Cursor;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    if-eqz v9, :cond_0

    .line 105
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_0
    return-object v1

    .line 104
    :cond_1
    if-eqz v9, :cond_2

    .line 105
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 104
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 105
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_3
    throw v1
.end method

.method public getDownloadInfoFromCursor(Landroid/database/Cursor;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .locals 4
    .param p1, "cur"    # Landroid/database/Cursor;

    .line 480
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 481
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v3

    .line 482
    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v0, "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    invoke-virtual {p0, v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->setDownloadInfoFromCursor(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/database/Cursor;)V

    .line 484
    return-object v0
.end method

.method public getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .locals 10

    .line 488
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 489
    .local v0, "sqldb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 491
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "DownloadColumns"

    sget-object v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->DC_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v9, v1

    .line 493
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    .line 495
    .local v1, "retInfos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    const/4 v2, 0x0

    .line 497
    .local v2, "idx":I
    :goto_0
    invoke-virtual {p0, v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoFromCursor(Landroid/database/Cursor;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v3

    .line 498
    .local v3, "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "idx":I
    .local v4, "idx":I
    aput-object v3, v1, v2

    .line 499
    .end local v3    # "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 500
    nop

    .line 504
    if-eqz v9, :cond_0

    .line 505
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_0
    return-object v1

    .line 499
    :cond_1
    move v2, v4

    goto :goto_0

    .line 502
    .end local v1    # "retInfos":[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v4    # "idx":I
    :cond_2
    nop

    .line 504
    if-eqz v9, :cond_3

    .line 505
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_3
    const/4 v1, 0x0

    return-object v1

    .line 504
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_4

    .line 505
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_4
    throw v1
.end method

.method public getFlags()I
    .locals 1

    .line 383
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    return v0
.end method

.method public getIDByIndex(I)J
    .locals 4
    .param p1, "index"    # I

    .line 115
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadByIndexStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 116
    .local v0, "downloadByIndex":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 117
    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 119
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getIDForDownloadInfo(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)J
    .locals 2
    .param p1, "di"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    .line 111
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getIDByIndex(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastCheckedVersionCode()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    return v0
.end method

.method public isDownloadRequired()Z
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 368
    .local v0, "sqldb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT Count(*) FROM DownloadColumns WHERE STATUS <> 0"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 372
    .local v1, "cur":Landroid/database/Cursor;
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 373
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 376
    :goto_0
    if-eqz v1, :cond_1

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_1
    return v2

    .line 376
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_2
    throw v2

    .line 376
    :cond_3
    if-eqz v1, :cond_4

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_4
    return v2
.end method

.method public setDownloadInfoFromCursor(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "di"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .param p2, "cur"    # Landroid/database/Cursor;

    .line 467
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 468
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    .line 469
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    .line 470
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 471
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    .line 472
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 473
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    .line 474
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    .line 475
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    .line 476
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    .line 477
    return-void
.end method

.method public updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    .locals 3
    .param p1, "di"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    .line 327
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FILEIDX"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v1, "FN"

    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "URI"

    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v1, "ETAG"

    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "TOTALBYTES"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CURRENTBYTES"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LASTMOD"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CONTROL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FAILCOUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RETRYAFTER"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REDIRECTCOUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/content/ContentValues;)Z

    move-result v1

    return v1
.end method

.method public updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/content/ContentValues;)Z
    .locals 9
    .param p1, "di"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 344
    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getIDForDownloadInfo(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)J

    move-result-wide v2

    .line 346
    .local v2, "id":J
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v5, "sqldb":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "DownloadColumns"

    cmp-long v7, v2, v0

    if-eqz v7, :cond_1

    .line 348
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadColumns._id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v5, v6, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    return v4

    .line 353
    :cond_1
    const-string v7, "URI"

    invoke-virtual {v5, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    .line 356
    .end local v5    # "sqldb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 359
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    return v4
.end method

.method public updateDownloadCurrentBytes(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)V
    .locals 4
    .param p1, "di"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    .line 126
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getUpdateCurrentBytesStatement()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 127
    .local v0, "downloadCurrentBytes":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 128
    const/4 v1, 0x1

    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 129
    iget v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 130
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 131
    return-void
.end method

.method public updateFlags(I)Z
    .locals 4
    .param p1, "flags"    # I

    .line 387
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    .line 388
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "DOWNLOADFLAGS"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    .line 392
    return v1

    .line 394
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 397
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    return v1
.end method

.method public updateFromDb(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    .locals 12
    .param p1, "di"    # Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    .line 446
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 447
    .local v0, "sqldb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 449
    .local v9, "cur":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "DownloadColumns"

    sget-object v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->DC_PROJECTION:[Ljava/lang/String;

    const-string v4, "FN= ?"

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v9, v1

    .line 454
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    invoke-virtual {p0, p1, v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->setDownloadInfoFromCursor(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    nop

    .line 460
    if-eqz v9, :cond_0

    .line 461
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_0
    return v10

    .line 458
    :cond_1
    nop

    .line 460
    if-eqz v9, :cond_2

    .line 461
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 458
    :cond_2
    return v11

    .line 460
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 461
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_3
    throw v1
.end method

.method public updateMetadata(II)Z
    .locals 3
    .param p1, "apkVersion"    # I
    .param p2, "downloadStatus"    # I

    .line 433
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "APKVERSION"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    const-string v1, "DOWNLOADSTATUS"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    .line 438
    iput p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    .line 439
    const/4 v1, 0x1

    return v1

    .line 441
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateMetadata(Landroid/content/ContentValues;)Z
    .locals 8
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 417
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 418
    .local v0, "sqldb":Landroid/database/sqlite/SQLiteDatabase;
    iget-wide v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    const/4 v3, 0x0

    const-string v4, "MetadataColumns"

    const-wide/16 v5, -0x1

    cmp-long v7, v5, v1

    if-nez v7, :cond_1

    .line 419
    const-string v1, "APKVERSION"

    invoke-virtual {v0, v4, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 421
    .local v1, "newID":J
    cmp-long v4, v5, v1

    if-nez v4, :cond_0

    .line 422
    return v3

    .line 423
    :cond_0
    iput-wide v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    .line 424
    .end local v1    # "newID":J
    goto :goto_0

    .line 425
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 427
    return v3

    .line 429
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public updateStatus(I)Z
    .locals 4
    .param p1, "status"    # I

    .line 402
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    .line 403
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 404
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "DOWNLOADSTATUS"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    .line 407
    return v1

    .line 409
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 412
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    return v1
.end method
