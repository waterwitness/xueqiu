.class public Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.source "ImageViewTouch.java"


# instance fields
.field protected a:Landroid/view/ScaleGestureDetector;

.field protected b:Landroid/view/GestureDetector;

.field protected c:I

.field protected d:F

.field protected e:I

.field protected f:Landroid/view/GestureDetector$OnGestureListener;

.field protected g:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field private y:Lit/sephiroth/android/library/imagezoom/b;

.field private z:Lit/sephiroth/android/library/imagezoom/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->h:Z

    .line 28
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->i:Z

    .line 29
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->j:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->h:Z

    .line 28
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->i:Z

    .line 29
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->j:Z

    .line 43
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)Lit/sephiroth/android/library/imagezoom/c;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->z:Lit/sephiroth/android/library/imagezoom/c;

    return-object v0
.end method


# virtual methods
.method protected final a(FF)F
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->e:I

    if-ne v0, v1, :cond_1

    .line 127
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->d:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    .line 128
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->d:F

    add-float p2, p1, v0

    .line 135
    :goto_0
    return p2

    .line 130
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->e:I

    goto :goto_0

    .line 134
    :cond_1
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->e:I

    .line 135
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected final a(F)V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->b(F)V

    .line 123
    :cond_0
    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->c:I

    .line 49
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getGestureListener()Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->f:Landroid/view/GestureDetector$OnGestureListener;

    .line 50
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->g:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 52
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->g:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    .line 53
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->f:Landroid/view/GestureDetector$OnGestureListener;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->b:Landroid/view/GestureDetector;

    .line 55
    iput v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->e:I

    .line 56
    return-void
.end method

.method protected final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 93
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMaxScale()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->d:F

    .line 94
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/high16 v5, 0x44480000    # 800.0f

    const/high16 v4, 0x40000000    # 2.0f

    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 155
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 156
    :cond_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->q:Z

    .line 157
    div-float/2addr v1, v4

    div-float/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->d(FF)V

    .line 158
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    .line 161
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(FF)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 145
    :cond_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->q:Z

    .line 146
    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->c(FF)V

    .line 147
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->invalidate()V

    goto :goto_0
.end method

.method public getDoubleTapEnabled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->h:Z

    return v0
.end method

.method protected getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lit/sephiroth/android/library/imagezoom/a;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/imagezoom/a;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    return-object v0
.end method

.method protected getScaleListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lit/sephiroth/android/library/imagezoom/d;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/imagezoom/d;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouch;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 98
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->a:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 105
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_1
    :goto_0
    return v2

    .line 1169
    :pswitch_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinScale()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1170
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getMinScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->b(F)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->h:Z

    .line 68
    return-void
.end method

.method public setDoubleTapListener(Lit/sephiroth/android/library/imagezoom/b;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->y:Lit/sephiroth/android/library/imagezoom/b;

    .line 60
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->i:Z

    .line 72
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->j:Z

    .line 76
    return-void
.end method

.method public setSingleTapListener(Lit/sephiroth/android/library/imagezoom/c;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->z:Lit/sephiroth/android/library/imagezoom/c;

    .line 64
    return-void
.end method
