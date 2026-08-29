.class Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;
.super Ljava/lang/Object;
.source "DownloaderService.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

.field final synthetic val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;


# direct methods
.method constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 773
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 17
    .param p1, "reason"    # I

    .line 778
    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURLCount()I

    move-result v0

    move v3, v0

    .line 779
    .local v3, "count":I
    iget-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    .line 780
    .local v10, "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    const/4 v0, 0x0

    .line 781
    .local v0, "status":I
    const-string v11, "LVLDL"

    if-eqz v3, :cond_4

    .line 782
    const/4 v4, 0x0

    move v12, v4

    .local v12, "i":I
    :goto_0
    if-ge v12, v3, :cond_3

    .line 783
    :try_start_1
    iget-object v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    .line 784
    invoke-virtual {v4, v12}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 785
    .local v13, "currentFileName":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 786
    new-instance v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    iget-object v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    .line 787
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v12, v13, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v14, v4

    .line 789
    .local v14, "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    iget-object v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v4, v12}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileSize(I)J

    move-result-wide v4

    move-wide v8, v4

    .line 790
    .local v8, "fileSize":J
    iget-object v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v4, v4, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    move-object v5, v10

    move v6, v12

    move-object v7, v13

    move-wide v15, v8

    .end local v8    # "fileSize":J
    .local v15, "fileSize":J
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->handleFileUpdated(Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;ILjava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 792
    or-int/lit8 v0, v0, -0x1

    .line 793
    invoke-virtual {v14}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->resetDownload()V

    .line 794
    iget-object v4, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v4, v12}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 795
    move-wide v4, v15

    .end local v15    # "fileSize":J
    .local v4, "fileSize":J
    iput-wide v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    .line 796
    iput v0, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 797
    invoke-virtual {v10, v14}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    goto :goto_1

    .line 803
    .end local v4    # "fileSize":J
    .restart local v15    # "fileSize":J
    :cond_0
    move-wide v4, v15

    .end local v15    # "fileSize":J
    .restart local v4    # "fileSize":J
    iget-object v6, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 804
    invoke-virtual {v10, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    move-result-object v6

    .line 805
    .local v6, "dbdi":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    const/16 v7, 0xc8

    if-nez v6, :cond_1

    .line 812
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " found. Not downloading."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iput v7, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    .line 815
    iput-wide v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    .line 816
    iput-wide v4, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    .line 817
    iget-object v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v7, v12}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 818
    invoke-virtual {v10, v14}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z

    goto :goto_1

    .line 819
    :cond_1
    iget v8, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    if-eq v8, v7, :cond_2

    .line 821
    iget-object v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v7, v12}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    .line 822
    invoke-virtual {v10, v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    or-int/lit8 v0, v0, -0x1

    .line 782
    .end local v4    # "fileSize":J
    .end local v6    # "dbdi":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .end local v13    # "currentFileName":Ljava/lang/String;
    .end local v14    # "di":Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_3
    move v4, v0

    goto :goto_2

    .line 781
    .end local v12    # "i":I
    :cond_4
    move v4, v0

    .line 834
    .end local v0    # "status":I
    .local v4, "status":I
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v0, v0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    .line 835
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 834
    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 836
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v5, v4}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(II)Z

    .line 837
    iget-object v5, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v5, v5, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 838
    .local v5, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v6, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v7, v7, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$fgetmPendingIntent(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_3

    .line 846
    :pswitch_0
    const-string v6, "In LVL checking loop!"

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v6, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$fgetmNotification(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v6

    .line 848
    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 849
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Error with LVL checking and database integrity"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v3    # "count":I
    .end local v4    # "status":I
    .end local v10    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .end local p1    # "reason":I
    throw v6

    .line 841
    .restart local v3    # "count":I
    .restart local v4    # "status":I
    .restart local v10    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .restart local p1    # "reason":I
    :pswitch_1
    iget-object v6, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v6, v6, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v6}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$fgetmNotification(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v6

    .line 842
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 843
    nop

    .line 861
    .end local v5    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    nop

    .line 863
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "count":I
    .end local v4    # "status":I
    .end local v10    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$smsetServiceRunning(Z)V

    .line 864
    nop

    .line 865
    return-void

    .line 857
    .restart local v3    # "count":I
    .restart local v4    # "status":I
    .restart local v10    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 859
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error with getting information from package name"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "reason":I
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 863
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "count":I
    .end local v4    # "status":I
    .end local v10    # "db":Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .restart local p1    # "reason":I
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$smsetServiceRunning(Z)V

    .line 864
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public applicationError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .line 890
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$fgetmNotification(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v1

    .line 891
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$smsetServiceRunning(Z)V

    .line 894
    nop

    .line 895
    return-void

    .line 893
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$smsetServiceRunning(Z)V

    .line 894
    throw v1
.end method

.method public dontAllow(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 871
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 873
    :sswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$fgetmNotification(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v1

    .line 874
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V

    .line 875
    goto :goto_0

    .line 877
    :sswitch_1
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable$1;->this$1:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;

    iget-object v1, v1, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService$LVLRunnable;->this$0:Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;

    invoke-static {v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$fgetmNotification(Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;)Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;

    move-result-object v1

    .line 878
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->onDownloadStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 882
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$smsetServiceRunning(Z)V

    .line 883
    throw v1

    .line 882
    :goto_0
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;->-$$Nest$smsetServiceRunning(Z)V

    .line 883
    nop

    .line 885
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x123 -> :sswitch_1
        0x231 -> :sswitch_0
    .end sparse-switch
.end method
