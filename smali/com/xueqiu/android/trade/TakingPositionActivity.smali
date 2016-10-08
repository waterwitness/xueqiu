.class public Lcom/xueqiu/android/trade/TakingPositionActivity;
.super Lcom/xueqiu/android/common/b;
.source "TakingPositionActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/stock/model/StockQuote;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/TakingPositionActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    const-string v1, "tag_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(Ljava/lang/String;)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/m;

    .line 1237
    iget-object v1, v0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1238
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1239
    const/4 v0, 0x0

    .line 63
    :goto_0
    if-eqz v0, :cond_0

    .line 64
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 66
    :cond_0
    return-void

    .line 1241
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0018

    const/4 v2, -0x1

    .line 32
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/TakingPositionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/TakingPositionActivity;->k:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/TakingPositionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    const-string v1, "extra_stock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    iput-object v0, p0, Lcom/xueqiu/android/trade/TakingPositionActivity;->j:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 40
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 42
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/trade/TakingPositionActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    if-nez p1, :cond_2

    .line 46
    new-instance v1, Lcom/xueqiu/android/trade/c/m;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/c/m;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/TakingPositionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    :cond_1
    const-string v2, "arg_stock"

    iget-object v3, p0, Lcom/xueqiu/android/trade/TakingPositionActivity;->j:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    const-string v2, "arg_url"

    iget-object v3, p0, Lcom/xueqiu/android/trade/TakingPositionActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/support/v4/a/i;->e(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/TakingPositionActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    .line 55
    const-string v2, "tag_fragment"

    invoke-virtual {v0, v4, v1, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;Ljava/lang/String;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 57
    :cond_2
    return-void
.end method
