.class Lcom/google/android/vending/expansion/downloader/SystemFacade;
.super Ljava/lang/Object;
.source "SystemFacade.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    .line 42
    nop

    .line 43
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    .line 44
    return-void
.end method


# virtual methods
.method public cancelAllNotifications()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 124
    return-void
.end method

.method public cancelNotification(J)V
    .locals 2
    .param p1, "id"    # J

    .line 119
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 120
    return-void
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveNetworkType()Ljava/lang/Integer;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    .line 52
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    const-string v2, "LVLDL"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v1

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 60
    .local v2, "activeInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 64
    return-object v1

    .line 66
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getMaxBytesOverMobile()Ljava/lang/Long;
    .locals 2

    .line 94
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedMaxBytesOverMobile()Ljava/lang/Long;
    .locals 2

    .line 98
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    .line 71
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    const-string v1, "LVLDL"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 73
    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v2

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 79
    .local v3, "info":Landroid/net/NetworkInfo;
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 80
    .local v5, "isMobile":Z
    :goto_0
    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    .line 81
    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 82
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    if-nez v6, :cond_2

    .line 83
    const-string v4, "couldn\'t get telephony manager"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v2

    .line 86
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v1, v2

    .line 90
    .local v1, "isRoaming":Z
    return v1
.end method

.method public postNotification(JLandroid/app/Notification;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "notification"    # Landroid/app/Notification;

    .line 115
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mNotificationManager:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 116
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public startThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method public userOwnsPackage(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/SystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
