.class final Lcom/xueqiu/android/stock/c/p$25$1;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/p$25;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/model/PortfolioStock;

.field final synthetic b:Lcom/xueqiu/android/stock/c/p$25;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p$25;Lcom/xueqiu/android/stock/model/PortfolioStock;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$25$1;->b:Lcom/xueqiu/android/stock/c/p$25;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/p$25$1;->a:Lcom/xueqiu/android/stock/model/PortfolioStock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$25$1;->b:Lcom/xueqiu/android/stock/c/p$25;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    .line 1591
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    .line 360
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$25$1;->a:Lcom/xueqiu/android/stock/model/PortfolioStock;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 361
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->g(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    const v0, 0x7f070469

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_0
    const/4 v1, 0x1

    .line 366
    if-nez p2, :cond_1

    .line 367
    const/4 v1, 0x0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$25$1;->b:Lcom/xueqiu/android/stock/c/p$25;

    iget-object v2, v2, Lcom/xueqiu/android/stock/c/p$25;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/c/p;Ljava/lang/String;Z)V

    goto :goto_0
.end method
