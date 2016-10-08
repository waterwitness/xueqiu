.class public Lcom/xueqiu/android/trade/BindBrokerActivity;
.super Lcom/xueqiu/android/common/b;
.source "BindBrokerActivity.java"


# instance fields
.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/BindBrokerActivity;->j:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 33
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/BindBrokerActivity;->j:Landroid/view/View;

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/trade/BindBrokerActivity;->j:Landroid/view/View;

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 37
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/BindBrokerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_broker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 38
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/BindBrokerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_intent_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/BindBrokerActivity;->c()Landroid/support/v4/a/q;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/BindBrokerActivity;->j:Landroid/view/View;

    .line 42
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/a;->a(Lcom/xueqiu/android/trade/model/TradeAccount;I)Lcom/xueqiu/android/trade/c/a;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/support/v4/a/ac;->d()I

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/trade/BindBrokerActivity;->j:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/trade/BindBrokerActivity;->setContentView(Landroid/view/View;)V

    .line 47
    if-ne v1, v5, :cond_1

    if-eqz v0, :cond_1

    .line 1053
    const v1, 0x7f0704e6

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/trade/BindBrokerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    :cond_1
    return-void
.end method
