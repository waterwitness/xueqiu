.class public final Lit/sephiroth/android/library/imagezoom/a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageViewTouch.java"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 222
    const-string v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDoubleTap. double tap enabled? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v2, v2, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->h:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->q:Z

    .line 225
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    .line 227
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxScale()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a(FF)F

    move-result v0

    .line 228
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxScale()F

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinScale()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 229
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v1, v0, v2, v3, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a(FFFF)V

    .line 230
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 237
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->j:Z

    if-nez v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 268
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->setPressed(Z)V

    .line 245
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->performLongClick()Z

    .line 248
    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-boolean v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->j:Z

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v0, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->b(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-static {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/a;->a:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-static {v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/c;

    move-result-object v0

    invoke-interface {v0}, Lit/sephiroth/android/library/imagezoom/c;->a()V

    .line 217
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method
