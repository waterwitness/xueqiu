.class final Lcom/xueqiu/android/trade/d/a$12;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 246
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 224
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1228
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 2275
    const-string v0, "stock"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 2276
    if-eqz v1, :cond_1

    .line 2303
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v3, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 2304
    iget-object v3, v2, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v3, v0}, Lcom/xueqiu/android/trade/b/c;->a(Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 2280
    const-string v0, "code"

    iget-object v3, v2, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    .line 2281
    const-string v0, "name"

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/trade/d/a;->d:Ljava/lang/String;

    .line 2282
    const-string v0, "current"

    .line 3098
    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3099
    const-wide/16 v0, 0x0

    .line 2282
    :goto_0
    iput-wide v0, v2, Lcom/xueqiu/android/trade/d/a;->m:D

    .line 2283
    const-string v0, "trade"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 2284
    if-eqz v0, :cond_1

    .line 2287
    const-string v1, "etype"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 2288
    const-string v1, "broker_list"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/trade/d/a;->z:Lcom/google/gson/JsonArray;

    .line 2289
    iget-object v0, v2, Lcom/xueqiu/android/trade/d/a;->z:Lcom/google/gson/JsonArray;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v2, Lcom/xueqiu/android/trade/d/a;->j:Ljava/util/ArrayList;

    .line 2290
    iget-object v0, v2, Lcom/xueqiu/android/trade/d/a;->z:Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    .line 2291
    iget-object v0, v2, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    iget-object v1, v2, Lcom/xueqiu/android/trade/d/a;->j:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/util/ArrayList;)V

    .line 2293
    :cond_0
    iget-object v0, v2, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2294
    iget-object v0, v2, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2295
    iget-object v0, v2, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, v5}, Lcom/xueqiu/android/trade/b/c;->b(Z)V

    .line 1229
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->t:Ljava/lang/String;

    .line 1229
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 1229
    if-eqz v0, :cond_3

    .line 1230
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-boolean v0, v0, Lcom/xueqiu/android/trade/d/a;->g:Z

    .line 1230
    if-eqz v0, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->z:Lcom/google/gson/JsonArray;

    .line 1231
    invoke-static {v1}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonArray;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradeAccountByStockBrokers(Ljava/util/List;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v1

    .line 8069
    iput-object v1, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1232
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 9069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1232
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 10069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->j:Ljava/util/ArrayList;

    .line 1232
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/trade/d/a;->a(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/trade/model/TradeAccount;I)V

    .line 1233
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 11069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1233
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 12069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1233
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 13069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 1233
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->isSwitchExchangeMantaince()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1234
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 14069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 15251
    const-string v2, "\u63d0\u793a"

    .line 15252
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getSwitchExchangeMsg()Ljava/lang/String;

    move-result-object v1

    .line 15253
    iget-object v3, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v4, Lcom/xueqiu/android/trade/d/a$16;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/trade/d/a$16;-><init>(Lcom/xueqiu/android/trade/d/a;)V

    invoke-static {v3, v4}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v3

    .line 15266
    invoke-virtual {v3, v2}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v2

    .line 15267
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    .line 16127
    const/16 v2, 0x11

    iput v2, v1, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 15269
    invoke-virtual {v1, v5}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    iget-object v2, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    const v3, 0x7f0700b1

    .line 15270
    invoke-virtual {v2, v3}, Lcom/xueqiu/android/common/b;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    .line 15271
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->y:Lcom/xueqiu/android/common/widget/f;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 1239
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 19069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->u:Ljava/lang/String;

    .line 1239
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 20069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    .line 21069
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/trade/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_3
    return-void

    .line 3101
    :cond_4
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    goto/16 :goto_0

    .line 2297
    :cond_5
    iget-object v0, v2, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0, v4}, Lcom/xueqiu/android/trade/b/c;->b(Z)V

    goto/16 :goto_1

    .line 1236
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$12;->a:Lcom/xueqiu/android/trade/d/a;

    .line 17069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 18333
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 18334
    iget-boolean v2, v0, Lcom/xueqiu/android/trade/d/a;->A:Z

    if-nez v2, :cond_2

    .line 18335
    iput-boolean v4, v0, Lcom/xueqiu/android/trade/d/a;->A:Z

    .line 18336
    iget-object v2, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    new-instance v3, Lcom/xueqiu/android/trade/d/a$17;

    invoke-direct {v3, v0, v1}, Lcom/xueqiu/android/trade/d/a$17;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    invoke-static {v2, v1, v3}, Lcom/xueqiu/android/trade/c;->a(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;Lrx/c/b;)V

    goto :goto_2

    .line 18349
    :cond_7
    iget-object v1, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v1}, Lcom/xueqiu/android/trade/b/c;->G_()V

    .line 18350
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/c;->I_()V

    goto :goto_2
.end method
