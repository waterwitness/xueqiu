.class final Lcom/xueqiu/android/common/widget/p$4;
.super Ljava/lang/Object;
.source "KeyboardUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/p;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/p;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/p$4;->a:Lcom/xueqiu/android/common/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 326
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$4;->a:Lcom/xueqiu/android/common/widget/p;

    .line 1023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->d:Lcom/xueqiu/android/common/widget/SNBKeyboardView;

    .line 326
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/widget/SNBKeyboardView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$4;->a:Lcom/xueqiu/android/common/widget/p;

    .line 2023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->a:Landroid/widget/LinearLayout;

    .line 327
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$4;->a:Lcom/xueqiu/android/common/widget/p;

    .line 3023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->a:Landroid/widget/LinearLayout;

    .line 328
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/p$4;->a:Lcom/xueqiu/android/common/widget/p;

    .line 4023
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 331
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/p$4;->a:Lcom/xueqiu/android/common/widget/p;

    .line 5023
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/p;->c:Landroid/view/View;

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method
