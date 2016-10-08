.class final Lcom/a/a/h;
.super Ljava/lang/Object;
.source "DragPinchManager.java"

# interfaces
.implements Lcom/a/a/d/e;
.implements Lcom/a/a/d/f;
.implements Lcom/a/a/d/g;


# instance fields
.field a:Z

.field b:Z

.field private c:Lcom/a/a/i;

.field private d:Lcom/a/a/d/d;

.field private e:J

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/a/a/i;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/h;->a:Z

    .line 2151
    iget-boolean v0, p1, Lcom/a/a/i;->n:Z

    .line 53
    iput-boolean v0, p0, Lcom/a/a/h;->b:Z

    .line 54
    new-instance v0, Lcom/a/a/d/d;

    invoke-direct {v0}, Lcom/a/a/d/d;-><init>()V

    iput-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/d/d;

    .line 55
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/d/d;

    .line 2269
    iput-object p0, v0, Lcom/a/a/d/d;->a:Lcom/a/a/d/f;

    .line 56
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/d/d;

    .line 2273
    iput-object p0, v0, Lcom/a/a/d/d;->b:Lcom/a/a/d/g;

    .line 57
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/d/d;

    .line 2277
    iput-object p0, v0, Lcom/a/a/d/d;->c:Lcom/a/a/d/e;

    .line 58
    iget-object v0, p0, Lcom/a/a/h;->d:Lcom/a/a/d/d;

    invoke-virtual {p1, v0}, Lcom/a/a/i;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 129
    .line 6111
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->d()Z

    move-result v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    .line 7043
    iget-object v1, v0, Lcom/a/a/i;->b:Lcom/a/a/a;

    iget v0, v0, Lcom/a/a/i;->i:F

    .line 7072
    iget-object v2, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 7073
    iget-object v2, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7075
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    .line 7076
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7077
    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Lcom/a/a/a;)V

    .line 7078
    iget-object v2, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7079
    iget-object v2, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7080
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7081
    iget-object v0, v1, Lcom/a/a/a;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 132
    :cond_1
    return-void
.end method

.method public final a(FF)V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/h;->e:J

    .line 75
    iput p1, p0, Lcom/a/a/h;->f:F

    .line 76
    iput p2, p0, Lcom/a/a/h;->g:F

    .line 77
    return-void
.end method

.method public final a(FLandroid/graphics/PointF;)V
    .locals 4

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->getZoom()F

    move-result v0

    mul-float/2addr v0, p1

    .line 64
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->getZoom()F

    move-result v0

    div-float p1, v2, v0

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    .line 2991
    iget v1, v0, Lcom/a/a/i;->i:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lcom/a/a/i;->a(FLandroid/graphics/PointF;)V

    .line 70
    return-void

    .line 66
    :cond_1
    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->getZoom()F

    move-result v0

    div-float p1, v3, v0

    goto :goto_0
.end method

.method public final b(FF)V
    .locals 3

    .prologue
    .line 81
    .line 3111
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->d()Z

    move-result v0

    .line 81
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/h;->a:Z

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    .line 3958
    iget v1, v0, Lcom/a/a/i;->g:F

    add-float/2addr v1, p1

    iget v2, v0, Lcom/a/a/i;->h:F

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/i;->a(FF)V

    .line 84
    :cond_1
    return-void
.end method

.method public final c(FF)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    .line 4111
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->d()Z

    move-result v0

    .line 88
    if-nez v0, :cond_7

    .line 89
    iget-boolean v0, p0, Lcom/a/a/h;->a:Z

    if-eqz v0, :cond_1

    .line 91
    iget-boolean v0, p0, Lcom/a/a/h;->b:Z

    if-eqz v0, :cond_2

    .line 92
    iget v0, p0, Lcom/a/a/h;->g:F

    sub-float v0, p2, v0

    .line 96
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/a/a/h;->e:J

    sub-long/2addr v4, v6

    .line 97
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/4 v1, -0x1

    .line 4119
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4

    move v4, v2

    .line 99
    :goto_2
    if-nez v4, :cond_0

    .line 5115
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    iget-object v5, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v5}, Lcom/a/a/i;->getOptimalPageWidth()F

    move-result v5

    .line 6011
    iget v4, v4, Lcom/a/a/i;->i:F

    mul-float/2addr v4, v5

    .line 5115
    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 99
    :goto_3
    if-eqz v2, :cond_6

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    iget-object v2, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v2}, Lcom/a/a/i;->getCurrentPage()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(I)V

    .line 108
    :cond_1
    :goto_4
    return-void

    .line 94
    :cond_2
    iget v0, p0, Lcom/a/a/h;->f:F

    sub-float v0, p1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 97
    goto :goto_1

    :cond_4
    move v4, v3

    .line 4119
    goto :goto_2

    :cond_5
    move v2, v3

    .line 5115
    goto :goto_3

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    iget-object v1, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v1}, Lcom/a/a/i;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/i;->a(I)V

    goto :goto_4

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->b()V

    goto :goto_4
.end method
