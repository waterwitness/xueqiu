.class final Lcom/xueqiu/android/common/widget/ptr/i;
.super Landroid/widget/ExpandableListView;
.source "PullToRefreshExpandableListView.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/a;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/i;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    .line 14
    invoke-direct {p0, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public final getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/widget/ExpandableListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/i;->a:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 20
    return-void
.end method
