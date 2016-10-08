.class final Lcom/xueqiu/android/stock/c/g$1;
.super Ljava/lang/Object;
.source "IndustryIndexFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/g;->a(Landroid/view/View;II)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stock/c/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/g;I)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iput p2, p0, Lcom/xueqiu/android/stock/c/g$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->m(Lcom/xueqiu/android/stock/c/e;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/c/g$1;->a:I

    aget-object v0, v0, v1

    .line 423
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v1, v1, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/e;->j(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->k(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "order_asc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    const-string v1, "order_desc"

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/e;->c(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->f(Lcom/xueqiu/android/stock/c/e;)V

    .line 434
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->g(Lcom/xueqiu/android/stock/c/e;)V

    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->q(Lcom/xueqiu/android/stock/c/e;)Lcom/xueqiu/android/stock/view/TableFixHeaders;

    move-result-object v3

    .line 1508
    iget v0, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 1509
    iget-object v1, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1510
    iget-object v4, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v4, v5, v1, v0}, Lcom/xueqiu/android/stock/a/ai;->a(IILandroid/view/View;)V

    .line 1511
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1512
    goto :goto_1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    const-string v1, "order_asc"

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/e;->c(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v1, v1, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/e;->d(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$1;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    const-string v1, "order_desc"

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/e;->c(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1514
    :cond_2
    iget v0, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 1515
    iget-object v1, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1516
    iget-object v4, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v4, v1, v5, v0}, Lcom/xueqiu/android/stock/a/ai;->a(IILandroid/view/View;)V

    .line 1517
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1518
    goto :goto_2

    .line 1520
    :cond_3
    iget v0, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->b:I

    .line 1521
    iget-object v1, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1522
    iget v2, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->c:I

    .line 1523
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1524
    iget-object v6, v3, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a:Lcom/xueqiu/android/stock/a/ai;

    invoke-interface {v6, v1, v2, v0}, Lcom/xueqiu/android/stock/a/ai;->a(IILandroid/view/View;)V

    .line 1525
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1526
    goto :goto_4

    .line 1527
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1528
    goto :goto_3

    .line 1529
    :cond_5
    invoke-virtual {v3}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->invalidate()V

    .line 436
    return-void
.end method
