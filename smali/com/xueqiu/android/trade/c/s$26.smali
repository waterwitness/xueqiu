.class final Lcom/xueqiu/android/trade/c/s$26;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1189
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v3, 0x1

    .line 1192
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->j(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 1193
    sub-int v1, p3, v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/s;->m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/a/m;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sub-int v1, p3, v0

    if-gez v1, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/s;->m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;

    move-result-object v1

    sub-int v2, p3, v0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 1198
    instance-of v2, v1, Lcom/xueqiu/android/trade/model/TradePosition;

    if-eqz v2, :cond_3

    .line 1199
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/s;->m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;

    move-result-object v1

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradePosition;

    .line 1201
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 2197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1201
    if-nez v1, :cond_2

    .line 1202
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1203
    const-string v2, "extra_from_broker"

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const-string v2, "extra_stock"

    new-instance v3, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getSname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1205
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/s;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 1208
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradePosition;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1210
    :cond_3
    instance-of v1, v1, Lcom/xueqiu/android/trade/model/RepoPosition;

    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/s;->m(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/a/m;

    move-result-object v1

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/RepoPosition;

    .line 1213
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 3197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1213
    if-nez v1, :cond_4

    .line 1214
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1215
    const-string v2, "extra_from_broker"

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1216
    const-string v2, "extra_stock"

    new-instance v3, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getSname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1217
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/s;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1220
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$26;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/RepoPosition;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method
