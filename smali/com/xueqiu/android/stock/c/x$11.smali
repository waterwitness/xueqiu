.class final Lcom/xueqiu/android/stock/c/x$11;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/x;->D()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 438
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    if-nez v0, :cond_0

    .line 461
    :goto_0
    return-void

    .line 442
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 443
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 445
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 447
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    .line 449
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    const v2, 0x7f0700b6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v5}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/stock/c/x;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 451
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/stock/c/x$11$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/x$11$1;-><init>(Lcom/xueqiu/android/stock/c/x$11;)V

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$11;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->g(Lcom/xueqiu/android/stock/c/x;)V

    goto/16 :goto_0
.end method
