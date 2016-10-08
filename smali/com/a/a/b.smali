.class final Lcom/a/a/b;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/a/a/a;


# direct methods
.method constructor <init>(Lcom/a/a/a;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/a/a/b;->a:Lcom/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/a/a/b;->a:Lcom/a/a/a;

    .line 1038
    iget-object v1, v1, Lcom/a/a/a;->a:Lcom/a/a/i;

    .line 96
    iget-object v2, p0, Lcom/a/a/b;->a:Lcom/a/a/a;

    .line 2038
    iget-object v2, v2, Lcom/a/a/a;->a:Lcom/a/a/i;

    .line 96
    invoke-virtual {v2}, Lcom/a/a/i;->getCurrentYOffset()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/a/a/i;->a(FF)V

    .line 97
    return-void
.end method
