.class final Lcom/xueqiu/android/trade/d/d$3;
.super Ljava/lang/Object;
.source "OrderFullPresenter.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
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
.method constructor <init>(Lcom/xueqiu/android/trade/d/d;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/d$3;->a:Lcom/xueqiu/android/trade/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 203
    check-cast p1, Ljava/util/Map;

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/d$3;->a:Lcom/xueqiu/android/trade/d/d;

    iget-object v0, p0, Lcom/xueqiu/android/trade/d/d$3;->a:Lcom/xueqiu/android/trade/d/d;

    .line 2041
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/d;->d:Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1207
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/d/d;->a(Lcom/google/gson/JsonArray;)V

    .line 1208
    const-string v0, "StockDetailView"

    const-string v1, "\u80a1\u4ef7\u66f4\u65b0\u6210\u529f QuoteFragment"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :goto_0
    return-void

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    const-string v1, "StockDetailView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u80a1\u4ef7\u66f4\u65b0\u5931\u8d25 QuoteFragment"

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
