.class final Lcom/xueqiu/android/stock/a/ad$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StockListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/ad$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/xueqiu/android/stock/a/ad$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/ad$1;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/ad;->b()V

    .line 95
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 90
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1099
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/ad;->b()V

    .line 1100
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    const-string v1, "extra_portfolio_category"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1103
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v1, v1, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/ad;->b(Lcom/xueqiu/android/stock/a/ad;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v1, v0, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->isHasExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/Stock;->setHasExist(Z)V

    .line 1105
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1105
    const v1, 0x7f070251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/ad$1;->b:Lcom/xueqiu/android/stock/a/ae;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v1, v1, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/a/ad;->a(Lcom/xueqiu/android/stock/a/ae;Lcom/xueqiu/android/stock/model/Stock;)V

    .line 1109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.followStock"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    const-string v1, "extra_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v2, v2, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    const-string v1, "extra_followed"

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v2, v2, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Stock;->isHasExist()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1112
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v1, v1, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/ad;->b(Lcom/xueqiu/android/stock/a/ad;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1113
    :goto_1
    return-void

    .line 1104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1$1;->a:Lcom/xueqiu/android/stock/a/ad$1;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    .line 3089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1114
    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
