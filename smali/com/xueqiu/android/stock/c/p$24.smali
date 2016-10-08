.class final Lcom/xueqiu/android/stock/c/p$24;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$24;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$24;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->d(Lcom/xueqiu/android/stock/c/p;)Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 316
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$24;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/a/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 317
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$24;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v1

    .line 1591
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    .line 318
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 319
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$24;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/p;->f(Lcom/xueqiu/android/stock/c/p;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 323
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$24;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/p;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    const-string v3, "extra_cube_symbol"

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v2

    .line 324
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x578

    const/4 v4, 0x7

    invoke-direct {v1, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 329
    :goto_0
    const-string v3, "symbol"

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$24;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/c/p;->a(Landroid/content/Intent;)V

    .line 334
    :cond_0
    return-void

    .line 326
    :cond_1
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x4b0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 327
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$24;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/p;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0
.end method
