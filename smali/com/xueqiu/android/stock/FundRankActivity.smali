.class public Lcom/xueqiu/android/stock/FundRankActivity;
.super Lcom/xueqiu/android/common/b;
.source "FundRankActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final e()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FundRankActivity;->setTheme(I)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FundRankActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_rank_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/FundRankActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FundRankActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_fund_type_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const v2, 0x7f0e001b

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 35
    if-nez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/FundRankActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 37
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-static {v0}, Lcom/xueqiu/android/stock/e;->b(I)Lcom/xueqiu/android/stock/e;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 40
    :cond_0
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/stock/FundRankActivity;->setContentView(Landroid/view/View;)V

    .line 41
    return-void
.end method
