.class final Lcom/xueqiu/android/trade/d/a$22;
.super Lcom/xueqiu/android/base/b/p;
.source "OrderFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/a;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/trade/model/OrderCondition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    iput-boolean p3, p0, Lcom/xueqiu/android/trade/d/a$22;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/xueqiu/android/trade/d/a$22;->a:Z

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 1069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 491
    const-string v1, "--"

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/c;->c(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    const/4 v1, 0x0

    iput v1, v0, Lcom/xueqiu/android/trade/d/a;->q:I

    .line 494
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 448
    check-cast p1, Ljava/util/ArrayList;

    .line 2452
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/OrderCondition;

    .line 2453
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getEnableAmount()D

    move-result-wide v2

    double-to-int v2, v2

    .line 3069
    iput v2, v1, Lcom/xueqiu/android/trade/d/a;->q:I

    .line 2454
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getEnableBalance()Ljava/lang/Double;

    move-result-object v1

    .line 2455
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2455
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2455
    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->isIB()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2456
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 2456
    iget-object v3, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget v3, v3, Lcom/xueqiu/android/trade/d/a;->q:I

    .line 2456
    invoke-interface {v2, v3}, Lcom/xueqiu/android/trade/b/c;->a_(I)V

    .line 2458
    :cond_0
    if-eqz v1, :cond_1

    .line 2459
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 8069
    iput-object v1, v2, Lcom/xueqiu/android/trade/d/a;->v:Ljava/lang/Double;

    .line 2460
    iget-boolean v1, p0, Lcom/xueqiu/android/trade/d/a$22;->a:Z

    if-eqz v1, :cond_1

    .line 2461
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 9069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 2461
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 10069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->v:Ljava/lang/Double;

    .line 2461
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xueqiu/android/trade/b/c;->c(Ljava/lang/String;)V

    .line 2464
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 11069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2464
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 12069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->i:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 2464
    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->isFirstTrade()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2465
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getMarginBuyingPower()Ljava/lang/Double;

    move-result-object v1

    .line 2466
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getMargin()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2467
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 13069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 2467
    invoke-interface {v2, v1}, Lcom/xueqiu/android/trade/b/c;->a(Ljava/lang/Double;)V

    .line 2469
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getNonMarginBuyingPower()Ljava/lang/Double;

    move-result-object v1

    .line 2470
    if-eqz v1, :cond_3

    .line 2471
    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 14069
    iget-object v2, v2, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 2471
    invoke-interface {v2, v1}, Lcom/xueqiu/android/trade/b/c;->b(Ljava/lang/Double;)V

    .line 2474
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/d/a;->c()V

    .line 2475
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 15069
    iget v1, v1, Lcom/xueqiu/android/trade/d/a;->x:I

    .line 2475
    if-eqz v1, :cond_4

    .line 2476
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    .line 16069
    iget v2, v2, Lcom/xueqiu/android/trade/d/a;->x:I

    .line 2476
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/trade/d/a;->a(I)V

    .line 2479
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getPriceStep()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 17069
    iput-wide v2, v1, Lcom/xueqiu/android/trade/d/a;->p:D

    .line 2480
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getBuyUnit()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_5

    .line 2481
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getBuyUnit()D

    move-result-wide v2

    .line 18069
    iput-wide v2, v1, Lcom/xueqiu/android/trade/d/a;->r:D

    .line 2483
    :cond_5
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getEntrustPropList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2484
    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$22;->b:Lcom/xueqiu/android/trade/d/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition;->getEntrustPropList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/OrderCondition$EntrustProp;->getOprop()Ljava/lang/String;

    move-result-object v0

    .line 19069
    iput-object v0, v1, Lcom/xueqiu/android/trade/d/a;->s:Ljava/lang/String;

    .line 448
    :cond_6
    return-void
.end method
