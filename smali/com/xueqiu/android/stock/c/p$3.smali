.class final Lcom/xueqiu/android/stock/c/p$3;
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
        "Lcom/xueqiu/android/stock/model/PortfolioStock;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->f()V

    .line 567
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 568
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    .line 1639
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1640
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/q;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1642
    :cond_2
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1643
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1645
    :cond_3
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 570
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    .line 571
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->j(Lcom/xueqiu/android/stock/c/p;)V

    .line 572
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 560
    check-cast p1, Ljava/util/List;

    .line 2578
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2581
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/x;->f()V

    .line 2582
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$3;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/c/p;Ljava/util/List;)V

    .line 560
    :cond_0
    return-void
.end method
