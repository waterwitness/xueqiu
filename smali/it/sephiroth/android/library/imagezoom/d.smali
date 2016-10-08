.class public final Lit/sephiroth/android/library/imagezoom/d;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ImageViewTouch.java"


# instance fields
.field protected a:Z

.field final synthetic b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/d;->a:Z

    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 290
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    sub-float/2addr v0, v1

    .line 291
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    .line 293
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v2, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->i:Z

    if-eqz v2, :cond_0

    .line 294
    iget-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/d;->a:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput-boolean v4, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->q:Z

    .line 296
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxScale()F

    move-result v0

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinScale()F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 297
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a(FFF)V

    .line 298
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iput v4, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->e:I

    .line 299
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/d;->b:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 307
    :cond_0
    :goto_0
    return v4

    .line 305
    :cond_1
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/d;->a:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lit/sephiroth/android/library/imagezoom/d;->a:Z

    goto :goto_0
.end method
