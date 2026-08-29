.class Lorg/godotengine/godot/gl/EGLLogWrapper;
.super Ljava/lang/Object;
.source "EGLLogWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL11;


# instance fields
.field private mArgCount:I

.field mCheckError:Z

.field private mEgl10:Ljavax/microedition/khronos/egl/EGL10;

.field mLog:Ljava/io/Writer;

.field mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL;
    .param p2, "configFlags"    # I
    .param p3, "log"    # Ljava/io/Writer;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 45
    iput-object p3, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 46
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mLogArgumentNames:Z

    .line 48
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mCheckError:Z

    .line 50
    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 416
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .line 420
    invoke-direct {p0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 393
    iget v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    .line 394
    const-string v0, ", "

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 396
    :cond_0
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 399
    :cond_1
    invoke-direct {p0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljavax/microedition/khronos/egl/EGLContext;

    .line 434
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_0

    .line 435
    const-string v0, "EGL10.EGL_NO_CONTEXT"

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-direct {p0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 424
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 425
    const-string v0, "EGL10.EGL_DEFAULT_DISPLAY"

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_0
    sget-object v0, Lorg/godotengine/godot/gl/EGLLogWrapper;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne p2, v0, :cond_1

    .line 427
    const-string v0, "EGL10.EGL_NO_DISPLAY"

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-direct {p0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .line 442
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v0, :cond_0

    .line 443
    const-string v0, "EGL10.EGL_NO_SURFACE"

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_0
    invoke-direct {p0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arr"    # [I

    .line 475
    if-nez p2, :cond_0

    .line 476
    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arr"    # [Ljava/lang/Object;

    .line 483
    if-nez p2, :cond_0

    .line 484
    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mArgCount:I

    .line 390
    return-void
.end method

.method private checkError()V
    .locals 3

    .line 366
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    move v1, v0

    .local v1, "eglError":I
    const/16 v2, 0x3000

    if-eq v0, v2, :cond_1

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 369
    iget-boolean v2, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mCheckError:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v1, v0}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 373
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private end()V
    .locals 1

    .line 403
    const-string v0, ");\n"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->flush()V

    .line 405
    return-void
.end method

.method private flush()V
    .locals 2

    .line 409
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 413
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .line 531
    packed-switch p0, :pswitch_data_0

    .line 563
    invoke-static {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 561
    :pswitch_0
    const-string v0, "EGL_CONTEXT_LOST"

    return-object v0

    .line 559
    :pswitch_1
    const-string v0, "EGL_BAD_SURFACE"

    return-object v0

    .line 557
    :pswitch_2
    const-string v0, "EGL_BAD_PARAMETER"

    return-object v0

    .line 555
    :pswitch_3
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    return-object v0

    .line 553
    :pswitch_4
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    return-object v0

    .line 551
    :pswitch_5
    const-string v0, "EGL_BAD_MATCH"

    return-object v0

    .line 549
    :pswitch_6
    const-string v0, "EGL_BAD_DISPLAY"

    return-object v0

    .line 547
    :pswitch_7
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    return-object v0

    .line 545
    :pswitch_8
    const-string v0, "EGL_BAD_CONTEXT"

    return-object v0

    .line 543
    :pswitch_9
    const-string v0, "EGL_BAD_CONFIG"

    return-object v0

    .line 541
    :pswitch_a
    const-string v0, "EGL_BAD_ATTRIBUTE"

    return-object v0

    .line 539
    :pswitch_b
    const-string v0, "EGL_BAD_ALLOC"

    return-object v0

    .line 537
    :pswitch_c
    const-string v0, "EGL_BAD_ACCESS"

    return-object v0

    .line 535
    :pswitch_d
    const-string v0, "EGL_NOT_INITIALIZED"

    return-object v0

    .line 533
    :pswitch_e
    const-string v0, "EGL_SUCCESS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3000
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

.method private static getHex(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 381
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 385
    :goto_0
    return-void
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method private returns(I)V
    .locals 1
    .param p1, "result"    # I

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 463
    invoke-direct {p0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->flush()V

    .line 452
    return-void
.end method

.method private returns(Z)V
    .locals 1
    .param p1, "result"    # Z

    .line 459
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "arr"    # [I
    .param p3, "offset"    # I

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    array-length v1, p2

    .line 494
    .local v1, "arrLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 495
    add-int v3, p3, v2

    .line 496
    .local v3, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 500
    :cond_0
    aget v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 498
    :cond_1
    :goto_1
    const-string v4, "out of bounds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :goto_2
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    .end local v2    # "i":I
    :cond_2
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "arr"    # [Ljava/lang/Object;
    .param p3, "offset"    # I

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    array-length v1, p2

    .line 512
    .local v1, "arrLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 513
    add-int v3, p3, v2

    .line 514
    .local v3, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    aget-object v4, p2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 516
    :cond_1
    :goto_1
    const-string v4, "out of bounds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :goto_2
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v2    # "i":I
    :cond_2
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 467
    if-nez p1, :cond_0

    .line 468
    const-string v0, "null"

    return-object v0

    .line 470
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 7
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "attrib_list"    # [I
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "config_size"    # I
    .param p5, "num_config"    # [I

    .line 54
    const-string v0, "eglChooseConfig"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 55
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 56
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 57
    const-string v0, "config_size"

    invoke-direct {p0, v0, p4}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 58
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 60
    iget-object v1, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 62
    .local v0, "result":Z
    const-string v1, "configs"

    invoke-direct {p0, v1, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const-string v1, "num_config"

    invoke-direct {p0, v1, p5}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 64
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 65
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 66
    return v0
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;
    .param p3, "native_pixmap"    # Ljava/lang/Object;

    .line 71
    const-string v0, "eglCopyBuffers"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 72
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 73
    const-string v0, "surface"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 74
    const-string v0, "native_pixmap"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 77
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    move-result v0

    .line 78
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 79
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 80
    return v0
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "share_context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p4, "attrib_list"    # [I

    .line 85
    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 86
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 87
    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "share_context"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 89
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p4}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 90
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 92
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 94
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 96
    return-object v0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attrib_list"    # [I

    .line 101
    const-string v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 102
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 103
    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 105
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 107
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 109
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 110
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 111
    return-object v0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_pixmap"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    .line 116
    const-string v0, "eglCreatePixmapSurface"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 117
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 118
    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    const-string v0, "native_pixmap"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p4}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 121
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 123
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 125
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 127
    return-object v0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_window"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    .line 132
    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 133
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 134
    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v0, "native_window"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p4}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 137
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 139
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 141
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 142
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 143
    return-object v0
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .line 147
    const-string v0, "eglDestroyContext"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 148
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 149
    const-string v0, "context"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 150
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 152
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 153
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 154
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 155
    return v0
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .line 159
    const-string v0, "eglDestroySurface"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 160
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 161
    const-string v0, "surface"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 162
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 164
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 165
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 166
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 167
    return v0
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attribute"    # I
    .param p4, "value"    # [I

    .line 172
    const-string v0, "eglGetConfigAttrib"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 173
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 174
    const-string v0, "config"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-string v0, "attribute"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 176
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 177
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 179
    .local v0, "result":Z
    const-string v1, "value"

    invoke-direct {p0, v1, p4}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 180
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 181
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 182
    const/4 v1, 0x0

    return v1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "config_size"    # I
    .param p4, "num_config"    # [I

    .line 187
    const-string v0, "eglGetConfigs"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 188
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 189
    const-string v0, "config_size"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 190
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 192
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 194
    .local v0, "result":Z
    const-string v1, "configs"

    invoke-direct {p0, v1, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const-string v1, "num_config"

    invoke-direct {p0, v1, p4}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 196
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 197
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 198
    return v0
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 202
    const-string v0, "eglGetCurrentContext"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 205
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 206
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 208
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 209
    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .line 213
    const-string v0, "eglGetCurrentDisplay"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 216
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 217
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 219
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 220
    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .param p1, "readdraw"    # I

    .line 224
    const-string v0, "eglGetCurrentSurface"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 225
    const-string v0, "readdraw"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 226
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 228
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 229
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 231
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 232
    return-object v0
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .param p1, "native_display"    # Ljava/lang/Object;

    .line 236
    const-string v0, "eglGetDisplay"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 237
    const-string v0, "native_display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 240
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 241
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 243
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 244
    return-object v0
.end method

.method public eglGetError()I
    .locals 2

    .line 248
    const-string v0, "eglGetError"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 251
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 252
    .local v0, "result":I
    invoke-static {v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 254
    return v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "major_minor"    # [I

    .line 258
    const-string v0, "eglInitialize"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 259
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 260
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 261
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    .line 262
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 263
    const-string v1, "major_minor"

    invoke-direct {p0, v1, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 264
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 265
    return v0
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "draw"    # Ljavax/microedition/khronos/egl/EGLSurface;
    .param p3, "read"    # Ljavax/microedition/khronos/egl/EGLSurface;
    .param p4, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .line 270
    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 271
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 272
    const-string v0, "draw"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 273
    const-string v0, "read"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 274
    const-string v0, "context"

    invoke-direct {p0, v0, p4}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 275
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 276
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 277
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 278
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 279
    return v0
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p3, "attribute"    # I
    .param p4, "value"    # [I

    .line 284
    const-string v0, "eglQueryContext"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 285
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 286
    const-string v0, "context"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 287
    const-string v0, "attribute"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 288
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 289
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    move-result v0

    .line 291
    .local v0, "result":Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(I)V

    .line 292
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 293
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 294
    return v0
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "name"    # I

    .line 298
    const-string v0, "eglQueryString"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 299
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 300
    const-string v0, "name"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 301
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 302
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 305
    return-object v0
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;
    .param p3, "attribute"    # I
    .param p4, "value"    # [I

    .line 310
    const-string v0, "eglQuerySurface"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 311
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 312
    const-string v0, "surface"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 313
    const-string v0, "attribute"

    invoke-direct {p0, v0, p3}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 314
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 315
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v0

    .line 317
    .local v0, "result":Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(I)V

    .line 318
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 319
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 320
    return v0
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .line 324
    const-string v0, "eglSwapBuffers"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 325
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 326
    const-string v0, "surface"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 327
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 328
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 329
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 330
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 331
    return v0
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 1
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 335
    const-string v0, "eglTerminate"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 336
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 337
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 338
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    .line 339
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 340
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 341
    return v0
.end method

.method public eglWaitGL()Z
    .locals 1

    .line 345
    const-string v0, "eglWaitGL"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 347
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    move-result v0

    .line 348
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 349
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 350
    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "engine"    # I
    .param p2, "bindTarget"    # Ljava/lang/Object;

    .line 354
    const-string v0, "eglWaitNative"

    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 355
    const-string v0, "engine"

    invoke-direct {p0, v0, p1}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 356
    const-string v0, "bindTarget"

    invoke-direct {p0, v0, p2}, Lorg/godotengine/godot/gl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->end()V

    .line 358
    iget-object v0, p0, Lorg/godotengine/godot/gl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    move-result v0

    .line 359
    .local v0, "result":Z
    invoke-direct {p0, v0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->returns(Z)V

    .line 360
    invoke-direct {p0}, Lorg/godotengine/godot/gl/EGLLogWrapper;->checkError()V

    .line 361
    return v0
.end method
