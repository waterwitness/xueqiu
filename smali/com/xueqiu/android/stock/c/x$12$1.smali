.class final Lcom/xueqiu/android/stock/c/x$12$1;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/x$12;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x$12;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x$12;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$12$1;->a:Lcom/xueqiu/android/stock/c/x$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$12$1;->a:Lcom/xueqiu/android/stock/c/x$12;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockSymbol()Ljava/lang/String;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$12$1;->a:Lcom/xueqiu/android/stock/c/x$12;

    iget-object v1, v1, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 656
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$12$1;->a:Lcom/xueqiu/android/stock/c/x$12;

    iget-object v1, v1, Lcom/xueqiu/android/stock/c/x$12;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Landroid/content/Intent;)V

    .line 657
    return-void
.end method
