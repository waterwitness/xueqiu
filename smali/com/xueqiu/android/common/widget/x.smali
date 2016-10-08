.class public final Lcom/xueqiu/android/common/widget/x;
.super Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;
.source "PortfolioListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/xueqiu/android/common/widget/y;

    invoke-direct {v0, p0, p1, p2}, Lcom/xueqiu/android/common/widget/y;-><init>(Lcom/xueqiu/android/common/widget/x;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/x;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/y;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/y;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method
