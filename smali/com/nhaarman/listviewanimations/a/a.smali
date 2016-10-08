.class public final Lcom/nhaarman/listviewanimations/a/a;
.super Ljava/lang/Object;
.source "AbsListViewWrapper.java"

# interfaces
.implements Lcom/nhaarman/listviewanimations/a/d;


# instance fields
.field private final a:Landroid/widget/AbsListView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 89
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 73
    :cond_0
    return v0
.end method

.method public final i()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public final bridge synthetic j()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 26
    .line 1038
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/a/a;->a:Landroid/widget/AbsListView;

    .line 26
    return-object v0
.end method
