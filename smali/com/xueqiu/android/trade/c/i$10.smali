.class final Lcom/xueqiu/android/trade/c/i$10;
.super Ljava/lang/Object;
.source "PerformanceItemFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/i;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i$10;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 653
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$10;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->d(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 654
    sub-int v1, p3, v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/i$10;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/i;->m(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/a/c;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sub-int v1, p3, v0

    if-gez v1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$10;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/i;->m(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/a/c;

    move-result-object v1

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockIncome;

    .line 661
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 661
    if-nez v1, :cond_0

    .line 662
    const-string v1, "%s/performance/mobile/trans?symbol=%s&group_id=%s&isnew=1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "https://xueqiu.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getSymbol()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$10;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/i;->n(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/model/PerformanceGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/PerformanceGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 664
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/i$10;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/i;->g()Landroid/support/v4/a/k;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/trade/TakingPositionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 665
    const-string v2, "extra_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$10;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/c/i;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
