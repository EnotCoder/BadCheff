.class public final Lorg/godotengine/godot/utils/PermissionsUtil;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"


# static fields
.field public static final REQUEST_ALL_PERMISSION_REQ_CODE:I = 0x3e9

.field public static final REQUEST_CAMERA_PERMISSION:I = 0x2

.field public static final REQUEST_INSTALL_PACKAGES_REQ_CODE:I = 0xbba

.field public static final REQUEST_MANAGE_EXTERNAL_STORAGE_REQ_CODE:I = 0x7d2

.field public static final REQUEST_RECORD_AUDIO_PERMISSION:I = 0x1

.field public static final REQUEST_SINGLE_PERMISSION_REQ_CODE:I = 0x3ea

.field public static final REQUEST_VIBRATE_PERMISSION:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lorg/godotengine/godot/utils/PermissionsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/utils/PermissionsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static getGrantedPermissions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 237
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/godotengine/godot/utils/PermissionsUtil;->getManifestPermissions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .local v1, "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 242
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 246
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v2, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 249
    .local v4, "manifestPermission":Ljava/lang/String;
    :try_start_1
    const-string v5, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 254
    :cond_1
    invoke-static {p0, v4}, Lorg/godotengine/godot/utils/PermissionsUtil;->getPermissionInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 255
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v6

    goto :goto_1

    :cond_2
    iget v6, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 256
    .local v6, "protectionLevel":I
    :goto_1
    and-int/lit8 v7, v6, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 257
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "protectionLevel":I
    :cond_3
    :goto_2
    goto :goto_3

    .line 260
    :catch_0
    move-exception v5

    .line 262
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lorg/godotengine/godot/utils/PermissionsUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to identify permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v4    # "manifestPermission":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    goto :goto_0

    .line 266
    :cond_4
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 238
    .end local v1    # "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 239
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lorg/godotengine/godot/utils/PermissionsUtil;->TAG:Ljava/lang/String;

    const-string v3, "Unable to retrieve manifest permissions"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getManifestPermissions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 296
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 297
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 300
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method private static getPermissionInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 312
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    return-object v1
.end method

