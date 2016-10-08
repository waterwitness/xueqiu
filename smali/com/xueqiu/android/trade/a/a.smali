.class public final Lcom/xueqiu/android/trade/a/a;
.super Lcom/xueqiu/android/common/a/d;
.source "BrokerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/d",
        "<",
        "Lcom/xueqiu/android/trade/model/TradeAccount;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lcom/xueqiu/android/trade/model/TradeAccount;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f0301e2

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/a/d;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p2, p0, Lcom/xueqiu/android/trade/a/a;->e:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 25
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 33
    new-instance v1, Lcom/xueqiu/android/trade/a/b;

    invoke-direct {v1}, Lcom/xueqiu/android/trade/a/b;-><init>()V

    .line 34
    const v0, 0x7f0e06ba

    .line 35
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/b;->b:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0e06bb

    .line 37
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/b;->c:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0e06b9

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/b;->a:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0e06bc

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/trade/a/b;->d:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/trade/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 45
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 46
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/xueqiu/android/trade/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 49
    iget-object v4, v1, Lcom/xueqiu/android/trade/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRealAccountId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 52
    iget-object v4, v1, Lcom/xueqiu/android/trade/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getRealAccountId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_2
    iget-object v4, p0, Lcom/xueqiu/android/trade/a/a;->e:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-eqz v4, :cond_4

    .line 57
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/xueqiu/android/trade/a/a;->e:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 64
    :goto_1
    iget-object v1, v1, Lcom/xueqiu/android/trade/a/b;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    return-object v3

    .line 42
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/a/b;

    move-object v1, v0

    goto :goto_0

    .line 59
    :cond_4
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentTradeAccountTid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradeAccount(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v4

    .line 60
    if-eqz v4, :cond_6

    .line 61
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    .line 64
    :cond_5
    const/16 v2, 0x8

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method
