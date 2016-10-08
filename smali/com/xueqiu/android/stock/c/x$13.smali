.class final Lcom/xueqiu/android/stock/c/x$13;
.super Lcom/xueqiu/android/base/b/p;
.source "StockDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/x;->u()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 693
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 694
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 690
    check-cast p1, Ljava/util/Map;

    .line 1698
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1702
    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 1703
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1704
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/c/x;Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1710
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getExchange()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getExchange()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DJ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/c/x;Z)Z

    .line 1711
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/c/x;I)I

    .line 1714
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->l(Lcom/xueqiu/android/stock/c/x;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->m(Lcom/xueqiu/android/stock/c/x;)Z

    .line 1718
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->n(Lcom/xueqiu/android/stock/c/x;)V

    .line 1719
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->o(Lcom/xueqiu/android/stock/c/x;)V

    .line 1720
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->i()Landroid/support/v4/a/q;

    move-result-object v0

    const v1, 0x7f0e005a

    invoke-virtual {v0, v1}, Landroid/support/v4/a/q;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/t;

    .line 1721
    if-eqz v0, :cond_11

    .line 1722
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v1

    .line 3240
    iget-object v2, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 2239
    if-eqz v2, :cond_11

    .line 2240
    iput-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 2241
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    iput v1, v0, Lcom/xueqiu/android/stock/c/t;->g:I

    .line 2243
    new-instance v1, Lcom/xueqiu/android/stockchart/e/h;

    invoke-direct {v1}, Lcom/xueqiu/android/stockchart/e/h;-><init>()V

    iput-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    .line 2244
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    iget-object v2, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4026
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->a:Ljava/lang/String;

    .line 2245
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    iget-object v2, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 4034
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->b:Ljava/lang/String;

    .line 2246
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getVolume()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->e(Ljava/lang/String;)V

    .line 2247
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->c(Ljava/lang/String;)V

    .line 2248
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getLastClose()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->a(Ljava/lang/String;)V

    .line 2249
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->d(Ljava/lang/String;)V

    .line 2250
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    iget-object v2, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v2

    .line 4091
    iput-wide v2, v1, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 2252
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2253
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5083
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->h:Ljava/lang/String;

    .line 2258
    :goto_1
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->b(Ljava/lang/String;)V

    .line 2260
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    if-eqz v1, :cond_2

    .line 2261
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v1

    if-nez v1, :cond_17

    .line 2262
    const v1, 0x7f0e0606

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2269
    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    if-eqz v1, :cond_3

    .line 2270
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    iget-object v2, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    .line 7194
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 2271
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->e:Lcom/xueqiu/android/stockchart/d/b;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/d/b;->v()V

    .line 7285
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 7286
    const-string v2, "quote_type_filed_map_config"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7288
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7289
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 7290
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7291
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7292
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/t;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v2, v3, v1}, Lcom/xueqiu/android/base/util/as;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/c/t;->b:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7385
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/t;->u()V

    .line 8240
    iget-object v1, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 7387
    const v2, 0x7f0e0602

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7388
    const v2, 0x7f0e05fa

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7390
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->a(Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/base/util/at;

    move-result-object v3

    .line 7391
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/t;->h()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7393
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getAfterHoursChg()D

    move-result-wide v4

    .line 7394
    const-string v3, ""

    .line 7395
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_5

    .line 7396
    const-string v3, "+"

    .line 7398
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v7}, Lcom/xueqiu/android/stock/model/StockQuote;->getAfterHoursChg()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v6}, Lcom/xueqiu/android/stock/model/StockQuote;->getAfterHoursPct()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7399
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->c:Lcom/xueqiu/android/base/util/ar;

    invoke-virtual {v3, v4, v5}, Lcom/xueqiu/android/base/util/ar;->a(D)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9240
    iget-object v3, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 7401
    const v4, 0x7f0e0601

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7402
    iget-object v4, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getAfterHoursTime()Ljava/util/Calendar;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 7403
    iget-object v4, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getAfterHoursTime()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getHours()I

    move-result v4

    const/16 v5, 0xc

    if-gt v4, v5, :cond_19

    .line 7404
    const v4, 0x7f070043

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7408
    :goto_4
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7414
    :goto_5
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7417
    :cond_6
    const v1, 0x7f0e05ff

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    .line 7418
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b

    .line 7419
    const v3, 0x7f070110

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7420
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7444
    :cond_7
    :goto_6
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-nez v1, :cond_8

    .line 7445
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->ak:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7446
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->al:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7449
    :cond_8
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7451
    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->f(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 9486
    const v1, 0x7f0e0603

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v2

    .line 9487
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9489
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRatingAgencies()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 9490
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRating()I

    move-result v1

    if-lez v1, :cond_9

    .line 9491
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9492
    const v1, 0x7f0e01fb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9494
    const v1, 0x7f0e0612

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9495
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9496
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/t;->h()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 9497
    array-length v4, v3

    iget-object v5, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getRating()I

    move-result v5

    if-lt v4, v5, :cond_9

    .line 9498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getRatingAgencies()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getRating()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9502
    :cond_9
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 9503
    const v1, 0x7f0e0613

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9504
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9505
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9508
    :cond_a
    const v1, 0x7f0e0614

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9509
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSubscriptionStatus()I

    move-result v3

    if-nez v3, :cond_21

    .line 9510
    const v3, 0x7f0703d4

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9515
    :goto_7
    const v1, 0x7f0e0615

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9516
    iget-object v2, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getRedemptionStatus()I

    move-result v2

    if-nez v2, :cond_22

    .line 9517
    const v2, 0x7f0702e2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9522
    :goto_8
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v3

    .line 9523
    const/16 v1, 0x12

    if-ne v3, v1, :cond_b

    .line 9524
    const v1, 0x7f0e05fa

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9525
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9526
    const v2, 0x7f0701cb

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10240
    :cond_b
    iget-object v1, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 9529
    const v2, 0x7f0e05fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11240
    iget-object v2, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 9530
    const v4, 0x7f0e05fc

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9533
    const/16 v4, 0xd

    if-ne v3, v4, :cond_c

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 9534
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SZ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 9535
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 9536
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9537
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12240
    :goto_9
    iget-object v1, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 9543
    const v2, 0x7f0e0601

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13240
    iget-object v1, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 9544
    const v2, 0x7f0e0602

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15551
    :cond_e
    :goto_a
    iget-object v2, v0, Lcom/xueqiu/android/stock/c/t;->b:Ljava/util/List;

    .line 16240
    iget-object v1, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 15552
    const v3, 0x7f0e0604

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 15554
    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_28

    .line 15555
    :cond_f
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2277
    :cond_10
    :goto_b
    iget-object v0, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 18663
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    .line 1724
    :cond_11
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->p(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/trade/c/e;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1725
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->p(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/trade/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 1727
    :cond_12
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->q(Lcom/xueqiu/android/stock/c/x;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1728
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->r(Lcom/xueqiu/android/stock/c/x;)V

    .line 1729
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->s(Lcom/xueqiu/android/stock/c/x;)V

    .line 1732
    :cond_13
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->t(Lcom/xueqiu/android/stock/c/x;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1733
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1734
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1736
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1737
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$13;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->u(Lcom/xueqiu/android/stock/c/x;)Z

    .line 1706
    :cond_14
    return-void

    .line 1710
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2255
    :cond_16
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    const-string v2, ""

    .line 6083
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 2264
    :cond_17
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    iget-object v2, v0, Lcom/xueqiu/android/stock/c/t;->f:Lcom/xueqiu/android/stockchart/e/h;

    .line 6194
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/d/a;->ao:Lcom/xueqiu/android/stockchart/e/h;

    .line 2265
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->d:Lcom/xueqiu/android/stockchart/d/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/stockchart/d/c;->v()V

    goto/16 :goto_2

    .line 7293
    :cond_18
    :try_start_1
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->e(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7294
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/t;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/as;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/c/t;->b:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 7318
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 7406
    :cond_19
    const v4, 0x7f070027

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 7410
    :cond_1a
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7411
    const v3, 0x7f0e0602

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 7421
    :cond_1b
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 7422
    const v3, 0x7f070114

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7423
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 7424
    :cond_1c
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v3

    if-nez v3, :cond_1d

    .line 7425
    const v3, 0x7f070111

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7426
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 7427
    :cond_1d
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1e

    .line 7428
    const v3, 0x7f070112

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7429
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 7430
    :cond_1e
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getFlag()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1f

    .line 7431
    const v3, 0x7f070115

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7432
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 7433
    :cond_1f
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getRestDay()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 7434
    const v3, 0x7f070113

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v6}, Lcom/xueqiu/android/stock/model/StockQuote;->getRestDay()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/xueqiu/android/stock/c/t;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7435
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 7437
    :cond_20
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 7438
    const v3, 0x7f070116

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7439
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7440
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/t;->C()V

    goto/16 :goto_6

    .line 9512
    :cond_21
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 9519
    :cond_22
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 9539
    :cond_23
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9540
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 7455
    :cond_24
    const/16 v3, 0x13

    if-eq v1, v3, :cond_25

    const/16 v3, 0x16

    if-eq v1, v3, :cond_25

    const/16 v3, 0x14

    if-eq v1, v3, :cond_25

    const/16 v3, 0x15

    if-ne v1, v3, :cond_e

    .line 7460
    :cond_25
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->ak:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7461
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/t;->al:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14240
    iget-object v3, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 7462
    const v4, 0x7f0e0601

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15240
    iget-object v3, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 7463
    const v4, 0x7f0e0606

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7465
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7467
    const/16 v3, 0x16

    if-ne v1, v3, :cond_26

    .line 7468
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7469
    const v1, 0x7f0701c9

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 7471
    :cond_26
    const/16 v3, 0x14

    if-ne v1, v3, :cond_27

    .line 7472
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetAssets()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7473
    const v1, 0x7f0701ca

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7474
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7475
    const v1, 0x7f0e05ff

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 7477
    :cond_27
    const/16 v3, 0x15

    if-ne v1, v3, :cond_e

    .line 7478
    const v1, 0x7f07023e

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7479
    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7480
    const v1, 0x7f0e05ff

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 17240
    :cond_28
    iget-object v3, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 15559
    const v4, 0x7f0e0605

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15560
    new-instance v3, Lcom/xueqiu/android/stock/view/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/t;->f()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xueqiu/android/stock/view/a;-><init>(Landroid/content/Context;)V

    .line 15561
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/stock/view/a;->setData(Ljava/util/List;)V

    .line 18181
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/view/a;->invalidate()V

    .line 15564
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15566
    new-instance v3, Lcom/xueqiu/android/stock/c/t$5;

    invoke-direct {v3, v0, v2}, Lcom/xueqiu/android/stock/c/t$5;-><init>(Lcom/xueqiu/android/stock/c/t;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15595
    iget-object v1, v0, Lcom/xueqiu/android/stock/c/t;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_10

    .line 15596
    const v1, 0x7f0e0600

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/t;->c(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b
.end method
