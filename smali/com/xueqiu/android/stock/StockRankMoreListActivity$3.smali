.class final Lcom/xueqiu/android/stock/StockRankMoreListActivity$3;
.super Ljava/lang/Object;
.source "StockRankMoreListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/StockRankMoreListActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/OldPortFolio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockRankMoreListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity$3;->a:Lcom/xueqiu/android/stock/StockRankMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 393
    .line 1396
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1398
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity$3;->a:Lcom/xueqiu/android/stock/StockRankMoreListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->b(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1399
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/StockRank;->parseAmountAndTurnoverRateRankResult(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1401
    :goto_0
    return-object v0

    .line 1400
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockRankMoreListActivity$3;->a:Lcom/xueqiu/android/stock/StockRankMoreListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockRankMoreListActivity;->b(Lcom/xueqiu/android/stock/StockRankMoreListActivity;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1401
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/model/StockRank;->parseAmountAndTurnoverRateRankResult(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1403
    :cond_1
    invoke-static {v0}, Lcom/xueqiu/android/stock/model/StockRank;->parseUpsOrDownsRankResult(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method
