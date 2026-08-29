.class public Lorg/godotengine/godot/GodotIO;
.super Ljava/lang/Object;
.source "GodotIO.java"


# static fields
.field public static final SYSTEM_DIR_DCIM:I = 0x1

.field public static final SYSTEM_DIR_DESKTOP:I = 0x0

.field public static final SYSTEM_DIR_DOCUMENTS:I = 0x2

.field public static final SYSTEM_DIR_DOWNLOADS:I = 0x3

.field public static final SYSTEM_DIR_MOVIES:I = 0x4

.field public static final SYSTEM_DIR_MUSIC:I = 0x5

.field public static final SYSTEM_DIR_PICTURES:I = 0x6

.field public static final SYSTEM_DIR_RINGTONES:I = 0x7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final SCREEN_LANDSCAPE:I

.field final SCREEN_PORTRAIT:I

.field final SCREEN_REVERSE_LANDSCAPE:I

.field final SCREEN_REVERSE_PORTRAIT:I

.field final SCREEN_SENSOR:I

.field final SCREEN_SENSOR_LANDSCAPE:I

.field final SCREEN_SENSOR_PORTRAIT:I

.field private final activity:Landroid/app/Activity;

.field edit:Lorg/godotengine/godot/input/GodotEditText;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lorg/godotengine/godot/GodotIO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/godotengine/godot/GodotIO;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "p_activity"    # Landroid/app/Activity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_LANDSCAPE:I

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_PORTRAIT:I

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_REVERSE_LANDSCAPE:I

    .line 69
    const/4 v0, 0x3

    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_REVERSE_PORTRAIT:I

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_SENSOR_LANDSCAPE:I

    .line 71
    const/4 v0, 0x5

    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_SENSOR_PORTRAIT:I

    .line 72
    const/4 v0, 0x6

    iput v0, p0, Lorg/godotengine/godot/GodotIO;->SCREEN_SENSOR:I

    .line 75
    iput-object p1, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "androidId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 79
    const-string v0, ""

    .line 82
    :cond_0
    iput-object v0, p0, Lorg/godotengine/godot/GodotIO;->uniqueId:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayCutouts()[I
    .locals 9

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 213
    new-array v0, v2, [I

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 215
    .local v0, "cutout":Landroid/view/DisplayCutout;
    if-nez v0, :cond_1

    .line 216
    new-array v1, v2, [I

    return-object v1

    .line 217
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v1

    .line 218
    .local v1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 219
    .local v2, "cutouts":I
    mul-int/lit8 v3, v2, 0x4

    new-array v3, v3, [I

    .line 220
    .local v3, "result":[I
    const/4 v4, 0x0

    .line 221
    .local v4, "index":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 222
    .local v6, "rect":Landroid/graphics/Rect;
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "index":I
    .local v7, "index":I
    iget v8, v6, Landroid/graphics/Rect;->left:I

    aput v8, v3, v4

    .line 223
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "index":I
    .restart local v4    # "index":I
    iget v8, v6, Landroid/graphics/Rect;->top:I

    aput v8, v3, v7

    .line 224
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "index":I
    .restart local v7    # "index":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    aput v8, v3, v4

    .line 225
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    aput v8, v3, v7

    .line 226
    .end local v6    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 227
    :cond_2
    return-object v3
.end method

.method public getDisplaySafeArea()[I
    .locals 9

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 193
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 195
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    .line 196
    .local v1, "result":[I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 197
    iget-object v2, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 198
    .local v2, "insets":Landroid/view/WindowInsets;
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    .line 199
    .local v3, "cutout":Landroid/view/DisplayCutout;
    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    .line 201
    .local v4, "insetLeft":I
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    .line 202
    .local v5, "insetTop":I
    const/4 v6, 0x0

    aput v4, v1, v6

    .line 203
    const/4 v6, 0x1

    aput v5, v1, v6

    .line 204
    const/4 v6, 0x2

    aget v7, v1, v6

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v8

    add-int/2addr v8, v4

    sub-int/2addr v7, v8

    aput v7, v1, v6

    .line 205
    const/4 v6, 0x3

    aget v7, v1, v6

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v8

    add-int/2addr v8, v5

    sub-int/2addr v7, v8

    aput v7, v1, v6

    .line 208
    .end local v2    # "insets":Landroid/view/WindowInsets;
    .end local v3    # "cutout":Landroid/view/DisplayCutout;
    .end local v4    # "insetLeft":I
    .end local v5    # "insetTop":I
    :cond_0
    return-object v1
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 154
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getScaledDensity()F
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 167
    .local v0, "densityDpi":I
    const/16 v1, 0x280

    if-lt v0, v1, :cond_0

    .line 168
    const/high16 v1, 0x40800000    # 4.0f

    .local v1, "selectedScaledDensity":F
    goto :goto_0

    .line 169
    .end local v1    # "selectedScaledDensity":F
    :cond_0
    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_1

    .line 170
    const/high16 v1, 0x40400000    # 3.0f

    .restart local v1    # "selectedScaledDensity":F
    goto :goto_0

    .line 171
    .end local v1    # "selectedScaledDensity":F
    :cond_1
    const/16 v1, 0x140

    if-lt v0, v1, :cond_2

    .line 172
    const/high16 v1, 0x40000000    # 2.0f

    .restart local v1    # "selectedScaledDensity":F
    goto :goto_0

    .line 173
    .end local v1    # "selectedScaledDensity":F
    :cond_2
    const/16 v1, 0xf0

    if-lt v0, v1, :cond_3

    .line 174
    const/high16 v1, 0x3fc00000    # 1.5f

    .restart local v1    # "selectedScaledDensity":F
    goto :goto_0

    .line 175
    .end local v1    # "selectedScaledDensity":F
    :cond_3
    const/16 v1, 0xa0

    if-lt v0, v1, :cond_4

    .line 176
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "selectedScaledDensity":F
    goto :goto_0

    .line 178
    .end local v1    # "selectedScaledDensity":F
    :cond_4
    const/high16 v1, 0x3f400000    # 0.75f

    .line 180
    .restart local v1    # "selectedScaledDensity":F
    :goto_0
    return v1
.end method

.method public getScreenDPI()I
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public getScreenOrientation()I
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    .line 280
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 305
    :pswitch_0
    const/4 v1, -0x1

    return v1

    .line 288
    :pswitch_1
    const/4 v1, 0x3

    return v1

    .line 286
    :pswitch_2
    const/4 v1, 0x2

    return v1

    .line 294
    :pswitch_3
    const/4 v1, 0x5

    return v1

    .line 291
    :pswitch_4
    const/4 v1, 0x4

    return v1

    .line 298
    :pswitch_5
    const/4 v1, 0x6

    return v1

    .line 284
    :pswitch_6
    const/4 v1, 0x1

    return v1

    .line 282
    :pswitch_7
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getScreenRefreshRate(D)D
    .locals 3
    .param p1, "fallback"    # D

    .line 184
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 185
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    float-to-double v1, v1

    return-wide v1

    .line 188
    :cond_0
    return-wide p1
.end method

.method public getSystemDir(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "idx"    # I
    .param p2, "shared_storage"    # Z

    .line 324
    packed-switch p1, :pswitch_data_0

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "what":Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v0    # "what":Ljava/lang/String;
    :pswitch_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .restart local v0    # "what":Ljava/lang/String;
    goto :goto_0

    .line 351
    .end local v0    # "what":Ljava/lang/String;
    :pswitch_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 352
    .restart local v0    # "what":Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v0    # "what":Ljava/lang/String;
    :pswitch_2
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 348
    .restart local v0    # "what":Ljava/lang/String;
    goto :goto_0

    .line 343
    .end local v0    # "what":Ljava/lang/String;
    :pswitch_3
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 344
    .restart local v0    # "what":Ljava/lang/String;
    goto :goto_0

    .line 339
    .end local v0    # "what":Ljava/lang/String;
    :pswitch_4
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 340
    .restart local v0    # "what":Ljava/lang/String;
    goto :goto_0

    .line 335
    .end local v0    # "what":Ljava/lang/String;
    :pswitch_5
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 336
    .restart local v0    # "what":Ljava/lang/String;
    goto :goto_0

    .line 331
    .end local v0    # "what":Ljava/lang/String;
    :pswitch_6
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 332
    .restart local v0    # "what":Ljava/lang/String;
    nop

    .line 359
    :goto_0
    if-eqz p2, :cond_2

    .line 360
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 361
    sget-object v1, Lorg/godotengine/godot/GodotIO;->TAG:Ljava/lang/String;

    const-string v2, "Shared storage access is limited on Android 10 and higher."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 366
    :cond_1
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 369
    :cond_2
    iget-object v1, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTempDir()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/godotengine/godot/GodotIO;->getCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "tempDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    sget-object v1, Lorg/godotengine/godot/GodotIO;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create temp dir"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hasHardwareKeyboard()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->edit:Lorg/godotengine/godot/input/GodotEditText;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->hasHardwareKeyboard()Z

    move-result v0

    return v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->edit:Lorg/godotengine/godot/input/GodotEditText;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lorg/godotengine/godot/input/GodotEditText;->hideKeyboard()V

    .line 250
    :cond_0
    return-void
.end method

.method public openURI(Ljava/lang/String;)I
    .locals 7
    .param p1, "uriString"    # Ljava/lang/String;

    .line 92
    const-string v0, ""

    move-object v1, v0

    .line 93
    .local v1, "dataType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 95
    .local v2, "grantReadUriPermission":Z
    :try_start_0
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "file://"

    if-nez v3, :cond_1

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "dataUri":Landroid/net/Uri;
    goto :goto_1

    .line 96
    .end local v0    # "dataUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    move-object v3, p1

    .line 98
    .local v3, "filePath":Ljava/lang/String;
    const/4 v2, 0x1

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 103
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "targetFile":Ljava/io/File;
    iget-object v4, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".fileprovider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 105
    .local v4, "dataUri":Landroid/net/Uri;
    iget-object v5, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 106
    .end local v0    # "targetFile":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    move-object v0, v4

    .line 110
    .end local v4    # "dataUri":Landroid/net/Uri;
    .local v0, "dataUri":Landroid/net/Uri;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :goto_2
    if-eqz v2, :cond_4

    .line 118
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    :cond_4
    iget-object v4, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    sget-object v4, Lorg/godotengine/godot/error/Error;->OK:Lorg/godotengine/godot/error/Error;

    invoke-virtual {v4}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v4

    .line 123
    .end local v0    # "dataUri":Landroid/net/Uri;
    .end local v1    # "dataType":Ljava/lang/String;
    .end local v2    # "grantReadUriPermission":Z
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/godotengine/godot/GodotIO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    sget-object v1, Lorg/godotengine/godot/error/Error;->FAILED:Lorg/godotengine/godot/error/Error;

    invoke-virtual {v1}, Lorg/godotengine/godot/error/Error;->toNativeValue()I

    move-result v1

    return v1
.end method

.method public setEdit(Lorg/godotengine/godot/input/GodotEditText;)V
    .locals 0
    .param p1, "_edit"    # Lorg/godotengine/godot/input/GodotEditText;

    .line 310
    iput-object p1, p0, Lorg/godotengine/godot/GodotIO;->edit:Lorg/godotengine/godot/input/GodotEditText;

    .line 311
    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 2
    .param p1, "p_orientation"    # I

    .line 253
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 271
    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 268
    goto :goto_0

    .line 264
    :pswitch_3
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 265
    goto :goto_0

    .line 261
    :pswitch_4
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 262
    goto :goto_0

    .line 258
    :pswitch_5
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 259
    goto :goto_0

    .line 255
    :pswitch_6
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 256
    nop

    .line 276
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showKeyboard(Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "p_existing_text"    # Ljava/lang/String;
    .param p2, "p_type"    # I
    .param p3, "p_max_input_length"    # I
    .param p4, "p_cursor_start"    # I
    .param p5, "p_cursor_end"    # I

    .line 239
    iget-object v0, p0, Lorg/godotengine/godot/GodotIO;->edit:Lorg/godotengine/godot/input/GodotEditText;

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->values()[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    move-result-object v1

    aget-object v2, v1, p2

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/godotengine/godot/input/GodotEditText;->showKeyboard(Ljava/lang/String;Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;III)V

    .line 245
    :cond_0
    return-void
.end method
