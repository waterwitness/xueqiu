.class public Lcom/xueqiu/android/stock/BondBuyBackActivity;
.super Lcom/xueqiu/android/common/b;
.source "BondBuyBackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final e()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const v0, 0x7f0a0059

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/BondBuyBackActivity;->setTheme(I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f0702b5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/BondBuyBackActivity;->setTitle(I)V

    .line 28
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/BondBuyBackActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 32
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    invoke-static {}, Lcom/xueqiu/android/stock/c/a;->u()Lcom/xueqiu/android/stock/c/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/support/v4/a/ac;->d()I

    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/BondBuyBackActivity;->setContentView(Landroid/view/View;)V

    .line 36
    return-void
.end method
