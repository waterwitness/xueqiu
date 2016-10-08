.class public Lcom/xueqiu/android/stock/PortfolioCategoryActivity;
.super Lcom/xueqiu/android/common/b;
.source "PortfolioCategoryActivity.java"


# instance fields
.field private j:J

.field private k:Lcom/xueqiu/android/stock/c/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 27
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_user_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->j:J

    .line 28
    if-nez p1, :cond_0

    .line 29
    iget-wide v2, p0, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->j:J

    invoke-static {v2, v3}, Lcom/xueqiu/android/stock/c/k;->a(J)Lcom/xueqiu/android/stock/c/k;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->k:Lcom/xueqiu/android/stock/c/k;

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 31
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->k:Lcom/xueqiu/android/stock/c/k;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->setContentView(Landroid/view/View;)V

    .line 34
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->k:Lcom/xueqiu/android/stock/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->k:Lcom/xueqiu/android/stock/c/k;

    .line 1166
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 38
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/PortfolioCategoryActivity;->k:Lcom/xueqiu/android/stock/c/k;

    .line 2166
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/k;->a:Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    .line 38
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
