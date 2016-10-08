.class public final Lcom/xueqiu/android/trade/d/d;
.super Ljava/lang/Object;
.source "OrderFullPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/trade/b/e;


# instance fields
.field a:Lcom/xueqiu/android/trade/b/f;

.field b:Landroid/os/Handler;

.field c:Landroid/content/Context;

.field d:Lcom/xueqiu/android/stock/model/StockQuote;

.field e:Lcom/xueqiu/android/trade/d/e;

.field private f:Lcom/xueqiu/android/base/b/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/trade/b/f;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/d;->b:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/xueqiu/android/trade/d/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/trade/d/e;-><init>(Lcom/xueqiu/android/trade/d/d;B)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/d;->e:Lcom/xueqiu/android/trade/d/e;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/d;->f:Lcom/xueqiu/android/base/b/x;

    .line 52
    iput-object p2, p0, Lcom/xueqiu/android/trade/d/d;->a:Lcom/xueqiu/android/trade/b/f;

    .line 53
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/d;->c:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/d/d;)V
    .locals 4

    .prologue
    .line 41
    .line 1151
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->f:Lcom/xueqiu/android/base/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->f:Lcom/xueqiu/android/base/b/x;

    .line 1538
    iget-boolean v0, v0, Lcom/android/volley/n;->i:Z

    .line 1152
    if-eqz v0, :cond_1

    .line 1154
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/d/d$2;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->c:Landroid/content/Context;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/trade/d/d$2;-><init>(Lcom/xueqiu/android/trade/d/d;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/b/ai;->c(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/d/d;->f:Lcom/xueqiu/android/base/b/x;

    .line 1179
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->c:Landroid/content/Context;

    check-cast v0, Lcom/xueqiu/android/common/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d;->f:Lcom/xueqiu/android/base/b/x;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public final a(Lcom/google/gson/JsonArray;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->setCurrent(D)V

    .line 230
    :cond_1
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->setChange(D)V

    .line 234
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {p1, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;->setPercentage(D)V

    .line 237
    :cond_3
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 238
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/h;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->setUpdateTime(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->a:Lcom/xueqiu/android/trade/b/f;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/f;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    goto/16 :goto_0

    .line 243
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/xueqiu/android/stock/model/StockQuote;)V
    .locals 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d;->e:Lcom/xueqiu/android/trade/d/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d;->e:Lcom/xueqiu/android/trade/d/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    new-instance v1, Lcom/xueqiu/android/base/b/r;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/r;-><init>()V

    .line 63
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/trade/d/d$1;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->a:Lcom/xueqiu/android/trade/b/f;

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-direct {v3, p0, v0, p1}, Lcom/xueqiu/android/trade/d/d$1;-><init>(Lcom/xueqiu/android/trade/d/d;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3, v1}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;Lcom/xueqiu/android/base/b/r;)Lcom/xueqiu/android/base/b/x;

    .line 110
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d;->e:Lcom/xueqiu/android/trade/d/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d;->e:Lcom/xueqiu/android/trade/d/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/d/d;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 132
    return-void
.end method
