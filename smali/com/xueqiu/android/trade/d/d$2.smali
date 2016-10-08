.class final Lcom/xueqiu/android/trade/d/d$2;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFullPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/d;
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
.field final synthetic a:Lcom/xueqiu/android/trade/d/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/d;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/d$2;->a:Lcom/xueqiu/android/trade/d/d;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 158
    const-string v0, "StockDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http-\u80a1\u4ef7\u66f4\u65b0\u5931\u8d25\u2014\u2014QuoteFragment\uff0c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 155
    check-cast p1, Ljava/util/Map;

    .line 1163
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d$2;->a:Lcom/xueqiu/android/trade/d/d;

    .line 2041
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1163
    if-eqz v0, :cond_0

    .line 1167
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1169
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d$2;->a:Lcom/xueqiu/android/trade/d/d;

    .line 3041
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1169
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    .line 1170
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d$2;->a:Lcom/xueqiu/android/trade/d/d;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/d/d;->a(Lcom/google/gson/JsonArray;)V

    .line 1171
    const-string v0, "StockDetailView"

    const-string v1, "http-\u80a1\u4ef7\u66f4\u65b0\u6210\u529f\u2014\u2014QuoteFragment"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1172
    :catch_0
    move-exception v0

    .line 1173
    const-string v1, "StockDetailView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http-\u80a1\u4ef7\u66f4\u65b0\u5931\u8d25\u2014\u2014QuoteFragment"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
