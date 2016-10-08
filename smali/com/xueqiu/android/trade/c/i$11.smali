.class final Lcom/xueqiu/android/trade/c/i$11;
.super Ljava/lang/Object;
.source "PerformanceItemFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 672
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i$11;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 676
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$11;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->d(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 677
    sub-int v1, p3, v0

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/i$11;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/i;->m(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/a/c;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    sub-int v1, p3, v0

    if-gez v1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v5

    .line 682
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$11;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/i;->m(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/a/c;

    move-result-object v1

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockIncome;

    .line 683
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockIncome;->getSymbol()Ljava/lang/String;

    move-result-object v1

    .line 685
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4ea4\u6613"

    aput-object v4, v2, v3

    const-string v3, "\u5220\u9664"

    aput-object v3, v2, v5

    .line 687
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/i$11;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/xueqiu/android/trade/c/i$11$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/xueqiu/android/trade/c/i$11$1;-><init>(Lcom/xueqiu/android/trade/c/i$11;Ljava/lang/String;Lcom/xueqiu/android/stock/model/StockIncome;)V

    .line 688
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 714
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method
