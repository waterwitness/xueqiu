.class final Lcom/xueqiu/android/cube/CubeActivity$61;
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
    .line 2869
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$61;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeActivity$61;->a:Lcom/xueqiu/android/cube/model/RebalancingHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 3186
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->d:Z

    .line 2872
    if-eqz v1, :cond_0

    .line 2873
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$61;->b:Lcom/xueqiu/android/cube/CubeActivity;

    .line 4152
    invoke-static {v1, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 2880
    :goto_0
    return-void

    .line 2875
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$61;->a:Lcom/xueqiu/android/cube/model/RebalancingHistory;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getTargetWeight()D

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$61;->a:Lcom/xueqiu/android/cube/model/RebalancingHistory;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getPrevWeightAdjusted()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 2876
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$61;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$61;->a:Lcom/xueqiu/android/cube/model/RebalancingHistory;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/RebalancingHistory;->getStockSymbol()Ljava/lang/String;

    move-result-object v2

    .line 5103
    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 2877
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x579

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 2878
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
