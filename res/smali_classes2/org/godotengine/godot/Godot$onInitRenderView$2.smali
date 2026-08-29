.class public final Lorg/godotengine/godot/Godot$onInitRenderView$2;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "Godot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/Godot;->onInitRenderView(Lorg/godotengine/godot/GodotHost;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "org/godotengine/godot/Godot$onInitRenderView$2",
        "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;",
        "endBottom",
        "",
        "getEndBottom",
        "()I",
        "setEndBottom",
        "(I)V",
        "startBottom",
        "getStartBottom",
        "setStartBottom",
        "onEnd",
        "",
        "animation",
        "Landroidx/core/view/WindowInsetsAnimationCompat;",
        "onPrepare",
        "onProgress",
        "Landroidx/core/view/WindowInsetsCompat;",
        "windowInsets",
        "animationsList",
        "",
        "onStart",
        "Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;",
        "bounds",
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
.field final synthetic $decorView:Landroid/view/View;

.field private endBottom:I

.field private startBottom:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "$decorView"    # Landroid/view/View;

    iput-object p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->$decorView:Landroid/view/View;

    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getEndBottom()I
    .locals 1

    .line 519
    iget v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->endBottom:I

    return v0
.end method

.method public final getStartBottom()I
    .locals 1

    .line 518
    iget v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->startBottom:I

    return v0
.end method

.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->$decorView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->startBottom:I

    .line 522
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p1, "windowInsets"    # Landroidx/core/view/WindowInsetsCompat;
    .param p2, "animationsList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    const-string v0, "windowInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animationsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "imeAnimation":Landroidx/core/view/WindowInsetsAnimationCompat;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 533
    .local v2, "animation":Landroidx/core/view/WindowInsetsAnimationCompat;
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result v3

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 534
    move-object v0, v2

    .line 535
    nop

    .line 540
    .end local v2    # "animation":Landroidx/core/view/WindowInsetsAnimationCompat;
    :cond_1
    if-eqz v0, :cond_2

    .line 541
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getInterpolatedFraction()F

    move-result v1

    .line 543
    .local v1, "interpolatedFraction":F
    iget v2, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->startBottom:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float v2, v2, v3

    iget v3, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->endBottom:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    .line 544
    .local v2, "keyboardHeight":F
    float-to-int v3, v2

    invoke-static {v3}, Lorg/godotengine/godot/GodotLib;->setVirtualKeyboardHeight(I)V

    .line 546
    .end local v1    # "interpolatedFraction":F
    .end local v2    # "keyboardHeight":F
    :cond_2
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 2
    .param p1, "animation"    # Landroidx/core/view/WindowInsetsAnimationCompat;
    .param p2, "bounds"    # Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->$decorView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->endBottom:I

    .line 526
    return-object p2
.end method

.method public final setEndBottom(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 519
    iput p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->endBottom:I

    return-void
.end method

.method public final setStartBottom(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 518
    iput p1, p0, Lorg/godotengine/godot/Godot$onInitRenderView$2;->startBottom:I

    return-void
.end method
