.class final Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5$1;
.super Ljava/lang/Object;
.source "TradeSecuritySettingActivity.java"

# interfaces
.implements Lcom/xueqiu/android/trade/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .prologue
    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 1316
    iget-object v0, v1, Lcom/xueqiu/android/base/t;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->setCreateTime(Ljava/util/Date;)V

    goto :goto_0

    .line 1319
    :cond_0
    invoke-virtual {v1}, Lcom/xueqiu/android/base/t;->c()V

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5$1;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;

    iget-object v0, v0, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity$5;->a:Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;->a(Lcom/xueqiu/android/trade/TradeSecuritySettingActivity;I)V

    .line 106
    return-void
.end method
