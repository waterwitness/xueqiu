.class final Lcom/xueqiu/android/stock/a/u$2;
.super Ljava/lang/Object;
.source "QuoteRankListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xueqiu/android/stock/a/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/u;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/u$2;->d:Lcom/xueqiu/android/stock/a/u;

    iput p2, p0, Lcom/xueqiu/android/stock/a/u$2;->a:I

    iput p3, p0, Lcom/xueqiu/android/stock/a/u$2;->b:I

    iput-object p4, p0, Lcom/xueqiu/android/stock/a/u$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 222
    iget v0, p0, Lcom/xueqiu/android/stock/a/u$2;->a:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u$2;->d:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/u;->b(Lcom/xueqiu/android/stock/a/u;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/a/u$2;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 227
    instance-of v0, v1, Lcom/xueqiu/android/stock/model/StockRank;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 228
    check-cast v0, Lcom/xueqiu/android/stock/model/StockRank;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockRank;->getPortFolio()Lcom/xueqiu/android/stock/model/OldPortFolio;

    move-result-object v2

    .line 229
    const/4 v0, 0x0

    .line 230
    if-eqz v2, :cond_3

    .line 231
    new-instance v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/OldPortFolio;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u$2;->d:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$2;->d:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v2}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$2;->d:Lcom/xueqiu/android/stock/a/u;

    iget v3, p0, Lcom/xueqiu/android/stock/a/u$2;->a:I

    invoke-static {v2, v3}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0xaf0

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 245
    const-string v3, "board_name"

    invoke-virtual {v2, v3, v1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "symbol"

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 233
    :cond_3
    check-cast v1, Lcom/xueqiu/android/stock/model/StockRank;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockRank;->getAhStockQuote()Lcom/xueqiu/android/stock/model/AHStockQuote;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_2

    .line 235
    new-instance v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getNameHk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getSymbolHk()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
