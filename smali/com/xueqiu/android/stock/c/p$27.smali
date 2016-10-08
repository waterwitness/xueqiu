.class final Lcom/xueqiu/android/stock/c/p$27;
.super Ljava/lang/Object;
.source "PortfolioItemFragment.java"

# interfaces
.implements Lcom/xueqiu/android/stock/a/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/p;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/p;)V
    .locals 2

    .prologue
    .line 438
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/xueqiu/android/stock/c/p$27;->b:J

    .line 440
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xueqiu/android/stock/c/p$27;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->h(Lcom/xueqiu/android/stock/c/p;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->h(Lcom/xueqiu/android/stock/c/p;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/s;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/s;->b:Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/p;->a(Lcom/xueqiu/android/stock/c/p;Landroid/widget/Button;)V

    .line 446
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->i(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/c/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v1

    .line 1595
    iget v1, v1, Lcom/xueqiu/android/stock/a/q;->g:I

    .line 446
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v2

    .line 1603
    iget v2, v2, Lcom/xueqiu/android/stock/a/q;->h:I

    .line 446
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v3

    .line 1611
    iget v3, v3, Lcom/xueqiu/android/stock/a/q;->f:I

    .line 446
    invoke-interface {v0, v1, v2, v3}, Lcom/xueqiu/android/stock/c/r;->a(III)V

    .line 448
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 452
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    .line 2571
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v0

    .line 3571
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q;->a:Ljava/util/List;

    .line 456
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/PortfolioStock;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/p;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/c/p$27$1;

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-direct {v2, p0, v3, p1}, Lcom/xueqiu/android/stock/c/p$27$1;-><init>(Lcom/xueqiu/android/stock/c/p$27;Lcom/xueqiu/android/base/b/q;I)V

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 480
    if-lez p1, :cond_1

    iget-wide v2, p0, Lcom/xueqiu/android/stock/c/p$27;->c:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/xueqiu/android/stock/c/p$27;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 481
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/p;->e(Lcom/xueqiu/android/stock/c/p;)Lcom/xueqiu/android/stock/a/q;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xueqiu/android/stock/a/q;->b(I)Lcom/xueqiu/android/stock/model/PortfolioStock;

    move-result-object v2

    .line 482
    iget-object v3, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v3}, Lcom/xueqiu/android/stock/c/p;->d(Lcom/xueqiu/android/stock/c/p;)Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;

    move-result-object v3

    .line 4339
    iget-object v4, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

    if-nez v4, :cond_0

    .line 4340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter should implement Insertable!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4342
    :cond_0
    iget-object v3, v3, Lcom/nhaarman/listviewanimations/itemmanipulation/DynamicListView;->c:Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;

    .line 5154
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/util/Pair;

    new-instance v5, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v4, v7

    .line 5179
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/nhaarman/listviewanimations/itemmanipulation/a/a;->a(Ljava/lang/Iterable;)V

    .line 483
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/p$27;->a:Lcom/xueqiu/android/stock/c/p;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/p;->g(Lcom/xueqiu/android/stock/c/p;)V

    .line 485
    :cond_1
    iput-wide v0, p0, Lcom/xueqiu/android/stock/c/p$27;->c:J

    .line 486
    return-void
.end method
