.class final Lcom/xueqiu/android/stock/c/p$14;
.super Lcom/xueqiu/android/base/b/p;
.source "PortfolioItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/p;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;Lcom/xueqiu/android/base/b/q;Ljava/util/Map;I)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    iput-object p3, p0, Lcom/xueqiu/android/stock/c/p$14;->a:Ljava/util/Map;

    iput p4, p0, Lcom/xueqiu/android/stock/c/p$14;->b:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->m(Lcom/xueqiu/android/stock/c/p;)I

    .line 700
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 701
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->k(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/common/widget/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 693
    check-cast p1, Ljava/util/Map;

    .line 1708
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->m(Lcom/xueqiu/android/stock/c/p;)I

    .line 1712
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1714
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->n(Lcom/xueqiu/android/stock/c/p;)I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/stock/c/p$14;->b:I

    if-ne v0, v1, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$14;->c:Lcom/xueqiu/android/stock/c/p;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$14;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/c/p;Ljava/util/Map;)V

    .line 693
    :cond_0
    return-void
.end method
