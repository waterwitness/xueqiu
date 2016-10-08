.class final Lse/emilsjolander/stickylistheaders/g;
.super Landroid/widget/BaseAdapter;
.source "ExpandableStickyListHeadersAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/l;


# instance fields
.field a:Lse/emilsjolander/stickylistheaders/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/emilsjolander/stickylistheaders/f",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Lse/emilsjolander/stickylistheaders/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lse/emilsjolander/stickylistheaders/d",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lse/emilsjolander/stickylistheaders/l;


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/l;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Lse/emilsjolander/stickylistheaders/f;

    invoke-direct {v0}, Lse/emilsjolander/stickylistheaders/f;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->a:Lse/emilsjolander/stickylistheaders/f;

    .line 19
    new-instance v0, Lse/emilsjolander/stickylistheaders/d;

    invoke-direct {v0}, Lse/emilsjolander/stickylistheaders/d;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->b:Lse/emilsjolander/stickylistheaders/d;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->c:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/l;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1, p2, p3}, Lse/emilsjolander/stickylistheaders/l;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->a:Lse/emilsjolander/stickylistheaders/f;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/g;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1028
    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1029
    iget-object v3, v0, Lse/emilsjolander/stickylistheaders/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lse/emilsjolander/stickylistheaders/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    :cond_0
    iget-object v3, v0, Lse/emilsjolander/stickylistheaders/f;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1035
    iget-object v3, v0, Lse/emilsjolander/stickylistheaders/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Lse/emilsjolander/stickylistheaders/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :cond_1
    iget-object v3, v0, Lse/emilsjolander/stickylistheaders/f;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    iget-object v3, v0, Lse/emilsjolander/stickylistheaders/f;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v0, v0, Lse/emilsjolander/stickylistheaders/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v2, p0, Lse/emilsjolander/stickylistheaders/g;->b:Lse/emilsjolander/stickylistheaders/d;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/g;->a(I)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1064
    iget-object v0, v2, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    invoke-interface {v0, v3}, Lse/emilsjolander/stickylistheaders/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1065
    iget-object v4, v2, Lse/emilsjolander/stickylistheaders/d;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1066
    iget-object v4, v2, Lse/emilsjolander/stickylistheaders/d;->b:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    :cond_2
    iget-object v0, v2, Lse/emilsjolander/stickylistheaders/d;->c:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    invoke-interface {v4, v1}, Lse/emilsjolander/stickylistheaders/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1070
    if-eqz v0, :cond_3

    .line 1071
    iget-object v4, v2, Lse/emilsjolander/stickylistheaders/d;->b:Ljava/util/LinkedHashMap;

    iget-object v5, v2, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    invoke-interface {v5, v0}, Lse/emilsjolander/stickylistheaders/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1073
    :cond_3
    iget-object v0, v2, Lse/emilsjolander/stickylistheaders/d;->c:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    invoke-interface {v4, v1}, Lse/emilsjolander/stickylistheaders/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v0, v2, Lse/emilsjolander/stickylistheaders/d;->b:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    invoke-interface {v4, v3}, Lse/emilsjolander/stickylistheaders/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lse/emilsjolander/stickylistheaders/d;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1075
    iget-object v0, v2, Lse/emilsjolander/stickylistheaders/d;->b:Ljava/util/LinkedHashMap;

    iget-object v2, v2, Lse/emilsjolander/stickylistheaders/d;->a:Lse/emilsjolander/stickylistheaders/e;

    invoke-interface {v2, v3}, Lse/emilsjolander/stickylistheaders/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_4
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lse/emilsjolander/stickylistheaders/g;->a(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_0
    return-object v1

    .line 84
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0}, Lse/emilsjolander/stickylistheaders/l;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 49
    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/g;->d:Lse/emilsjolander/stickylistheaders/l;

    invoke-interface {v0, p1}, Lse/emilsjolander/stickylistheaders/l;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 54
    return-void
.end method
