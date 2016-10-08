.class final Lcom/xueqiu/android/common/widget/ptr/d$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/ptr/d;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/ptr/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/ptr/d;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/d$1;->a:Lcom/xueqiu/android/common/widget/ptr/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/d$1;->a:Lcom/xueqiu/android/common/widget/ptr/d;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/ptr/d;->a(Lcom/xueqiu/android/common/widget/ptr/d;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 517
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d$1;->a:Lcom/xueqiu/android/common/widget/ptr/d;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/d;->a(Lcom/xueqiu/android/common/widget/ptr/d;I)I

    .line 519
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/d$1;->a:Lcom/xueqiu/android/common/widget/ptr/d;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/ptr/d;->setHeaderScroll(I)V

    .line 524
    :cond_0
    return-void
.end method
