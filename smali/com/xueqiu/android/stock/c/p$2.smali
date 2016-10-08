.class final Lcom/xueqiu/android/stock/c/p$2;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->f()V

    .line 532
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 533
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 525
    check-cast p1, Ljava/util/List;

    .line 1538
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->f()V

    .line 1542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1544
    new-instance v3, Lcom/xueqiu/android/stock/model/PortfolioStock;

    invoke-direct {v3}, Lcom/xueqiu/android/stock/model/PortfolioStock;-><init>()V

    .line 1545
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->setCode(Ljava/lang/String;)V

    .line 1546
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->setStockName(Ljava/lang/String;)V

    .line 1547
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    .line 1580
    iput-object v1, v0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    .line 1550
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/a/q;->a(Ljava/util/List;)V

    .line 1551
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->j(Lcom/xueqiu/android/stock/c/p;)V

    .line 1552
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->b()V

    .line 1553
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 1554
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$2;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/p;->b(Lcom/xueqiu/android/stock/c/p;Ljava/util/List;)V

    .line 525
    :cond_1
    return-void
.end method
