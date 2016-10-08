.class final Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;
.super Ljava/lang/Object;
.source "SNBPullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object p2, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 153
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->b:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->b(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView$2;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 142
    :cond_1
    return-void
.end method
