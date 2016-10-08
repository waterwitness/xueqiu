.class public Lcom/xueqiu/android/stock/StockRemindingActivity;
.super Lcom/xueqiu/android/common/b;
.source "StockRemindingActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/stock/model/StockQuote;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRemindingActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v1, "remind_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/z;

    .line 1132
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1133
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1134
    const/4 v0, 0x0

    .line 48
    :goto_0
    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 51
    :cond_0
    return-void

    .line 1136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, -0x1

    .line 25
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRemindingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_stock_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/stock/StockRemindingActivity;->j:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 29
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 31
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/stock/StockRemindingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Lcom/xueqiu/android/stock/c/z;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/c/z;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v2, "extra_stock_info"

    iget-object v3, p0, Lcom/xueqiu/android/stock/StockRemindingActivity;->j:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/StockRemindingActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v1

    .line 40
    const-string v2, "remind_fragment"

    invoke-virtual {v1, v4, v0, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 42
    :cond_0
    return-void
.end method
