.class final Lcom/xueqiu/android/cube/CubeRbHistoryActivity$1;
.super Ljava/lang/Object;
.source "CubeRbHistoryActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/cube/a/n;

    move-result-object v0

    .line 1236
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    .line 86
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 87
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    .line 98
    :goto_0
    return v4

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p4, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/RebalancingHistory;

    .line 96
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getRebalancingHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/RebalancingHistory;

    goto :goto_1
.end method
