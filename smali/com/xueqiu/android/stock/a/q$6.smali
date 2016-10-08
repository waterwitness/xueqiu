.class final Lcom/xueqiu/android/stock/a/q$6;
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
    .line 488
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/q$6;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 488
    check-cast p1, Lcom/xueqiu/android/stock/model/PortfolioStock;

    check-cast p2, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 1492
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$6;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->f(Lcom/xueqiu/android/stock/a/q;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1493
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q$6;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/q;->f(Lcom/xueqiu/android/stock/a/q;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1494
    iget-object v4, p0, Lcom/xueqiu/android/stock/a/q$6;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v4}, Lcom/xueqiu/android/stock/a/q;->d(Lcom/xueqiu/android/stock/a/q;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1495
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    .line 1496
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v0

    :goto_1
    move-wide v2, v4

    .line 1502
    :goto_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q$6;->a:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/q;->g(Lcom/xueqiu/android/stock/a/q;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 488
    return v0

    :cond_0
    move-wide v4, v2

    .line 1495
    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 1496
    goto :goto_1

    .line 1498
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetValue()D

    move-result-wide v4

    .line 1499
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetValue()D

    move-result-wide v2

    :cond_3
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_2

    :cond_4
    move-wide v4, v2

    .line 1498
    goto :goto_3
.end method
