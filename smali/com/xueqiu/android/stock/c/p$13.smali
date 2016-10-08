.class final Lcom/xueqiu/android/stock/c/p$13;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/p;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lrx/a",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$13;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 629
    check-cast p1, Ljava/util/List;

    .line 1632
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1633
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 1634
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$13;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$13;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/p;->l(Lcom/xueqiu/android/stock/c/p;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/util/List;Ljava/util/List;ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2032
    iget-object v0, v0, Lcom/xueqiu/android/base/b/t;->a:Lrx/i/a;

    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;

    move-result-object v0

    .line 1635
    :goto_0
    return-object v0

    .line 1637
    :cond_0
    invoke-static {}, Lrx/a;->b()Lrx/a;

    move-result-object v0

    goto :goto_0
.end method
