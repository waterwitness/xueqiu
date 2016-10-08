.class final Lcom/xueqiu/android/stock/c/p$28;
.super Lcom/xueqiu/android/base/b/p;
.source "PortfolioItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/model/Portfolio;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$28;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$28;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$28;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->f()V

    .line 504
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 505
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$28;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 497
    check-cast p1, Ljava/util/ArrayList;

    .line 1510
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$28;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$28;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->f()V

    .line 1514
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1515
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 1516
    new-instance v3, Lcom/xueqiu/android/stock/model/PortfolioStock;

    invoke-direct {v3}, Lcom/xueqiu/android/stock/model/PortfolioStock;-><init>()V

    .line 1517
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/stock/model/PortfolioStock;->setCode(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->setStockName(Ljava/lang/String;)V

    .line 1519
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1521
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$28;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/c/p;Ljava/util/List;)V

    .line 497
    :cond_1
    return-void
.end method
