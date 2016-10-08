.class final Lcom/xueqiu/android/trade/d/d$1;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFullPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/d;->a(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/trade/d/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/d;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/d$1;->b:Lcom/xueqiu/android/trade/d/d;

    iput-object p3, p0, Lcom/xueqiu/android/trade/d/d$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockQuote;->setSymbol(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/StockQuote;->setName(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/xueqiu/android/stockchart/e/h;

    invoke-direct {v1}, Lcom/xueqiu/android/stockchart/e/h;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 1034
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2026
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->a:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/d$1;->b:Lcom/xueqiu/android/trade/d/d;

    .line 2041
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/d;->a:Lcom/xueqiu/android/trade/b/f;

    .line 73
    invoke-interface {v2, v0, v1}, Lcom/xueqiu/android/trade/b/f;->a(Lcom/xueqiu/android/stock/model/StockQuote;Lcom/xueqiu/android/stockchart/e/h;)V

    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d$1;->b:Lcom/xueqiu/android/trade/d/d;

    .line 3041
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/d;->a:Lcom/xueqiu/android/trade/b/f;

    .line 74
    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/f;->l()V

    .line 75
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-nez v0, :cond_0

    .line 76
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 78
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 64
    check-cast p1, Ljava/util/Map;

    .line 3082
    new-instance v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>()V

    .line 3083
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3084
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3085
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3086
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 3092
    :cond_0
    new-instance v1, Lcom/xueqiu/android/stockchart/e/h;

    invoke-direct {v1}, Lcom/xueqiu/android/stockchart/e/h;-><init>()V

    .line 3093
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/d$1;->a:Ljava/lang/String;

    .line 4034
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->b:Ljava/lang/String;

    .line 3094
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5026
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->a:Ljava/lang/String;

    .line 3095
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    .line 5034
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->b:Ljava/lang/String;

    .line 3096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getVolume()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->e(Ljava/lang/String;)V

    .line 3097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrent()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->c(Ljava/lang/String;)V

    .line 3098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getLastClose()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->a(Ljava/lang/String;)V

    .line 3099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getPercentage()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->d(Ljava/lang/String;)V

    .line 3100
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v2

    .line 5091
    iput-wide v2, v1, Lcom/xueqiu/android/stockchart/e/h;->i:D

    .line 3101
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/e/h;->b(Ljava/lang/String;)V

    .line 3102
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6083
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->h:Ljava/lang/String;

    .line 3107
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/d$1;->b:Lcom/xueqiu/android/trade/d/d;

    .line 8041
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/d;->a:Lcom/xueqiu/android/trade/b/f;

    .line 3107
    invoke-interface {v2, v0, v1}, Lcom/xueqiu/android/trade/b/f;->a(Lcom/xueqiu/android/stock/model/StockQuote;Lcom/xueqiu/android/stockchart/e/h;)V

    .line 3088
    :cond_1
    return-void

    .line 3105
    :cond_2
    const-string v2, ""

    .line 7083
    iput-object v2, v1, Lcom/xueqiu/android/stockchart/e/h;->h:Ljava/lang/String;

    goto :goto_0
.end method
