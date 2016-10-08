.class final Lcom/nhaarman/listviewanimations/itemmanipulation/a;
.super Ljava/lang/Object;
.source "DynamicListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;


# direct methods
.method private constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)V
    .locals 1

    .prologue
    .line 546
    iput-object p1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a;->a:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;B)V
    .locals 0

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/a;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 566
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0

    .line 568
    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$OnScrollListener;

    .line 553
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 556
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    move-result-object v0

    instance-of v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a;->b:Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->a(Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;)Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;

    move-result-object v0

    check-cast v0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;

    invoke-virtual {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->c()V

    .line 561
    :cond_1
    return-void
.end method
