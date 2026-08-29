.class public final Lorg/godotengine/godot/io/FilePicker$Companion;
.super Ljava/lang/Object;
.source "FilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/FilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilePicker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePicker.kt\norg/godotengine/godot/io/FilePicker$Companion\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n26#2:198\n26#2:201\n37#3,2:199\n37#3,2:208\n11065#4:202\n11400#4,3:203\n288#5,2:206\n*S KotlinDebug\n*F\n+ 1 FilePicker.kt\norg/godotengine/godot/io/FilePicker$Companion\n*L\n76#1:198\n110#1:201\n108#1:199,2\n150#1:208,2\n147#1:202\n147#1:203,3\n148#1:206,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002JE\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00042\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u001eH\u0007\u00a2\u0006\u0002\u0010\u001fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lorg/godotengine/godot/io/FilePicker$Companion;",
        "",
        "()V",
        "FILE_MODE_OPEN_ANY",
        "",
        "FILE_MODE_OPEN_DIR",
        "FILE_MODE_OPEN_FILE",
        "FILE_MODE_OPEN_FILES",
        "FILE_MODE_SAVE_FILE",
        "FILE_PICKER_REQUEST",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "handleActivityResult",
        "",
        "context",
        "Landroid/content/Context;",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "resolveMimeType",
        "ext",
        "showFilePicker",
        "activity",
        "Landroid/app/Activity;",
        "currentDirectory",
        "filename",
        "fileMode",
        "filters",
        "",
        "(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V",
        "lib_templateDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/godotengine/godot/io/FilePicker$Companion;-><init>()V

    return-void
.end method

