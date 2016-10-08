.class final Lcom/xueqiu/android/common/widget/y;
.super Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;
.source "PortfolioListView.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/a;


# instance fields
.field final synthetic d:Lcom/xueqiu/android/common/widget/x;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/widget/x;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/y;->d:Lcom/xueqiu/android/common/widget/x;

    .line 38
    invoke-direct {p0, p2, p3}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setEmptyView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public final getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public final performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    .prologue
    .line 60
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/y;->getHeaderViewsCount()I

    move-result v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/y;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/y;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setEmptyView(Landroid/view/View;)V

    .line 44
    return-void
.end method
