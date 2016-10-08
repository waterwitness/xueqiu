.class final Lcom/xueqiu/android/stock/c/x$6;
.super Lcom/xueqiu/android/base/b/p;
.source "StockDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1515
    :cond_1
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1516
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->z()V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1509
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 2521
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/x;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2525
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2526
    const-string v3, "extra_portfolio_category"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2527
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 2528
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2529
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->setFollowing(Z)V

    .line 2531
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->D(Lcom/xueqiu/android/stock/c/x;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2533
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2534
    const-string v1, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2537
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2538
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 2529
    goto :goto_0

    .line 2541
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    const v1, 0x7f07037f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    const v2, 0x7f070447

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    .line 2542
    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/c/x;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "stock"

    .line 2541
    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/community/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xueqiu/android/community/c/q;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    .line 2543
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->i()Landroid/support/v4/a/q;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/community/c/q;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/c/q;->a(Landroid/support/v4/a/q;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2553
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->n(Lcom/xueqiu/android/stock/c/x;)V

    .line 2558
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->z()V

    goto :goto_1

    .line 2544
    :catch_0
    move-exception v0

    .line 2547
    const-string v1, "StockDetailFragment"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2550
    :cond_3
    const-string v1, "\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2555
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$6;->a:Lcom/xueqiu/android/stock/c/x;

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/x;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_3
.end method
