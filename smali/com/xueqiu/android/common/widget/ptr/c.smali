.class public abstract Lcom/xueqiu/android/common/widget/ptr/c;
.super Lcom/xueqiu/android/common/widget/ptr/d;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/xueqiu/android/common/widget/ptr/d",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Landroid/widget/AbsListView$OnScrollListener;

.field private f:Lcom/xueqiu/android/common/widget/ptr/f;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/widget/ptr/d;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->d:I

    .line 25
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/d;-><init>(Landroid/content/Context;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->d:I

    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/widget/ptr/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->d:I

    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 14
    check-cast p2, Landroid/widget/AbsListView;

    .line 2114
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->h:Landroid/widget/FrameLayout;

    .line 2115
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 2117
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->h:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/ptr/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    return-void
.end method

.method protected final g()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    .line 1129
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1136
    :goto_0
    return v0

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 1133
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1135
    if-eqz v0, :cond_2

    .line 1136
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getTop()I

    move-result v0

    if-lt v3, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 121
    goto :goto_0
.end method

.method public abstract getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.end method

.method protected getScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->e:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/ptr/c;->i()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 145
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    .line 147
    if-nez v3, :cond_0

    move v0, v1

    .line 159
    :goto_0
    return v0

    .line 149
    :cond_0
    add-int/lit8 v0, v3, -0x1

    if-ne v4, v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v3, v4, v0

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getBottom()I

    move-result v0

    if-gt v3, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 159
    goto :goto_0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->f:Lcom/xueqiu/android/common/widget/ptr/f;

    if-eqz v0, :cond_0

    .line 45
    if-lez p3, :cond_0

    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 47
    iget v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->d:I

    if-eq p2, v0, :cond_0

    .line 48
    iput p2, p0, Lcom/xueqiu/android/common/widget/ptr/c;->d:I

    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->f:Lcom/xueqiu/android/common/widget/ptr/f;

    invoke-interface {v0}, Lcom/xueqiu/android/common/widget/ptr/f;->a()V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->e:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->e:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 57
    :cond_1
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->e:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->e:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 63
    :cond_0
    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/ptr/c;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 84
    :cond_0
    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/xueqiu/android/common/widget/ptr/a;

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Lcom/xueqiu/android/common/widget/ptr/a;

    invoke-interface {v0, p1}, Lcom/xueqiu/android/common/widget/ptr/a;->a(Landroid/view/View;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/ptr/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final setOnLastItemVisibleListener(Lcom/xueqiu/android/common/widget/ptr/f;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/c;->f:Lcom/xueqiu/android/common/widget/ptr/f;

    .line 103
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/ptr/c;->e:Landroid/widget/AbsListView$OnScrollListener;

    .line 107
    return-void
.end method
