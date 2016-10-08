.class final Lcom/xueqiu/android/cube/CubeActivity$62;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/model/Rebalancing;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/RebalancingHistory;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/RebalancingHistory;)V
    .locals 0

    .prologue
    .line 2886
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$62;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeActivity$62;->a:Lcom/xueqiu/android/cube/model/RebalancingHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$62;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$62;->b:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$62;->a:Lcom/xueqiu/android/cube/model/RebalancingHistory;

    .line 2890
    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeActivity$62;->a:Lcom/xueqiu/android/cube/model/RebalancingHistory;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    .line 2891
    return-void
.end method
