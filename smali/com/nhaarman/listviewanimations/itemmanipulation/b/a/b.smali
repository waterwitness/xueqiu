.class public final Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;
.super Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;
.source "SwipeUndoTouchListener.java"


# instance fields
.field public final i:Ljava/util/Collection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Collection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->b()V

    .line 104
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a(Landroid/view/View;)V

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 185
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    return-void
.end method

.method protected final a(Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->k:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->b(Landroid/view/View;I)V

    .line 1153
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->j:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->j:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->k:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->j:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2142
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->j:Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;

    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/c;->b()Landroid/view/View;

    move-result-object v0

    .line 2143
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2144
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/c/a/r;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/c/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/r;->a()V

    .line 97
    invoke-virtual {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->a(Landroid/view/View;)V

    goto :goto_0

    .line 2144
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected final b()V
    .locals 6

    .prologue
    .line 164
    .line 2210
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a:I

    .line 164
    if-nez v0, :cond_4

    .line 2662
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    .line 164
    if-nez v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->m:Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->a(Ljava/lang/Iterable;)V

    .line 166
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->a(Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->l:Ljava/util/List;

    .line 3050
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3051
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3052
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3053
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3054
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3055
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3056
    if-le v0, v4, :cond_0

    .line 3057
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 3058
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3059
    :cond_0
    if-ne v0, v4, :cond_1

    .line 3060
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 3062
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3065
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 3066
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 3067
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 170
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->m:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 173
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    :cond_4
    return-void
.end method

.method protected final b(I)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->b()V

    .line 219
    return-void
.end method

.method protected final b(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->b(Landroid/view/View;I)V

    .line 115
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->m:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->l:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 130
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->k:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method protected final c(I)Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/a/b;->i:Ljava/util/Collection;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
