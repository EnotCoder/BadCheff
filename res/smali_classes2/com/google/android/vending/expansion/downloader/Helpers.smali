.class public Lcom/google/android/vending/expansion/downloader/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field public static final FS_CANNOT_READ:I = 0x2

.field public static final FS_DOES_NOT_EXIST:I = 0x1

.field public static final FS_READABLE:I

.field public static sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->sRandom:Ljava/util/Random;

    .line 49
    nop

    .line 50
    const-string v0, "attachment;\\s*filename\\s*=\\s*\"([^\"]*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static canWriteOBBFile(Landroid/content/Context;)Z
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 305
    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "fileForNewFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "canWrite":Z
    :goto_0
    goto :goto_1

    .line 311
    .end local v2    # "canWrite":Z
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    .line 313
    .restart local v2    # "canWrite":Z
    :goto_1
    return v2
.end method

.method static deleteFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 128
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .end local v0    # "file":Ljava/io/File;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' couldn\'t be deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LVLDL"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileSize"    # J
    .param p4, "deleteFileOnMismatch"    # Z

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "fileForNewFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    .line 258
    const/4 v1, 0x1

    return v1

    .line 260
    :cond_0
    if-eqz p4, :cond_1

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 266
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public static getAvailableBytes(Ljava/io/File;)J
    .locals 5
    .param p0, "root"    # Ljava/io/File;

    .line 106
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x4

    sub-long/2addr v1, v3

    .line 110
    .local v1, "availableBlocks":J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long v3, v3, v1

    return-wide v3
.end method

.method public static getDownloadProgressPercent(JJ)Ljava/lang/String;
    .locals 3
    .param p0, "overallProgress"    # J
    .param p2, "overallTotal"    # J

    .line 182
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 186
    const-string v0, ""

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x64

    mul-long v1, v1, p0

    div-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadProgressString(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "overallProgress"    # J
    .param p2, "overallTotal"    # J

    .line 146
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 150
    const-string v0, ""

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    long-to-float v4, p0

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    .line 154
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 153
    const-string v4, "%.2f"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB /"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-float v3, p2

    div-float/2addr v3, v5

    .line 156
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public static getDownloadProgressStringNotification(JJ)Ljava/lang/String;
    .locals 3
    .param p0, "overallProgress"    # J
    .param p2, "overallTotal"    # J

    .line 171
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    .line 175
    const-string v0, ""

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressPercent(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    return-object v0
.end method

.method public static getDownloaderStringResourceIDFromState(I)I
    .locals 1
    .param p0, "state"    # I

    .line 325
    packed-switch p0, :pswitch_data_0

    .line 363
    sget v0, Lorg/godotengine/godot/R$string;->state_unknown:I

    return v0

    .line 361
    :pswitch_0
    sget v0, Lorg/godotengine/godot/R$string;->state_failed_cancelled:I

    return v0

    .line 359
    :pswitch_1
    sget v0, Lorg/godotengine/godot/R$string;->state_failed_sdcard_full:I

    return v0

    .line 357
    :pswitch_2
    sget v0, Lorg/godotengine/godot/R$string;->state_failed_fetching_url:I

    return v0

    .line 355
    :pswitch_3
    sget v0, Lorg/godotengine/godot/R$string;->state_failed_unlicensed:I

    return v0

    .line 353
    :pswitch_4
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_sdcard_unavailable:I

    return v0

    .line 351
    :pswitch_5
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_network_setup_failure:I

    return v0

    .line 349
    :pswitch_6
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_roaming:I

    return v0

    .line 347
    :pswitch_7
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_wifi_unavailable:I

    return v0

    .line 345
    :pswitch_8
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_wifi_disabled:I

    return v0

    .line 343
    :pswitch_9
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_wifi_unavailable:I

    return v0

    .line 341
    :pswitch_a
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_wifi_disabled:I

    return v0

    .line 339
    :pswitch_b
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_by_request:I

    return v0

    .line 337
    :pswitch_c
    sget v0, Lorg/godotengine/godot/R$string;->state_paused_network_unavailable:I

    return v0

    .line 335
    :pswitch_d
    sget v0, Lorg/godotengine/godot/R$string;->state_completed:I

    return v0

    .line 333
    :pswitch_e
    sget v0, Lorg/godotengine/godot/R$string;->state_downloading:I

    return v0

    .line 331
    :pswitch_f
    sget v0, Lorg/godotengine/godot/R$string;->state_connecting:I

    return v0

    .line 329
    :pswitch_10
    sget v0, Lorg/godotengine/godot/R$string;->state_fetching_url:I

    return v0

    .line 327
    :pswitch_11
    sget v0, Lorg/godotengine/godot/R$string;->state_idle:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "mainFile"    # Z
    .param p2, "versionCode"    # I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "main."

    goto :goto_0

    :cond_0
    const-string v1, "patch."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->generateSaveFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "fileForNewFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const/4 v1, 0x0

    .local v1, "returnValue":I
    goto :goto_0

    .line 289
    .end local v1    # "returnValue":I
    :cond_0
    const/4 v1, 0x2

    .restart local v1    # "returnValue":I
    goto :goto_0

    .line 292
    .end local v1    # "returnValue":I
    :cond_1
    const/4 v1, 0x1

    .line 294
    .restart local v1    # "returnValue":I
    :goto_0
    return v1
.end method

.method public static getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 78
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "cache":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    return-object v0

    .line 82
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 83
    .local v1, "external":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    return-object v1

    .line 86
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot determine filesystem root for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getSaveFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .line 233
    nop

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpeedString(F)Ljava/lang/String;
    .locals 4
    .param p0, "bytesPerMillisecond"    # F

    .line 193
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v2, v2, p0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%.2f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeRemaining(J)Ljava/lang/String;
    .locals 4
    .param p0, "durationInMilliseconds"    # J

    .line 199
    const-wide/32 v0, 0x36ee80

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    .line 200
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 202
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 204
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, p0, v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isExternalMediaMounted()Z
    .locals 2

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isFilenameValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 117
    const-string v0, "/+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 119
    :goto_1
    return v0
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "contentDisposition"    # Ljava/lang/String;

    .line 63
    :try_start_0
    sget-object v0, Lcom/google/android/vending/expansion/downloader/Helpers;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 71
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
