.class final Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/PinnedSectionListView;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/PinnedSectionListView;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    if-nez p3, :cond_2

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(Landroid/widget/ListAdapter;I)Z

    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v0, p2, p2, p3}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(III)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v0, p2}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(I)I

    move-result v0

    .line 122
    if-ltz v0, :cond_4

    .line 123
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v1, v0, p2, p3}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a(III)V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a()V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/PinnedSectionListView$1;->a:Lcom/xueqiu/android/common/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/PinnedSectionListView;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 96
    :cond_0
    return-void
.end method
