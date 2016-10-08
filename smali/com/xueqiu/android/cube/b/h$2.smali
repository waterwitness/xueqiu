.class final Lcom/xueqiu/android/cube/b/h$2;
.super Lcom/xueqiu/android/base/b/p;
.source "RebalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->H()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/gson/JsonArray;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 608
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 609
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 605
    check-cast p1, Ljava/util/Map;

    .line 1613
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->g(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/a/d;

    move-result-object v0

    .line 2347
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->h:Ljava/util/Map;

    .line 1613
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1614
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1615
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonArray;

    .line 1616
    new-instance v3, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v3}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>()V

    .line 1617
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/StockQuote;->setCurrent(D)V

    .line 1618
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/StockQuote;->setChange(D)V

    .line 1619
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/stock/model/StockQuote;->setPercentage(D)V

    .line 1620
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/h;->g(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/a/d;

    move-result-object v1

    .line 3347
    iget-object v1, v1, Lcom/xueqiu/android/cube/a/d;->h:Ljava/util/Map;

    .line 1620
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->f(Lcom/xueqiu/android/cube/b/h;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->i(Lcom/xueqiu/android/cube/b/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v2}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getLastSuccessRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/cube/model/Rebalancing;)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/b/h;->a(Lcom/xueqiu/android/cube/b/h;Ljava/lang/Double;)Ljava/lang/Double;

    .line 1625
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->g(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v1}, Lcom/xueqiu/android/cube/b/h;->j(Lcom/xueqiu/android/cube/b/h;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 3363
    iput-wide v2, v0, Lcom/xueqiu/android/cube/a/d;->f:D

    .line 1627
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$2;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->g(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->notifyDataSetChanged()V

    .line 605
    return-void
.end method
