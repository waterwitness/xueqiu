.class public Lcom/xueqiu/android/stock/InvestmentCalendarActivity;
.super Lcom/xueqiu/android/common/b;
.source "InvestmentCalendarActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 610
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 75
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->b(Z)V

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 79
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v1, Lcom/xueqiu/android/stock/h;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/h;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stock/h;->e(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalendarActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 88
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/InvestmentCalendarActivity;->setContentView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 603
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/InvestmentCalendarActivity;->onBackPressed()V

    .line 605
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
