.class final Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity$1;
.super Ljava/lang/Object;
.source "HgtAhStockRankMoreListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity$1;->a:Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity$1;->a:Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->a(Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 60
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/AHStockQuote;

    .line 61
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getNameHk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/AHStockQuote;->getSymbolHk()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity$1;->a:Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity$1;->a:Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
