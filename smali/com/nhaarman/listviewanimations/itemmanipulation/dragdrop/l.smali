.class public final Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;
.super Ljava/lang/Object;
.source "DynamicListViewWrapper.java"

# interfaces
.implements Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/j;


# instance fields
.field private final a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)V
    .locals 0
    .param p1    # Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public final a(II)I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0, p1, p2}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->pointToPosition(II)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 76
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0, p1, p2}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->smoothScrollBy(II)V

    .line 71
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getCount()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public final i()Landroid/widget/ListAdapter;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 11
    .line 1023
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/dragdrop/l;->a:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    .line 11
    return-object v0
.end method
