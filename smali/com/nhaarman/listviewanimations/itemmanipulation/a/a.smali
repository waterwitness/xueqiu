.class public final Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;
.super Lcom/nhaarman/listviewanimations/b;
.source "AnimateAdditionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nhaarman/listviewanimations/b;"
    }
.end annotation


# instance fields
.field private c:J

.field private d:J

.field private final e:Lcom/nhaarman/listviewanimations/a/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nhaarman/listviewanimations/a/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nhaarman/listviewanimations/itemmanipulation/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .locals 2
    .param p1    # Landroid/widget/BaseAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v0, 0x12c

    .line 85
    invoke-direct {p0, p1}, Lcom/nhaarman/listviewanimations/b;-><init>(Landroid/widget/BaseAdapter;)V

    .line 59
    iput-wide v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->c:J

    .line 63
    iput-wide v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->d:J

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->g:Z

    .line 1075
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    .line 1076
    :goto_0
    instance-of v1, v0, Lcom/nhaarman/listviewanimations/b;

    if-eqz v1, :cond_0

    .line 1077
    check-cast v0, Lcom/nhaarman/listviewanimations/b;

    .line 2067
    iget-object v0, v0, Lcom/nhaarman/listviewanimations/b;->a:Landroid/widget/BaseAdapter;

    goto :goto_0

    .line 88
    :cond_0
    instance-of v1, v0, Lcom/nhaarman/listviewanimations/a/c;

    if-nez v1, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BaseAdapter should implement Insertable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    check-cast v0, Lcom/nhaarman/listviewanimations/a/c;

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->e:Lcom/nhaarman/listviewanimations/a/c;

    .line 93
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;

    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->e:Lcom/nhaarman/listviewanimations/a/c;

    invoke-direct {v0, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;-><init>(Lcom/nhaarman/listviewanimations/a/c;)V

    iput-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->f:Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;)Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->f:Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;

    return-object v0
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 273
    .line 11091
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 273
    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call setListView on this AnimateAdditionAdapter first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v2, v1

    .line 12091
    :goto_0
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 278
    invoke-interface {v3}, Lcom/nhaarman/listviewanimations/a/d;->f()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 13091
    iget-object v3, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 279
    invoke-interface {v3, v0}, Lcom/nhaarman/listviewanimations/a/d;->a(I)Landroid/view/View;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_1

    .line 281
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 278
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14091
    :cond_2
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 284
    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-gt v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)V
    .locals 12
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 189
    .line 2091
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 189
    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call setListView on this AnimateAdditionAdapter!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3091
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 201
    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/a/d;->d()I

    move-result v5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v5, v1, :cond_2

    .line 203
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 206
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v1

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 207
    if-lt v5, v1, :cond_f

    .line 208
    add-int/lit8 v1, v5, 0x1

    :goto_2
    move v5, v1

    .line 210
    goto :goto_1

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->e:Lcom/nhaarman/listviewanimations/a/c;

    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v5, v10}, Lcom/nhaarman/listviewanimations/a/c;->a(ILjava/lang/Object;)V

    .line 213
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v1, v2, 0x1

    .line 216
    iget-boolean v2, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->g:Z

    if-eqz v2, :cond_e

    .line 217
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    .line 4091
    iget-object v5, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 217
    invoke-interface {v5}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p0, v0, v2, v5}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 218
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/view/View;->measure(II)V

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v4, v0

    :goto_3
    move v2, v1

    move v4, v0

    .line 221
    goto :goto_0

    .line 5091
    :cond_2
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 221
    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/a/d;->e()I

    move-result v5

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v5, v1, :cond_3

    .line 6091
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 221
    invoke-interface {v1}, Lcom/nhaarman/listviewanimations/a/d;->e()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    invoke-direct {p0}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 224
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 227
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v1

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 228
    if-lt v5, v1, :cond_d

    .line 229
    add-int/lit8 v1, v5, 0x1

    :goto_5
    move v5, v1

    .line 231
    goto :goto_4

    .line 232
    :cond_4
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v1, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 236
    :cond_5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 239
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v1

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 240
    if-lt v5, v1, :cond_c

    .line 241
    add-int/lit8 v1, v5, 0x1

    :goto_7
    move v5, v1

    .line 243
    goto :goto_6

    .line 246
    :cond_6
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 247
    if-lt v5, v1, :cond_7

    .line 248
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 252
    :cond_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->e:Lcom/nhaarman/listviewanimations/a/c;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v5, v0}, Lcom/nhaarman/listviewanimations/a/c;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 257
    :cond_9
    iget-boolean v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->g:Z

    if-eqz v0, :cond_a

    .line 7091
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 258
    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iget-wide v8, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->c:J

    int-to-long v10, v2

    mul-long/2addr v8, v10

    long-to-int v1, v8

    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->f:Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;

    invoke-virtual {v0, v6}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->a(Ljava/util/Collection;)V

    .line 8091
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 263
    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->d()I

    move-result v1

    .line 9091
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 264
    invoke-interface {v0, v3}, Lcom/nhaarman/listviewanimations/a/d;->a(I)Landroid/view/View;

    move-result-object v0

    .line 265
    if-nez v0, :cond_b

    .line 10091
    :goto_9
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/b;->b:Lcom/nhaarman/listviewanimations/a/d;

    .line 266
    invoke-interface {v0}, Lcom/nhaarman/listviewanimations/a/d;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 267
    return-void

    .line 265
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_9

    :cond_c
    move v1, v5

    goto :goto_7

    :cond_d
    move v1, v5

    goto/16 :goto_5

    :cond_e
    move v0, v4

    goto/16 :goto_3

    :cond_f
    move v1, v5

    goto/16 :goto_2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 290
    invoke-super {p0, p1, p2, p3}, Lcom/nhaarman/listviewanimations/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 292
    iget-object v0, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->f:Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;

    .line 14138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14139
    iget-object v0, v0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/d;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14140
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    const/4 v0, -0x1

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 294
    const/4 v2, -0x2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 295
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 297
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 299
    new-array v2, v4, [I

    aput v6, v2, v5

    aput v0, v2, v6

    invoke-static {v2}, Lcom/c/a/x;->b([I)Lcom/c/a/x;

    move-result-object v0

    .line 300
    new-instance v2, Lcom/nhaarman/listviewanimations/itemmanipulation/a/c;

    invoke-direct {v2, v1}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/c;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/c/a/x;->a(Lcom/c/a/z;)V

    .line 14335
    new-array v2, v5, [Lcom/c/a/a;

    .line 303
    new-array v3, v6, [Lcom/c/a/a;

    .line 304
    aput-object v0, v3, v5

    .line 305
    invoke-static {v2, v5, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    new-instance v0, Lcom/c/a/d;

    invoke-direct {v0}, Lcom/c/a/d;-><init>()V

    .line 308
    invoke-virtual {v0, v3}, Lcom/c/a/d;->a([Lcom/c/a/a;)V

    .line 310
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/c/c/a;->a(Landroid/view/View;F)V

    .line 311
    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Lcom/c/a/r;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/c/a/r;

    move-result-object v2

    .line 313
    new-instance v3, Lcom/c/a/d;

    invoke-direct {v3}, Lcom/c/a/d;-><init>()V

    .line 314
    new-array v4, v4, [Lcom/c/a/a;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Lcom/c/a/d;->b([Lcom/c/a/a;)V

    .line 316
    iget-wide v4, p0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->d:J

    invoke-virtual {v3, v4, v5}, Lcom/c/a/d;->b(J)Lcom/c/a/d;

    .line 317
    new-instance v0, Lcom/nhaarman/listviewanimations/itemmanipulation/a/b;

    invoke-direct {v0, p0, p1}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/b;-><init>(Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;I)V

    invoke-virtual {v3, v0}, Lcom/c/a/d;->a(Lcom/c/a/b;)V

    .line 318
    invoke-virtual {v3}, Lcom/c/a/d;->a()V

    .line 321
    :cond_1
    return-object v1

    .line 311
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
