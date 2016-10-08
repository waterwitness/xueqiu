.class final Lcom/xueqiu/android/trade/c/s$34;
.super Lcom/xueqiu/android/base/b/p;
.source "TradeItemAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->i(Lcom/xueqiu/android/trade/c/s;)Z

    .line 600
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->j(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->j(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->f()V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->f(Lcom/xueqiu/android/trade/c/s;)V

    .line 604
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->k(Lcom/xueqiu/android/trade/c/s;)V

    .line 605
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 596
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1609
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->i(Lcom/xueqiu/android/trade/c/s;)Z

    .line 1611
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->j(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->j(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->f()V

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1615
    if-eqz v0, :cond_2

    .line 1619
    if-eqz p1, :cond_3

    const-string v0, "60000"

    const-string v1, "result_code"

    .line 1620
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1621
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/s;->b(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonObject;)V

    .line 1622
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->f(Lcom/xueqiu/android/trade/c/s;)V

    .line 1651
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->k(Lcom/xueqiu/android/trade/c/s;)V

    .line 596
    :cond_2
    return-void

    .line 1626
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->l(Lcom/xueqiu/android/trade/c/s;)Ljava/lang/String;

    .line 1627
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->f(Lcom/xueqiu/android/trade/c/s;)V

    .line 1630
    if-eqz p1, :cond_1

    .line 1631
    const/4 v0, 0x0

    .line 1632
    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1633
    const-string v1, "PAMID"

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1634
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/s;->c(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1641
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 1642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/s;->m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/a/m;->a(Ljava/util/ArrayList;)V

    .line 1646
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.tradeViewRefreshBg"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1647
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 1635
    :cond_6
    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1636
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    const-string v1, "result_data"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1637
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$34;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1, p1}, Lcom/xueqiu/android/trade/c/s;->d(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonObject;)V

    goto :goto_1
.end method
