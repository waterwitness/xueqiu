.class final Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;
.super Ljava/lang/Object;
.source "SNBPullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 164
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 166
    invoke-static {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->c(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 167
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->c(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$3;->a:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->invalidate()V

    .line 172
    :cond_0
    return-void
.end method
