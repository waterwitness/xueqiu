.class public Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;
.super Lcom/xueqiu/android/common/widget/ptr/c;
.source "PullToRefreshExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/widget/ptr/c",
        "<",
        "Landroid/widget/ExpandableListView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/c;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/c;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected final synthetic b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 9
    .line 1046
    new-instance v0, Lcom/xueqiu/android/common/widget/ptr/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/i;-><init>(Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1049
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setId(I)V

    .line 9
    return-object v0
.end method

.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/i;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method
