.class public Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;
.super Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;
.source "SwipeDismissTouchListener.java"


# instance fields
.field public a:I

.field private final i:J

.field private final j:Ljava/util/Collection;
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

.field private final k:Ljava/util/List;
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

.field private final l:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;)I
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a:I

    return v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 187
    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->b()V

    .line 130
    return-void
.end method

.method public final a(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 98
    .line 1241
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 98
    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->d()I

    move-result v0

    .line 2241
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 99
    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/a/d;->e()I

    move-result v1

    .line 101
    if-gt v0, p1, :cond_1

    if-gt p1, v1, :cond_1

    .line 102
    invoke-super {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(I)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    if-le p1, v1, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->b(I)V

    goto :goto_0

    .line 3241
    :cond_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 4241
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 3116
    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/a/d;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nhaarman/listviewanimations/a/b;->a(Lcom/nhaarman/listviewanimations/a/d;I)Landroid/view/View;

    move-result-object v0

    .line 3118
    if-eqz v0, :cond_0

    .line 3119
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 3120
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 5241
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 3122
    iget-wide v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->i:J

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcom/nhaarman/listviewanimations/a/d;->b(II)V

    .line 3123
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->l:Landroid/os/Handler;

    new-instance v2, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;

    invoke-direct {v2, p0, v0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/e;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;II)V

    iget-wide v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->i:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->a(Landroid/view/View;)V

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 205
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->b(Landroid/view/View;I)V

    .line 140
    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 2
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 197
    invoke-virtual {p0, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a(Landroid/view/View;)V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a:I

    if-nez v0, :cond_0

    .line 5662
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/f;->h:I

    .line 164
    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->j:Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a(Ljava/lang/Iterable;)V

    .line 166
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->k:Ljava/util/List;

    invoke-static {v0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a(Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->j:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 169
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 171
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->b()V

    .line 113
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 148
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->j:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    aput v1, v0, v4

    aput v2, v0, v2

    invoke-static {v0}, Lcom/c/a/x;->b([I)Lcom/c/a/x;

    move-result-object v0

    iget-wide v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/c/a/x;->b(J)Lcom/c/a/x;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/nhaarman/listviewanimations/itemmanipulation/b/d;

    invoke-direct {v1, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/c/a/x;->a(Lcom/c/a/z;)V

    .line 153
    new-instance v1, Lcom/nhaarman/listviewanimations/itemmanipulation/b/c;

    invoke-direct {v1, p0, v4}, Lcom/nhaarman/listviewanimations/itemmanipulation/b/c;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;B)V

    invoke-virtual {v0, v1}, Lcom/c/a/x;->a(Lcom/c/a/b;)V

    .line 154
    invoke-virtual {v0}, Lcom/c/a/x;->a()V

    .line 156
    iget v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/b/b;->a:I

    .line 157
    return-void
.end method

.method public c(I)Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method
