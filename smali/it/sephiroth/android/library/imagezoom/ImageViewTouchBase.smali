.class public abstract Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# instance fields
.field private a:F

.field private b:F

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/graphics/PointF;

.field private h:Z

.field private i:Z

.field private j:Lit/sephiroth/android/library/imagezoom/f;

.field protected k:Lit/sephiroth/android/library/a/b;

.field protected l:Landroid/graphics/Matrix;

.field protected m:Landroid/graphics/Matrix;

.field protected n:Landroid/graphics/Matrix;

.field protected o:Landroid/os/Handler;

.field protected p:Ljava/lang/Runnable;

.field protected q:Z

.field protected final r:Landroid/graphics/Matrix;

.field protected final s:[F

.field protected t:I

.field protected final u:I

.field protected v:Landroid/graphics/RectF;

.field protected w:Landroid/graphics/RectF;

.field protected x:Landroid/graphics/RectF;

.field private y:Lit/sephiroth/android/library/imagezoom/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Lit/sephiroth/android/library/a/a;

    invoke-direct {v0}, Lit/sephiroth/android/library/a/a;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->k:Lit/sephiroth/android/library/a/b;

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    .line 74
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->q:Z

    .line 80
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    .line 81
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->r:Landroid/graphics/Matrix;

    .line 88
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->s:[F

    .line 90
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    .line 91
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    .line 92
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Landroid/graphics/PointF;

    .line 94
    sget v0, Lit/sephiroth/android/library/imagezoom/e;->a:I

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    .line 98
    const/16 v0, 0xc8

    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->u:I

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->v:Landroid/graphics/RectF;

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->w:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->x:Landroid/graphics/RectF;

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method private a(I)F
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 355
    sget v1, Lit/sephiroth/android/library/imagezoom/e;->b:I

    if-ne p1, v1, :cond_0

    .line 363
    :goto_0
    return v0

    .line 358
    :cond_0
    sget v1, Lit/sephiroth/android/library/imagezoom/e;->c:I

    if-ne p1, v1, :cond_1

    .line 360
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(Landroid/graphics/Matrix;)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(Landroid/graphics/Matrix;)F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 811
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 815
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 816
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 818
    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->r:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 599
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->r:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 600
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->r:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private c(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 730
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 732
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 736
    :goto_0
    return-object v0

    .line 733
    :cond_0
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 734
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->v:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 735
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->v:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 736
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->v:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private c(F)V
    .locals 2

    .prologue
    .line 837
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 838
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result p1

    .line 845
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 846
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FFF)V

    .line 847
    return-void
.end method

.method private d(Landroid/graphics/Matrix;)F
    .locals 2

    .prologue
    .line 740
    .line 2713
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->s:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2714
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->s:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 740
    return v0
.end method


# virtual methods
.method protected final a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 777
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 779
    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 807
    :goto_0
    return-object v0

    .line 781
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->w:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 782
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 783
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 784
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 787
    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    .line 788
    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 789
    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    .line 797
    :goto_1
    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    .line 798
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_3

    .line 799
    int-to-float v4, v4

    sub-float v3, v4, v3

    div-float/2addr v3, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, v3, v2

    .line 806
    :goto_2
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->w:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v0, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 807
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->w:Landroid/graphics/RectF;

    goto :goto_0

    .line 790
    :cond_1
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 791
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 792
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 793
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    .line 800
    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_4

    .line 801
    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    goto :goto_2

    .line 802
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    .line 803
    int-to-float v3, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, v3, v2

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 762
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 763
    if-nez v0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 767
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 772
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FF)V

    goto :goto_0
.end method

.method protected final a(DD)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 887
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 888
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->x:Landroid/graphics/RectF;

    double-to-float v2, p1

    double-to-float v3, p3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 889
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->x:Landroid/graphics/RectF;

    .line 2895
    if-eqz v0, :cond_5

    .line 2897
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 2898
    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 2899
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 2900
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 2901
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 2902
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_4

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 2903
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_5

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    add-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v0, v2, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 890
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->x:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->x:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FF)V

    .line 891
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a()V

    .line 892
    return-void
.end method

.method protected a(F)V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method protected final a(FFF)V
    .locals 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 865
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 866
    div-float v0, p1, v0

    .line 2824
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2825
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 868
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    .line 869
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a()V

    .line 870
    return-void
