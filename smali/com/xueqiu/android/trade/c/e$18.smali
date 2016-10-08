.class final Lcom/xueqiu/android/trade/c/e$18;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic b:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$18;->b:Lcom/xueqiu/android/trade/c/e;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/e$18;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 696
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$18;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->i(Lcom/xueqiu/android/trade/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$18;->a:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 698
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$18;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->K(Lcom/xueqiu/android/trade/c/e;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$18;->a:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$18;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->K(Lcom/xueqiu/android/trade/c/e;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 701
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 702
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$18;->b:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->K(Lcom/xueqiu/android/trade/c/e;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 703
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 692
    return-void
.end method
