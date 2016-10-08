.class final Lcom/xueqiu/android/stock/c/p$27$1;
.super Lcom/xueqiu/android/base/b/p;
.source "PortfolioItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/p$27;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stock/c/p$27;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p$27;Lcom/xueqiu/android/base/b/q;I)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$27$1;->b:Lcom/xueqiu/android/stock/c/p$27;

    iput p3, p0, Lcom/xueqiu/android/stock/c/p$27$1;->a:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 461
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 462
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 458
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1466
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$27$1;->b:Lcom/xueqiu/android/stock/c/p$27;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/c/p$27$1;->a:I

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/a/q;->b(I)Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 1468
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$27$1;->b:Lcom/xueqiu/android/stock/c/p$27;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->j(Lcom/xueqiu/android/stock/c/p;)V

    .line 1469
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$27$1;->b:Lcom/xueqiu/android/stock/c/p$27;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/q;->notifyDataSetChanged()V

    :goto_0
    return-void

    .line 1471
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "\u5220\u9664\u5931\u8d25"

    goto :goto_1
.end method