.end method

.method protected final a(FFFF)V
    .locals 10

    .prologue
    .line 935
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result p1

    .line 937
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 938
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v7

    .line 940
    sub-float v6, p1, v7

    .line 942
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 943
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 944
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 946
    iget v1, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    add-float v8, p2, v1

    .line 947
    iget v0, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p1

    add-float v9, p3, v0

    .line 949
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    new-instance v1, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;

    move-object v2, p0

    move v3, p4

    invoke-direct/range {v1 .. v9}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$3;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 965
    return-void
.end method

.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    return-void
.end method

.method protected a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 440
    if-eqz p1, :cond_4

    .line 445
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    :goto_0
    cmpl-float v0, p3, v2

    if-eqz v0, :cond_5

    cmpl-float v0, p4, v2

    if-eqz v0, :cond_5

    .line 452
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 453
    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 455
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    .line 456
    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    .line 458
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d:Z

    .line 459
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Z

    .line 461
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    sget v1, Lit/sephiroth/android/library/imagezoom/e;->b:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    sget v1, Lit/sephiroth/android/library/imagezoom/e;->c:I

    if-ne v0, v1, :cond_2

    .line 463
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    .line 464
    iput-boolean v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d:Z

    .line 465
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    .line 468
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    .line 469
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Z

    .line 470
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    .line 481
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 482
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    .line 485
    :cond_3
    iput-boolean v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:Z

    .line 486
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->requestLayout()V

    .line 487
    return-void

    .line 447
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 448
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 474
    :cond_5
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    .line 475
    iput v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    .line 477
    iput-boolean v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d:Z

    .line 478
    iput-boolean v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Z

    goto :goto_1
.end method

.method public final b(F)V
    .locals 3

    .prologue
    .line 858
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 859
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p0, p1, v1, v0, v2}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FFFF)V

    .line 860
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 6

    .prologue
    .line 419
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 421
    if-gtz v0, :cond_0

    .line 422
    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$1;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    goto :goto_0
.end method

.method public final c(FF)V
    .locals 4

    .prologue
    .line 883
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(DD)V

    .line 884
    return-void
.end method

.method protected final d(FF)V
    .locals 9

    .prologue
    .line 907
    float-to-double v4, p1

    .line 908
    float-to-double v6, p2

    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 910
    iget-object v8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->o:Landroid/os/Handler;

    new-instance v0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$2;-><init>(Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;JDD)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 932
    return-void
.end method

.method public getBaseScale()F
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getBitmapRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method protected getCenter()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayType$ecfe546()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    return v0
.end method

