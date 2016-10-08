.class final Lcom/xueqiu/android/trade/c/s$4;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/s;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$4;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 728
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x5de

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 729
    const-string v1, "tid"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$4;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 730
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 732
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$4;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->g()Landroid/support/v4/a/k;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$4;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v1

    const-string v2, "BUY"

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 733
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$4;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->g()Landroid/support/v4/a/k;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$4;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeBroker;->isSwitchExchangeMantaince()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1398
    const-string v3, "\u63d0\u793a"

    .line 1399
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getSwitchExchangeMsg()Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    .line 1400
    check-cast v0, Lcom/xueqiu/android/common/b;

    new-instance v5, Lcom/xueqiu/android/trade/c$3;

    invoke-direct {v5, v1, v2}, Lcom/xueqiu/android/trade/c$3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0, v5}, Lcom/xueqiu/android/common/widget/f;->a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/g;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 1413
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/f;->a(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 1414
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/widget/f;->b(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    .line 2127
    const/16 v2, 0x11

    iput v2, v0, Lcom/xueqiu/android/common/widget/f;->g:I

    .line 1416
    invoke-virtual {v0, v6}, Lcom/xueqiu/android/common/widget/f;->a(Z)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    const v2, 0x7f0700b1

    .line 1417
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/f;->c(Ljava/lang/String;)Lcom/xueqiu/android/common/widget/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/f;->show()V

    .line 1391
    :goto_0
    return-void

    .line 1393
    :cond_0
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v6}, Lcom/xueqiu/android/trade/c;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method
