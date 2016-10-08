.class public Lcom/xueqiu/android/trade/OrderActivity;
.super Lcom/xueqiu/android/common/b;
.source "OrderActivity.java"


# instance fields
.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderActivity;->j:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 21
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/OrderActivity;->j:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderActivity;->j:Landroid/view/View;

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 24
    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_arguments"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->g(Landroid/os/Bundle;)Lcom/xueqiu/android/trade/c/e;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/OrderActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/OrderActivity;->j:Landroid/view/View;

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderActivity;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/OrderActivity;->setContentView(Landroid/view/View;)V

    .line 33
    return-void
.end method
