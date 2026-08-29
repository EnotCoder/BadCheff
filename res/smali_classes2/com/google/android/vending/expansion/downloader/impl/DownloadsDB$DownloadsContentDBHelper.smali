.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadsDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DownloadsContentDBHelper"
.end annotation


# static fields
.field private static final sSchemas:[[[Ljava/lang/String;

.field private static final sTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [[[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;->SCHEMA:[[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;->SCHEMA:[[Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    .line 173
    const-string v0, "DownloadColumns"

    const-string v1, "MetadataColumns"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "paramContext"    # Landroid/content/Context;

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x7

    const-string v2, "DownloadsDB"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 140
    return-void
.end method

.method private createTableQueryFromArray(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "paramArrayOfString"    # [[Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "localStringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    array-length v1, p2

    .line 149
    .local v1, "i":I
    const/4 v2, 0x0

    .line 150
    .local v2, "j":I
    :goto_0
    const/4 v3, 0x1

    if-lt v2, v1, :cond_0

    .line 151
    nop

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    const-string v3, ");"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 156
    :cond_0
    aget-object v4, p2, v2

    .line 157
    .local v4, "arrayOfString":[Ljava/lang/String;
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    .end local v4    # "arrayOfString":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 182
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 184
    .local v3, "table":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_1

    .line 185
    :catch_0
    move-exception v4

    .line 186
    .local v4, "localException":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v3    # "table":Ljava/lang/String;
    .end local v4    # "localException":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 197
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    array-length v0, v0

    .line 198
    .local v0, "numSchemas":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 200
    :try_start_0
    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 201
    .local v2, "schema":[[Ljava/lang/String;
    sget-object v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->createTableQueryFromArray(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "schema":[[Ljava/lang/String;
    nop

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "numSchemas":I
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;
    .end local p1    # "paramSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception p1

    move-object v2, p1

    .line 205
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 208
    .restart local v0    # "numSchemas":I
    .restart local p1    # "paramSQLiteDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "paramSQLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .line 212
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    return-void
.end method
