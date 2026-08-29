.class public final Landroidx/core/splashscreen/MaskedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaskedDrawable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\rH\u0016J\u0012\u0010\u0013\u001a\u00020\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/core/splashscreen/MaskedDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "maskDiameter",
        "",
        "(Landroid/graphics/drawable/Drawable;F)V",
        "mask",
        "Landroid/graphics/Path;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getOpacity",
        "",
        "onBoundsChange",
        "bounds",
        "Landroid/graphics/Rect;",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "core-splashscreen_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private final mask:Landroid/graphics/Path;

.field private final maskDiameter:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "maskDiameter"    # F

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/core/splashscreen/MaskedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 32
    iput p2, p0, Landroidx/core/splashscreen/MaskedDrawable;->maskDiameter:F

    .line 34
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v1, v0

    .local v1, "$this$mask_u24lambda_u2d0":Landroid/graphics/Path;
    const/4 v2, 0x0

    .line 35
    .local v2, "$i$a$-apply-MaskedDrawable$mask$1":I
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p2, v3

    .line 36
    .local v3, "radius":F
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v4, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 37
    nop

    .line 34
    .end local v1    # "$this$mask_u24lambda_u2d0":Landroid/graphics/Path;
    .end local v2    # "$i$a$-apply-MaskedDrawable$mask$1":I
    .end local v3    # "radius":F
    iput-object v0, p0, Landroidx/core/splashscreen/MaskedDrawable;->mask:Landroid/graphics/Path;

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Landroidx/core/splashscreen/MaskedDrawable;->mask:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 41
    iget-object v0, p0, Landroidx/core/splashscreen/MaskedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/core/splashscreen/MaskedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 57
    iget-object v0, p0, Landroidx/core/splashscreen/MaskedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 58
    iget-object v0, p0, Landroidx/core/splashscreen/MaskedDrawable;->mask:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 59
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 45
    iget-object v0, p0, Landroidx/core/splashscreen/MaskedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 46
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 49
    iget-object v0, p0, Landroidx/core/splashscreen/MaskedDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 50
    return-void
.end method
