.class final Lcom/xueqiu/android/cube/StockGainAnalysisActivity$3;
.super Ljava/lang/Object;
.source "StockGainAnalysisActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/StockGainAnalysisActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->d(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/cube/q;

    move-result-object v0

    .line 1416
    iget v0, v0, Lcom/xueqiu/android/cube/q;->c:I

    .line 200
    if-gez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->d(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/cube/q;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->b(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 2412
    iput v0, v1, Lcom/xueqiu/android/cube/q;->c:I

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/cube/StockGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/StockGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/StockGainAnalysisActivity;->d(Lcom/xueqiu/android/cube/StockGainAnalysisActivity;)Lcom/xueqiu/android/cube/q;

    move-result-object v0

    .line 2424
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/cube/q;->b:Z

    .line 204
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method