.method public getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 3

    .prologue
    .line 570
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2531
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2533
    if-nez v0, :cond_1

    .line 2534
    const/high16 v0, 0x3f800000    # 1.0f

    .line 571
    :goto_0
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    .line 573
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    return v0

    .line 2537
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2538
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2539
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public getMinScale()F
    .locals 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 582
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2548
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2550
    if-nez v1, :cond_1

    .line 583
    :goto_0
    iput v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    .line 585
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    return v0

    .line 2554
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(Landroid/graphics/Matrix;)F

    move-result v1

    .line 2555
    div-float v1, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 189
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 191
    const/4 v1, 0x0

    .line 192
    const/4 v0, 0x0

    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    .line 196
    iget v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    .line 198
    sub-int v1, p4, p2

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    .line 199
    sub-int v1, p5, p3

    iput v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    .line 201
    iget v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    sub-int/2addr v1, v0

    .line 202
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    sub-int/2addr v0, v2

    .line 205
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Landroid/graphics/PointF;

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 206
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->g:Landroid/graphics/PointF;

    iget v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 209
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 211
    if-eqz v2, :cond_1

    .line 212
    const/4 v3, 0x0

    iput-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->p:Ljava/lang/Runnable;

    .line 213
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 216
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 218
    if-eqz v3, :cond_10

    .line 220
    if-nez p1, :cond_2

    iget-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:Z

    if-eqz v2, :cond_9

    .line 222
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 225
    iget v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    invoke-direct {p0, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(I)F

    .line 226
    iget-object v4, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    invoke-direct {p0, v4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(Landroid/graphics/Matrix;)F

    move-result v4

    .line 227
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 228
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 230
    iget-object v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    .line 1649
    iget v8, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->e:I

    int-to-float v8, v8

    .line 1650
    iget v9, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->f:I

    int-to-float v9, v9

    .line 1656
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    .line 1657
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1659
    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 1661
    cmpl-float v11, v10, v8

    if-gtz v11, :cond_3

    cmpl-float v11, v3, v9

    if-lez v11, :cond_a

    .line 1662
    :cond_3
    div-float v11, v8, v10

    .line 1663
    div-float v12, v9, v3

    .line 1664
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1665
    invoke-virtual {v7, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1667
    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 1668
    mul-float/2addr v3, v11

    sub-float v3, v9, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    .line 1669
    invoke-virtual {v7, v8, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 232
    :goto_0
    iget-object v3, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->l:Landroid/graphics/Matrix;

    invoke-direct {p0, v3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d(Landroid/graphics/Matrix;)F

    move-result v3

    .line 242
    iget-boolean v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:Z

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    if-eqz v7, :cond_c

    .line 249
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    if-eqz v0, :cond_b

    .line 250
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->n:Landroid/graphics/Matrix;

    .line 252
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 258
    :goto_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 260
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getScale()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    .line 282
    :goto_2
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c(F)V

    .line 294
    :cond_5
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->q:Z

    .line 296
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMaxScale()F

    move-result v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_6

    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getMinScale()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    .line 299
    :cond_6
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c(F)V

    .line 302
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a()V

    .line 307
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    .line 308
    :cond_8
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:Z

    .line 323
    :cond_9
    :goto_4
    return-void

    .line 1672
    :cond_a
    div-float v11, v8, v10

    .line 1673
    div-float v12, v9, v3

    .line 1674
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1675
    invoke-virtual {v7, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1677
    mul-float/2addr v10, v11

    sub-float/2addr v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    .line 1678
    mul-float/2addr v3, v11

    sub-float v3, v9, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v3, v9

    .line 1679
    invoke-virtual {v7, v8, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 254
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 255
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(I)F

    move-result v0

    goto :goto_1

    .line 264
    :cond_c
    if-eqz p1, :cond_13

    .line 268
    iget-boolean v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->d:Z

    if-nez v7, :cond_d

    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    .line 269
    :cond_d
    iget-boolean v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->c:Z

    if-nez v7, :cond_e

    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    .line 271
    :cond_e
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 272
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(FF)V

    .line 275
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->q:Z

    if-nez v0, :cond_f

    .line 276
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a(I)F

    move-result v0

    goto :goto_2

    .line 279
    :cond_f
    sub-float v0, v5, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v0, v0, v6

    if-lez v0, :cond_12

    .line 280
    div-float v0, v4, v3

    mul-float/2addr v0, v5

    goto/16 :goto_2

    .line 319
    :cond_10
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->i:Z

    .line 320
    :cond_11
    iget-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    goto :goto_4

    :cond_12
    move v0, v2

    goto/16 :goto_2

    :cond_13
    move v0, v2

    goto/16 :goto_3
.end method

.method public setDisplayType$6cc409cc(I)V
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    if-eq p1, v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->q:Z

    .line 157
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->t:I

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->h:Z

    .line 159
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->requestLayout()V

    .line 161
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageBitmap$39eee89d(Landroid/graphics/Bitmap;)V

    .line 382
    return-void
.end method

.method public final setImageBitmap$39eee89d(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 393
    if-eqz p1, :cond_0

    .line 394
    new-instance v0, Lit/sephiroth/android/library/imagezoom/a/a;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/imagezoom/a/a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, v2, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0, v2, v2, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 402
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 609
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 613
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 616
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    return-void
.end method

.method protected setMaxScale(F)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->a:F

    .line 180
    return-void
.end method

.method protected setMinScale(F)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->b:F

    .line 173
    return-void
.end method

.method public setOnDrawableChangedListener(Lit/sephiroth/android/library/imagezoom/f;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->j:Lit/sephiroth/android/library/imagezoom/f;

    .line 122
    return-void
.end method

.method public setOnLayoutChangeListener(Lit/sephiroth/android/library/imagezoom/g;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase;->y:Lit/sephiroth/android/library/imagezoom/g;

    .line 126
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v0, "ImageViewTouchBase"

    const-string v1, "Unsupported scaletype. Only MATRIX can be used"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
