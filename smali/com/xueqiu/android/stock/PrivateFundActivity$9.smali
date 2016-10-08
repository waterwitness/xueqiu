.class final Lcom/xueqiu/android/stock/PrivateFundActivity$9;
.super Lcom/xueqiu/android/base/b/p;
.source "PrivateFundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
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
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 652
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->i()V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 645
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1657
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1658
    const-string v3, "extra_portfolio_category"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1659
    iget-object v3, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1660
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1661
    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v3}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->setFollowing(Z)V

    .line 1662
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->l(Lcom/xueqiu/android/stock/PrivateFundActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1663
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1664
    const-string v1, "\u5df2\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1666
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    const v1, 0x7f07037f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    const v2, 0x7f070445

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 1667
    invoke-static {v5}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 1668
    invoke-static {v5}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v5}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v5}, Lcom/xueqiu/android/stock/PrivateFundActivity;->m(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "since_founded_growth_rate"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1667
    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 1668
    invoke-static {v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1666
    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/community/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xueqiu/android/community/c/q;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 1669
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->c()Landroid/support/v4/a/q;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/community/c/q;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/c/q;->a(Landroid/support/v4/a/q;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->i()V

    .line 645
    return-void

    :cond_0
    move v0, v1

    .line 1661
    goto/16 :goto_0

    .line 1671
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1674
    :cond_1
    const-string v1, "\u5173\u6ce8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1677
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$9;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
