.class final Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field a:Z

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/support/v4/widget/x;

.field private f:F

.field private g:Landroid/view/View;

.field private h:Landroid/view/animation/Animation;

.field private i:D

.field private j:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->b:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Landroid/support/v4/view/b/a;

    invoke-direct {v0}, Landroid/support/v4/view/b/a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->c:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 229
    iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:F

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 230
    iget-object v8, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    .line 1529
    iget-object v1, v8, Landroid/support/v4/widget/x;->a:Landroid/graphics/RectF;

    .line 1530
    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1531
    iget v0, v8, Landroid/support/v4/widget/x;->g:F

    iget v2, v8, Landroid/support/v4/widget/x;->g:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1533
    iget v0, v8, Landroid/support/v4/widget/x;->d:F

    iget v2, v8, Landroid/support/v4/widget/x;->f:F

    add-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, v0

    .line 1534
    iget v0, v8, Landroid/support/v4/widget/x;->e:F

    iget v3, v8, Landroid/support/v4/widget/x;->f:F

    add-float/2addr v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v0, v3

    .line 1535
    sub-float v3, v0, v2

    .line 1537
    iget-object v0, v8, Landroid/support/v4/widget/x;->b:Landroid/graphics/Paint;

    iget v4, v8, Landroid/support/v4/widget/x;->t:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1538
    const/4 v4, 0x0

    iget-object v5, v8, Landroid/support/v4/widget/x;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1551
    iget-boolean v0, v8, Landroid/support/v4/widget/x;->k:Z

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 1553
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    .line 1554
    iget-object v0, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1561
    :goto_0
    iget v0, v8, Landroid/support/v4/widget/x;->g:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v8, Landroid/support/v4/widget/x;->m:F

    mul-float/2addr v0, v1

    .line 1562
    iget-wide v4, v8, Landroid/support/v4/widget/x;->n:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    float-to-double v10, v1

    add-double/2addr v4, v10

    double-to-float v1, v4

    .line 1563
    iget-wide v4, v8, Landroid/support/v4/widget/x;->n:D

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-double v10, v9

    add-double/2addr v4, v10

    double-to-float v4, v4

    .line 1569
    iget-object v5, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1570
    iget-object v5, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    iget v9, v8, Landroid/support/v4/widget/x;->o:I

    int-to-float v9, v9

    iget v10, v8, Landroid/support/v4/widget/x;->m:F

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1571
    iget-object v5, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    iget v9, v8, Landroid/support/v4/widget/x;->o:I

    int-to-float v9, v9

    iget v10, v8, Landroid/support/v4/widget/x;->m:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget v10, v8, Landroid/support/v4/widget/x;->p:I

    int-to-float v10, v10

    iget v11, v8, Landroid/support/v4/widget/x;->m:F

    mul-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1573
    iget-object v5, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    sub-float v0, v1, v0

    invoke-virtual {v5, v0, v4}, Landroid/graphics/Path;->offset(FF)V

    .line 1574
    iget-object v0, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1576
    iget-object v0, v8, Landroid/support/v4/widget/x;->c:Landroid/graphics/Paint;

    iget v1, v8, Landroid/support/v4/widget/x;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1577
    add-float v0, v2, v3

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1579
    iget-object v0, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    iget-object v1, v8, Landroid/support/v4/widget/x;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1542
    :cond_0
    iget v0, v8, Landroid/support/v4/widget/x;->q:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    .line 1543
    iget-object v0, v8, Landroid/support/v4/widget/x;->r:Landroid/graphics/Paint;

    iget v1, v8, Landroid/support/v4/widget/x;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1544
    iget-object v0, v8, Landroid/support/v4/widget/x;->r:Landroid/graphics/Paint;

    iget v1, v8, Landroid/support/v4/widget/x;->q:I

    rsub-int v1, v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1545
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, v8, Landroid/support/v4/widget/x;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    :cond_1
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 232
    return-void

    .line 1556
    :cond_2
    iget-object v0, v8, Landroid/support/v4/widget/x;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    .line 1649
    iget v0, v0, Landroid/support/v4/widget/x;->q:I

    .line 240
    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->j:D

    double-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->i:D

    double-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, -0x3

    return v0
.end method

.method public final isRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->d:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 268
    :goto_0
    if-ge v2, v4, :cond_1

    .line 269
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 270
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 274
    :goto_1
    return v0

    .line 268
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 274
    goto :goto_1
.end method

.method public final setAlpha(I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    .line 1642
    iput p1, v0, Landroid/support/v4/widget/x;->q:I

    .line 237
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    .line 2634
    iget-object v1, v0, Landroid/support/v4/widget/x;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2635
    invoke-virtual {v0}, Landroid/support/v4/widget/x;->c()V

    .line 246
    return-void
.end method

.method public final start()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 280
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    .line 2771
    iget v1, v0, Landroid/support/v4/widget/x;->d:F

    iput v1, v0, Landroid/support/v4/widget/x;->h:F

    .line 2772
    iget v1, v0, Landroid/support/v4/widget/x;->e:F

    iput v1, v0, Landroid/support/v4/widget/x;->i:F

    .line 2773
    iget v1, v0, Landroid/support/v4/widget/x;->f:F

    iput v1, v0, Landroid/support/v4/widget/x;->j:F

    .line 282
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    .line 3697
    iget v0, v0, Landroid/support/v4/widget/x;->e:F

    .line 282
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    .line 4674
    iget v1, v1, Landroid/support/v4/widget/x;->d:F

    .line 282
    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->a:Z

    .line 284
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->a()V

    .line 288
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->b()V

    .line 289
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x534

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 290
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 5250
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->f:F

    .line 5251
    invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V

    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    .line 5743
    iget-boolean v1, v0, Landroid/support/v4/widget/x;->k:Z

    if-eqz v1, :cond_0

    .line 5744
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/x;->k:Z

    .line 5745
    invoke-virtual {v0}, Landroid/support/v4/widget/x;->c()V

    .line 299
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->a()V

    .line 300
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->e:Landroid/support/v4/widget/x;

    invoke-virtual {v0}, Landroid/support/v4/widget/x;->b()V

    .line 301
    return-void
.end method
