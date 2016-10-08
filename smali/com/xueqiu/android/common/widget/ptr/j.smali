.class final Lcom/xueqiu/android/common/widget/ptr/j;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/a;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/j;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    .line 25
    invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public final getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/ListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public final performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    .prologue
    .line 47
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/j;->getHeaderViewsCount()I

    move-result v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/j;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/j;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/j;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 31
    return-void
.end method
