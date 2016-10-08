.class final Lcom/xueqiu/android/trade/c/b$11$1;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/b$11;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b$11;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b$11;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$11$1;->a:Lcom/xueqiu/android/trade/c/b$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$11$1;->a:Lcom/xueqiu/android/trade/c/b$11;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/b$11;->a:Lcom/xueqiu/android/trade/c/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$11$1;->a:Lcom/xueqiu/android/trade/c/b$11;

    iget-object v1, v1, Lcom/xueqiu/android/trade/c/b$11;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/b;->d(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/widget/p;

    move-result-object v1

    .line 1160
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 321
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1243
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x438d0000    # 282.0f

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1244
    const/16 v3, 0x51

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1245
    iget-object v3, v0, Lcom/xueqiu/android/common/widget/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xueqiu/android/base/util/ay;->b(Landroid/content/Context;)I

    move-result v3

    iget-object v4, v0, Lcom/xueqiu/android/common/widget/f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1246
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1247
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/f;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 322
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v5, v5, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 323
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$11$1;->a:Lcom/xueqiu/android/trade/c/b$11;

    iget-object v1, v1, Lcom/xueqiu/android/trade/c/b$11;->a:Lcom/xueqiu/android/trade/c/b;

    .line 1259
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/f;->f:Landroid/widget/LinearLayout;

    .line 323
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 324
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method
