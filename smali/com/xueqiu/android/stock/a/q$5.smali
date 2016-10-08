.class final Lcom/xueqiu/android/stock/a/q$5;
.super Ljava/lang/Object;
.source "PortfolioListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/q;->b()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/stock/model/PortfolioStock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/a/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/q;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/q$5;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const-wide/16 v2, 0x0

    .line 458
    check-cast p1, Lcom/xueqiu/android/stock/model/PortfolioStock;

    check-cast p2, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 1462
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$5;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->f(Lcom/xueqiu/android/stock/a/q;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1463
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q$5;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/q;->f(Lcom/xueqiu/android/stock/a/q;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1464
    iget-object v4, p0, Lcom/xueqiu/android/stock/a/q$5;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v4}, Lcom/xueqiu/android/stock/a/q;->a(Lcom/xueqiu/android/stock/a/q;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1465
    iget-object v4, p0, Lcom/xueqiu/android/stock/a/q$5;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v4}, Lcom/xueqiu/android/stock/a/q;->d(Lcom/xueqiu/android/stock/a/q;)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1466
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v4

    .line 1467
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getChange()D

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    move-wide v0, v4

    .line 1484
    :goto_2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q$5;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/q;->b(Lcom/xueqiu/android/stock/a/q;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 458
    return v0

    :cond_0
    move-wide v4, v2

    .line 1466
    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 1467
    goto :goto_1

    .line 1469
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getDailyGain()D

    move-result-wide v4

    .line 1470
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDailyGain()D

    move-result-wide v2

    :cond_3
    move-wide v0, v4

    goto :goto_2

    :cond_4
    move-wide v4, v2

    .line 1469
    goto :goto_3

    .line 1472
    :cond_5
    iget-object v4, p0, Lcom/xueqiu/android/stock/a/q$5;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v4}, Lcom/xueqiu/android/stock/a/q;->a(Lcom/xueqiu/android/stock/a/q;)I

    move-result v4

    if-nez v4, :cond_b

    .line 1473
    iget-object v4, p0, Lcom/xueqiu/android/stock/a/q$5;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v4}, Lcom/xueqiu/android/stock/a/q;->d(Lcom/xueqiu/android/stock/a/q;)I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 1474
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v4

    .line 1475
    :goto_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v2

    :cond_6
    move-wide v0, v4

    goto :goto_2

    :cond_7
    move-wide v4, v2

    .line 1474
    goto :goto_4

    .line 1477
    :cond_8
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getDailyGain()D

    move-result-wide v4

    .line 1478
    :goto_5
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDailyGain()D

    move-result-wide v2

    :cond_9
    move-wide v0, v4

    goto :goto_2

    :cond_a
    move-wide v4, v2

    .line 1477
    goto :goto_5

    .line 1481
    :cond_b
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarketCapital()D

    move-result-wide v4

    .line 1482
    :goto_6
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarketCapital()D

    move-result-wide v2

    :cond_c
    move-wide v0, v4

    goto :goto_2

    :cond_d
    move-wide v4, v2

    .line 1481
    goto :goto_6
.end method
