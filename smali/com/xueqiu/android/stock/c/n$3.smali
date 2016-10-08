.class final Lcom/xueqiu/android/stock/c/n$3;
.super Lcom/xueqiu/android/base/b/p;
.source "PortfolioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/n;->L()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/n;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 553
    check-cast p1, Ljava/util/List;

    .line 1563
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/n;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1566
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/c/n;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->p(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1569
    const/4 v2, 0x1

    .line 1570
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->p(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    .line 2077
    iget-object v3, v0, Lcom/xueqiu/android/stock/c/p;->d:Lcom/xueqiu/android/stock/model/Portfolio;

    .line 1571
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 1572
    invoke-static {v3, v0}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/model/Portfolio;Lcom/xueqiu/android/stock/model/Portfolio;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1577
    :goto_0
    if-eqz v0, :cond_2

    .line 1578
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->n(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->setCurrentItem(I)V

    .line 1582
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {p1}, Lcom/xueqiu/android/stock/c/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)Ljava/util/List;

    .line 1583
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->q(Lcom/xueqiu/android/stock/c/n;)V

    .line 1584
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$3;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/c/n;->b(Lcom/xueqiu/android/stock/c/n;Ljava/util/List;)V

    .line 553
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method