.method private final resolveMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "ext"    # Ljava/lang/String;

    .line 165
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 166
    .local v0, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    move-object v1, p1

    .line 169
    .local v1, "input":Ljava/lang/String;
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "."

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "."

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v2

    .line 174
    :cond_0
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    return-object v1

    .line 178
    :cond_1
    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "resolvedMimeType":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 180
    return-object v2

    .line 183
    :cond_2
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v7, "/*"

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v3, v8, v4, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    const-string v4, "application/octet-stream"

    if-eqz v3, :cond_6

    .line 184
    invoke-static {v1, v7, v6, v5, v6}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v5, "video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 187
    :cond_3
    const-string v4, "video/*"

    goto :goto_2

    .line 185
    :sswitch_1
    const-string v5, "image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 186
    :cond_4
    const-string v4, "image/*"

    goto :goto_2

    .line 185
    :sswitch_2
    const-string v5, "audio"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 188
    :cond_5
    const-string v4, "audio/*"

    goto :goto_2

    .line 189
    :goto_1
    nop

    .line 185
    :goto_2
    return-object v4

    .line 193
    .end local v3    # "category":Ljava/lang/String;
    :cond_6
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x58d9bd6 -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final handleActivityResult(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const/16 v2, 0x3e8

    move/from16 v3, p2

    if-ne v3, v2, :cond_9

    .line 74
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 75
    invoke-static {}, Lorg/godotengine/godot/io/FilePicker;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v4

    const-string v5, "File picker canceled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v4, 0x0

    .line 198
    .local v4, "$i$f$emptyArray":I
    new-array v4, v2, [Ljava/lang/String;

    .line 76
    .end local v4    # "$i$f$emptyArray":I
    invoke-static {v2, v4}, Lorg/godotengine/godot/GodotLib;->filePickerCallback(Z[Ljava/lang/String;)V

    .line 77
    return-void

    .line 79
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_9

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 82
    .local v4, "selectedPaths":Ljava/util/List;
    const/4 v5, 0x0

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 83
    .local v6, "clipData":Landroid/content/ClipData;
    :goto_0
    const-string v7, "null filepath URI: "

    if-eqz v6, :cond_4

    .line 84
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v8

    :goto_1
    if-ge v5, v8, :cond_7

    .line 85
    invoke-virtual {v6, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 86
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_3

    move-object v10, v9

    .local v10, "it":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 87
    .local v11, "$i$a$-let-FilePicker$Companion$handleActivityResult$1":I
    sget-object v12, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    invoke-virtual {v12, v0, v9}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, "filepath":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 89
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    :cond_2
    invoke-static {}, Lorg/godotengine/godot/io/FilePicker;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_2
    nop

    .line 86
    .end local v10    # "it":Landroid/net/Uri;
    .end local v11    # "$i$a$-let-FilePicker$Companion$handleActivityResult$1":I
    .end local v12    # "filepath":Ljava/lang/String;
    nop

    .line 84
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    .end local v5    # "i":I
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 97
    .local v5, "uri":Landroid/net/Uri;
    :cond_5
    if-eqz v5, :cond_7

    move-object v8, v5

    .local v8, "it":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 98
    .local v9, "$i$a$-let-FilePicker$Companion$handleActivityResult$2":I
    sget-object v10, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    invoke-virtual {v10, v0, v5}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "filepath":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 100
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 102
    :cond_6
    invoke-static {}, Lorg/godotengine/godot/io/FilePicker;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_3
    nop

    .line 97
    .end local v8    # "it":Landroid/net/Uri;
    .end local v9    # "$i$a$-let-FilePicker$Companion$handleActivityResult$2":I
    .end local v10    # "filepath":Ljava/lang/String;
    nop

    .line 107
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_7
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v7, 0x1

    xor-int/2addr v5, v7

    if-eqz v5, :cond_8

    .line 108
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    .local v5, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 199
    .local v8, "$i$f$toTypedArray":I
    move-object v9, v5

    .line 200
    .local v9, "thisCollection$iv":Ljava/util/Collection;
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v5    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$toTypedArray":I
    .end local v9    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v2, [Ljava/lang/String;

    .line 108
    invoke-static {v7, v2}, Lorg/godotengine/godot/GodotLib;->filePickerCallback(Z[Ljava/lang/String;)V

    goto :goto_4

    .line 110
    :cond_8
    const/4 v5, 0x0

    .line 201
    .local v5, "$i$f$emptyArray":I
    new-array v5, v2, [Ljava/lang/String;

    .line 110
    .end local v5    # "$i$f$emptyArray":I
    invoke-static {v2, v5}, Lorg/godotengine/godot/GodotLib;->filePickerCallback(Z[Ljava/lang/String;)V

    .line 114
    .end local v4    # "selectedPaths":Ljava/util/List;
    .end local v6    # "clipData":Landroid/content/ClipData;
    :cond_9
    :goto_4
    return-void
.end method

.method public final showFilePicker(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "currentDirectory"    # Ljava/lang/String;
    .param p4, "filename"    # Ljava/lang/String;
    .param p5, "fileMode"    # I
    .param p6, "filters"    # [Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    const-string v5, "context"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "currentDirectory"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "filename"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "filters"

    move-object/from16 v6, p6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    packed-switch v4, :pswitch_data_0

    .line 132
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_1
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    :goto_0
    nop

    .line 134
    .local v5, "intent":Landroid/content/Intent;
    sget-object v7, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    invoke-virtual {v7, v0, v2}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->getUriFromDirectoryPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 135
    .local v7, "initialDirectory":Landroid/net/Uri;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_0

    if-eqz v7, :cond_0

    .line 136
    const-string v8, "android.provider.extra.INITIAL_URI"

    move-object v9, v7

    check-cast v9, Landroid/os/Parcelable;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 138
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/io/FilePicker;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Error cannot set initial directory"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_1
    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    .line 143
    :sswitch_0
    const-string v9, "android.intent.extra.TITLE"

    invoke-virtual {v5, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 141
    :sswitch_1
    const-string v9, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    :goto_2
    const/4 v9, 0x2

    if-eq v4, v9, :cond_6

    .line 147
    move-object/from16 v9, p6

    .local v9, "$this$map$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 202
    .local v10, "$i$f$map":I
    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v9

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v11, Ljava/util/Collection;

    .local v11, "destination$iv$iv":Ljava/util/Collection;
    move-object v12, v9

    .local v12, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v13, 0x0

    .line 203
    .local v13, "$i$f$mapTo":I
    array-length v14, v12

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_1

    aget-object v16, v12, v15

    .line 204
    .local v16, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v16

    .local v17, "it":Ljava/lang/String;
    const/16 v18, 0x0

    .line 147
    .local v18, "$i$a$-map-FilePicker$Companion$showFilePicker$resolvedFilters$1":I
    sget-object v8, Lorg/godotengine/godot/io/FilePicker;->Companion:Lorg/godotengine/godot/io/FilePicker$Companion;

    move-object/from16 v0, v17

    .end local v17    # "it":Ljava/lang/String;
    .local v0, "it":Ljava/lang/String;
    invoke-direct {v8, v0}, Lorg/godotengine/godot/io/FilePicker$Companion;->resolveMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .end local v0    # "it":Ljava/lang/String;
    .end local v18    # "$i$a$-map-FilePicker$Companion$showFilePicker$resolvedFilters$1":I
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v16    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    const/4 v8, 0x1

    goto :goto_3

    .line 205
    :cond_1
    nop

    .end local v11    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v13    # "$i$f$mapTo":I
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 202
    nop

    .end local v9    # "$this$map$iv":[Ljava/lang/Object;
    .end local v10    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 147
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "resolvedFilters":Ljava/util/List;
    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 206
    .local v9, "$i$f$firstOrNull":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    .local v12, "it":Ljava/lang/String;
    const/4 v13, 0x0

    .line 148
    .local v13, "$i$a$-firstOrNull-FilePicker$Companion$showFilePicker$1":I
    const-string v14, "application/octet-stream"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    const/4 v12, 0x1

    .line 206
    .end local v12    # "it":Ljava/lang/String;
    .end local v13    # "$i$a$-firstOrNull-FilePicker$Companion$showFilePicker$1":I
    xor-int/lit8 v13, v14, 0x1

    if-eqz v13, :cond_2

    goto :goto_4

    .line 207
    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v11, 0x0

    .line 148
    .end local v8    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$firstOrNull":I
    :goto_4
    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_4

    const-string v11, "*/*"

    :cond_4
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 150
    move-object v8, v0

    check-cast v8, Ljava/util/Collection;

    .local v8, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v9, 0x0

    .line 208
    .local v9, "$i$f$toTypedArray":I
    move-object v10, v8

    .line 209
    .local v10, "thisCollection$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v9    # "$i$f$toTypedArray":I
    .end local v10    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v8, [Ljava/lang/String;

    .line 150
    const-string v9, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    :cond_5
    const-string v8, "android.intent.category.OPENABLE"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    .end local v0    # "resolvedFilters":Ljava/util/List;
    :cond_6
    const-string v0, "android.intent.extra.LOCAL_ONLY"

    const/4 v8, 0x1

    invoke-virtual {v5, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    if-eqz v1, :cond_7

    const/16 v0, 0x3e8

    invoke-virtual {v1, v5, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 156
    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method
