.class final Lcom/a/a/d;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/a/a/a;


# direct methods
.method constructor <init>(Lcom/a/a/a;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    .line 4038
    iget-object v0, v0, Lcom/a/a/a;->a:Lcom/a/a/i;

    .line 125
    invoke-virtual {v0}, Lcom/a/a/i;->b()V

    .line 126
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    .line 1038
    iget-object v1, v1, Lcom/a/a/a;->a:Lcom/a/a/i;

    .line 116
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    .line 2038
    iget-object v3, v3, Lcom/a/a/a;->a:Lcom/a/a/i;

    .line 116
    invoke-virtual {v3}, Lcom/a/a/i;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/a/a/d;->a:Lcom/a/a/a;

    .line 3038
    iget-object v4, v4, Lcom/a/a/a;->a:Lcom/a/a/i;

    .line 116
    invoke-virtual {v4}, Lcom/a/a/i;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Lcom/a/a/i;->a(FLandroid/graphics/PointF;)V

    .line 117
    return-void
.end method
