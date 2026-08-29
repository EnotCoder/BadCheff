.class public final Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;
.super Ljava/lang/Object;
.source "DialogUtils.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/utils/DialogUtils$Companion;->addSwipeToDismiss(Landroid/view/View;Landroid/widget/PopupWindow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "org/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1",
        "Landroid/view/View$OnTouchListener;",
        "dX",
        "",
        "initialX",
        "threshold",
        "onTouch",
        "",
        "v",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
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


# instance fields
.field final synthetic $popupWindow:Landroid/widget/PopupWindow;

.field final synthetic $view:Landroid/view/View;

.field private dX:F

.field private initialX:F

.field private final threshold:F


# direct methods
.method public static synthetic $r8$lambda$1jA2wZ7uGPFdyef5miW7y3P9Mgw(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-static {p0}, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->onTouch$lambda$0(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 1
    .param p1, "$view"    # Landroid/view/View;
    .param p2, "$popupWindow"    # Landroid/widget/PopupWindow;

    iput-object p1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    iput-object p2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$popupWindow:Landroid/widget/PopupWindow;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->threshold:F

    .line 242
    return-void
.end method

.method private static final onTouch$lambda$0(Landroid/widget/PopupWindow;)V
    .locals 1
    .param p0, "$popupWindow"    # Landroid/widget/PopupWindow;

    const-string v0, "$popupWindow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 255
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->initialX:F

    sub-float/2addr v0, v1

    .line 256
    .local v0, "deltaX":F
    iget-object v1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    iget v2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->dX:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .end local v0    # "deltaX":F
    goto :goto_1

    .line 260
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->initialX:F

    sub-float/2addr v0, v1

    .line 262
    .local v0, "finalX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->threshold:F

    const-wide/16 v3, 0xc8

    const/4 v5, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 264
    iget-object v1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 265
    cmpl-float v2, v0, v5

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    neg-float v2, v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 267
    iget-object v2, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$popupWindow:Landroid/widget/PopupWindow;

    new-instance v3, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1$$ExternalSyntheticLambda0;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 271
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 272
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 273
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 250
    .end local v0    # "finalX":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->initialX:F

    .line 251
    iget-object v0, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lorg/godotengine/godot/utils/DialogUtils$Companion$addSwipeToDismiss$1;->dX:F

    .line 278
    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