.method public static hasManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 277
    :try_start_0
    invoke-static {p0}, Lorg/godotengine/godot/utils/PermissionsUtil;->getManifestPermissions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    .local v1, "p":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 279
    const/4 v0, 0x1

    return v0

    .line 281
    .end local v1    # "p":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 283
    :cond_1
    goto :goto_1

    .line 282
    :catch_0
    move-exception v0

    .line 285
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static requestManifestPermissions(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 190
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/godotengine/godot/utils/PermissionsUtil;->requestManifestPermissions(Landroid/app/Activity;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static requestManifestPermissions(Landroid/app/Activity;Ljava/util/Set;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 200
    .local p1, "excludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 201
    return v0

    .line 204
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 205
    return v3

    .line 210
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/godotengine/godot/utils/PermissionsUtil;->getManifestPermissions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v0, "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 216
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    return v3

    .line 220
    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 221
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "excludedPermission":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    .end local v2    # "excludedPermission":Ljava/lang/String;
    goto :goto_0

    .line 226
    :cond_3
    invoke-static {p0, v0}, Lorg/godotengine/godot/utils/PermissionsUtil;->requestPermissions(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v1

    return v1

    .line 211
    .end local v0    # "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lorg/godotengine/godot/utils/PermissionsUtil;->TAG:Ljava/lang/String;

    const-string v3, "Unable to retrieve manifest permissions"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    return v0
.end method

.method public static requestPermission(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4
    .param p0, "permissionName"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 153
    return v1

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v0, "CAMERA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v0, "VIBRATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "RECORD_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 175
    move-object v0, p0

    .line 176
    .local v0, "updatedPermissionName":Ljava/lang/String;
    const/16 v1, 0x3ea

    .local v1, "requestCode":I
    goto :goto_2

    .line 170
    .end local v0    # "updatedPermissionName":Ljava/lang/String;
    .end local v1    # "requestCode":I
    :pswitch_0
    const-string v0, "android.permission.VIBRATE"

    .line 171
    .restart local v0    # "updatedPermissionName":Ljava/lang/String;
    const/4 v1, 0x3

    .line 172
    .restart local v1    # "requestCode":I
    goto :goto_2

    .line 165
    .end local v0    # "updatedPermissionName":Ljava/lang/String;
    .end local v1    # "requestCode":I
    :pswitch_1
    const-string v0, "android.permission.CAMERA"

    .line 166
    .restart local v0    # "updatedPermissionName":Ljava/lang/String;
    const/4 v1, 0x2

    .line 167
    .restart local v1    # "requestCode":I
    goto :goto_2

    .line 160
    .end local v0    # "updatedPermissionName":Ljava/lang/String;
    .end local v1    # "requestCode":I
    :pswitch_2
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 161
    .restart local v0    # "updatedPermissionName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 162
    .restart local v1    # "requestCode":I
    nop

    .line 180
    :goto_2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, v2, v1}, Lorg/godotengine/godot/utils/PermissionsUtil;->requestPermissions(Landroid/app/Activity;Ljava/util/List;I)Z

    move-result v3

    return v3

    :sswitch_data_0
    .sparse-switch
        0x42022648 -> :sswitch_2
        0x45b2014f -> :sswitch_1
        0x760cb725 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static requestPermissions(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 82
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e9

    invoke-static {p0, p1, v0}, Lorg/godotengine/godot/utils/PermissionsUtil;->requestPermissions(Landroid/app/Activity;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method private static requestPermissions(Landroid/app/Activity;Ljava/util/List;I)Z
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 86
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 90
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 92
    return v0

    .line 95
    :cond_1
    const/4 v1, 0x0

    .line 96
    .local v1, "dispatchedPermissionsRequest":Z
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 97
    .local v2, "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    .local v4, "permission":Ljava/lang/String;
    :try_start_0
    const-string v6, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, "package:%s"

    const-string v8, "Requesting permission "

    if-eqz v6, :cond_2

    .line 100
    :try_start_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1e

    if-lt v6, v9, :cond_5

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v6

    if-nez v6, :cond_5

    .line 101
    sget-object v6, Lorg/godotengine/godot/utils/PermissionsUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 103
    const/16 v6, 0x7d2

    :try_start_2
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v8, "intent":Landroid/content/Intent;
    new-array v9, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v8, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    .end local v8    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 106
    :catch_0
    move-exception v5

    .line 107
    .local v5, "ignored":Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    .end local v5    # "ignored":Ljava/lang/Exception;
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 112
    :cond_2
    const-string v6, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v6, v8, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v6
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v6, :cond_5

    .line 115
    :try_start_4
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, "intent":Landroid/content/Intent;
    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    const/16 v5, 0xbba

    invoke-virtual {p0, v6, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 118
    const/4 v1, 0x1

    .line 121
    .end local v6    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 119
    :catch_1
    move-exception v5

    .line 120
    .local v5, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v6, Lorg/godotengine/godot/utils/PermissionsUtil;->TAG:Ljava/lang/String;

    const-string v7, "Unable to request permission android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 124
    :cond_3
    invoke-static {p0, v4}, Lorg/godotengine/godot/utils/PermissionsUtil;->getPermissionInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v5

    .line 125
    .local v5, "permissionInfo":Landroid/content/pm/PermissionInfo;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_4

    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v6

    goto :goto_2

    :cond_4
    iget v6, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 126
    .local v6, "protectionLevel":I
    :goto_2
    and-int/lit8 v7, v6, 0x1

    if-ne v7, v0, :cond_5

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_5

    .line 127
    sget-object v7, Lorg/godotengine/godot/utils/PermissionsUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 134
    .end local v5    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v6    # "protectionLevel":I
    :cond_5
    :goto_3
    goto :goto_4

    .line 131
    :catch_2
    move-exception v5

    .line 133
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lorg/godotengine/godot/utils/PermissionsUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to identify permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    goto/16 :goto_0

    .line 137
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 139
    const/4 v1, 0x1

    .line 142
    :cond_7
    xor-int/lit8 v0, v1, 0x1

    return v0

    .line 87
    .end local v1    # "dispatchedPermissionsRequest":Z
    .end local v2    # "requestedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_8
    :goto_5
    return v0
.end method
