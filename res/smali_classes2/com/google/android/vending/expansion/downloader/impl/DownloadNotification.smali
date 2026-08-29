.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"

# interfaces
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;


# static fields
.field static final LOGTAG:Ljava/lang/String; = "DownloadNotification"

.field static final NOTIFICATION_ID:I


# instance fields
.field private mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private mBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private mCurrentText:Ljava/lang/String;

.field private mCurrentTitle:Ljava/lang/CharSequence;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-string v0, "DownloadNotification"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->NOTIFICATION_ID:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "applicationLabel"    # Ljava/lang/CharSequence;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    .line 207
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    .line 209
    nop

    .line 210
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 211
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 212
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 216
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 217
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "progress"

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 219
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 220
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 222
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 223
    return-void
.end method


# virtual methods
.method public getClientIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 7
    .param p1, "progress"    # Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .line 159
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    .line 160
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 163
    :cond_0
    iget-wide v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    const-wide/16 v2, 0x0

    const v4, 0x1080081

    cmp-long v5, v0, v2

    if-gtz v5, :cond_1

    .line 165
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 166
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 167
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 168
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 169
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    long-to-int v2, v1

    iget-wide v5, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    long-to-int v1, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 172
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-wide v1, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    iget-wide v5, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    invoke-static {v1, v2, v5, v6}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloadProgressString(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 173
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 174
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 175
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 176
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    sget v2, Lorg/godotengine/godot/R$string;->time_remaining_notification:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    .line 177
    invoke-static {v5, v6}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 176
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 178
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->NOTIFICATION_ID:I

    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 181
    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 7
    .param p1, "newState"    # I

    .line 84
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    .line 87
    :cond_0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    if-eq p1, v0, :cond_4

    .line 88
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    .line 89
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 97
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 135
    :pswitch_0
    const v1, 0x108008a

    .line 136
    .local v1, "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 137
    .local v2, "stringDownloadID":I
    const/4 v3, 0x1

    .local v3, "ongoingEvent":Z
    goto :goto_0

    .line 129
    .end local v1    # "iconResource":I
    .end local v2    # "stringDownloadID":I
    .end local v3    # "ongoingEvent":Z
    :pswitch_1
    const v1, 0x108008a

    .line 130
    .restart local v1    # "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 131
    .restart local v2    # "stringDownloadID":I
    const/4 v3, 0x0

    .line 132
    .restart local v3    # "ongoingEvent":Z
    goto :goto_0

    .line 119
    .end local v1    # "iconResource":I
    .end local v2    # "stringDownloadID":I
    .end local v3    # "ongoingEvent":Z
    :pswitch_2
    const v1, 0x1080082

    .line 120
    .restart local v1    # "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 121
    .restart local v2    # "stringDownloadID":I
    const/4 v3, 0x0

    .line 122
    .restart local v3    # "ongoingEvent":Z
    goto :goto_0

    .line 105
    .end local v1    # "iconResource":I
    .end local v2    # "stringDownloadID":I
    .end local v3    # "ongoingEvent":Z
    :pswitch_3
    const v1, 0x1080081

    .line 106
    .restart local v1    # "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 107
    .restart local v2    # "stringDownloadID":I
    const/4 v3, 0x1

    .line 108
    .restart local v3    # "ongoingEvent":Z
    goto :goto_0

    .line 112
    .end local v1    # "iconResource":I
    .end local v2    # "stringDownloadID":I
    .end local v3    # "ongoingEvent":Z
    :pswitch_4
    const v1, 0x1080082

    .line 113
    .restart local v1    # "iconResource":I
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/Helpers;->getDownloaderStringResourceIDFromState(I)I

    move-result v2

    .line 114
    .restart local v2    # "stringDownloadID":I
    const/4 v3, 0x1

    .line 115
    .restart local v3    # "ongoingEvent":Z
    goto :goto_0

    .line 99
    .end local v1    # "iconResource":I
    .end local v2    # "stringDownloadID":I
    .end local v3    # "ongoingEvent":Z
    :pswitch_5
    const v1, 0x108008a

    .line 100
    .restart local v1    # "iconResource":I
    sget v2, Lorg/godotengine/godot/R$string;->state_unknown:I

    .line 101
    .restart local v2    # "stringDownloadID":I
    const/4 v3, 0x0

    .line 102
    .restart local v3    # "ongoingEvent":Z
    nop

    .line 141
    :goto_0
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentText:Ljava/lang/String;

    .line 142
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentTitle:Ljava/lang/CharSequence;

    .line 143
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 144
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 145
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 146
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 147
    if-eqz v3, :cond_2

    .line 148
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 150
    :cond_2
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 151
    iget-object v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget v4, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->NOTIFICATION_ID:I

    iget-object v5, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mCurrentBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    .line 90
    .end local v1    # "iconResource":I
    .end local v2    # "stringDownloadID":I
    .end local v3    # "ongoingEvent":Z
    :cond_3
    :goto_2
    return-void

    .line 155
    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Messenger;

    .line 227
    return-void
.end method

.method public resendState()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    if-eqz v0, :cond_0

    .line 78
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public setClientIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "clientIntent"    # Landroid/app/PendingIntent;

    .line 71
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 72
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mActiveDownloadBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mContentIntent:Landroid/app/PendingIntent;

    .line 74
    return-void
.end method

.method public setMessenger(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Messenger;

    .line 190
    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    .line 191
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mProgressInfo:Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;

    if-eqz v1, :cond_0

    .line 192
    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V

    .line 194
    :cond_0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadNotification;->mClientProxy:Lcom/google/android/vending/expansion/downloader/IDownloaderClient;

    invoke-interface {v1, v0}, Lcom/google/android/vending/expansion/downloader/IDownloaderClient;->onDownloadStateChanged(I)V

    .line 197
    :cond_1
    return-void
.end method
