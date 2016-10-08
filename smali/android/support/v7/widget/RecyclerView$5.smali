.class final Landroid/support/v7/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/support/v7/widget/c;)V
    .locals 1

    .prologue
    .line 441
    iget v0, p1, Landroid/support/v7/widget/c;->a:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 443
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aa;

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aa;

    goto :goto_0

    .line 449
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aa;

    goto :goto_0

    .line 452
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/aa;

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/widget/ao;
    .locals 5

    .prologue
    .line 413
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    .line 7618
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->b()I

    move-result v3

    .line 7619
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 7620
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/d;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v0

    .line 7621
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->m()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7623
    iget v4, v0, Landroid/support/v7/widget/ao;->b:I

    if-ne v4, p1, :cond_0

    .line 7624
    :goto_1
    return-object v0

    .line 7619
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7634
    :cond_1
    const/4 v0, 0x0

    .line 413
    goto :goto_1
.end method

.method public final a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 418
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->o:Z

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 8586
    iget v1, v0, Landroid/support/v7/widget/al;->g:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/al;->g:I

    .line 421
    return-void
.end method

.method public final a(Landroid/support/v7/widget/c;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$5;->c(Landroid/support/v7/widget/c;)V

    .line 438
    return-void
.end method

.method public final b(II)V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 426
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->o:Z

    .line 427
    return-void
.end method

.method public final b(Landroid/support/v7/widget/c;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$5;->c(Landroid/support/v7/widget/c;)V

    .line 460
    return-void
.end method

.method public final c(II)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 431
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    .line 9473
    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->b()I

    move-result v4

    .line 9474
    add-int v5, p1, p2

    move v2, v1

    .line 9476
    :goto_0
    if-ge v2, v4, :cond_2

    .line 9477
    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/d;->c(I)Landroid/view/View;

    move-result-object v0

    .line 9478
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v6

    .line 9479
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/support/v7/widget/ao;->b()Z

    move-result v7

    if-nez v7, :cond_1

    .line 9482
    iget v7, v6, Landroid/support/v7/widget/ao;->b:I

    if-lt v7, p1, :cond_1

    iget v7, v6, Landroid/support/v7/widget/ao;->b:I

    if-ge v7, v5, :cond_1

    .line 9485
    invoke-virtual {v6, v9}, Landroid/support/v7/widget/ao;->a(I)V

    .line 9486
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9487
    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ao;->a(I)V

    .line 9490
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    iput-boolean v8, v0, Landroid/support/v7/widget/ab;->c:Z

    .line 9476
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 9493
    :cond_2
    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    .line 9958
    add-int v3, p1, p2

    .line 9959
    iget-object v0, v2, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9960
    :goto_1
    if-ge v1, v4, :cond_4

    .line 9961
    iget-object v0, v2, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 9962
    if-eqz v0, :cond_3

    .line 9966
    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->c()I

    move-result v5

    .line 9967
    if-lt v5, p1, :cond_3

    if-ge v5, v3, :cond_3

    .line 9968
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/ao;->a(I)V

    .line 9960
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 432
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v8, v0, Landroid/support/v7/widget/RecyclerView;->p:Z

    .line 433
    return-void
.end method

.method public final d(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 464
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    .line 10420
    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v1}, Landroid/support/v7/widget/d;->b()I

    move-result v3

    move v1, v0

    .line 10421
    :goto_0
    if-ge v1, v3, :cond_1

    .line 10422
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/d;->c(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v4

    .line 10423
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/ao;->b()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Landroid/support/v7/widget/ao;->b:I

    if-lt v5, p1, :cond_0

    .line 10428
    invoke-virtual {v4, p2, v0}, Landroid/support/v7/widget/ao;->a(IZ)V

    .line 10429
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 10586
    iput-boolean v6, v4, Landroid/support/v7/widget/al;->h:Z

    .line 10421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10432
    :cond_1
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    .line 10884
    iget-object v1, v3, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    .line 10885
    :goto_1
    if-ge v1, v4, :cond_3

    .line 10886
    iget-object v0, v3, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 10887
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->c()I

    move-result v5

    if-lt v5, p1, :cond_2

    .line 10892
    invoke-virtual {v0, p2, v6}, Landroid/support/v7/widget/ao;->a(IZ)V

    .line 10885
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 10433
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v6, v0, Landroid/support/v7/widget/RecyclerView;->o:Z

    .line 466
    return-void
.end method

.method public final e(II)V
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 470
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    .line 11386
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->b()I

    move-result v8

    .line 11388
    if-ge p1, p2, :cond_1

    move v0, v1

    move v3, p2

    move v4, p1

    :goto_0
    move v5, v6

    .line 11398
    :goto_1
    if-ge v5, v8, :cond_3

    .line 11399
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v9, v5}, Landroid/support/v7/widget/d;->c(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v9

    .line 11400
    if-eqz v9, :cond_0

    iget v10, v9, Landroid/support/v7/widget/ao;->b:I

    if-lt v10, v4, :cond_0

    iget v10, v9, Landroid/support/v7/widget/ao;->b:I

    if-gt v10, v3, :cond_0

    .line 11407
    iget v10, v9, Landroid/support/v7/widget/ao;->b:I

    if-ne v10, p1, :cond_2

    .line 11408
    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v6}, Landroid/support/v7/widget/ao;->a(IZ)V

    .line 11413
    :goto_2
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 11586
    iput-boolean v2, v9, Landroid/support/v7/widget/al;->h:Z

    .line 11398
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    move v3, p1

    move v4, p2

    .line 11395
    goto :goto_0

    .line 11410
    :cond_2
    invoke-virtual {v9, v0, v6}, Landroid/support/v7/widget/ao;->a(IZ)V

    goto :goto_2

    .line 11415
    :cond_3
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    .line 11856
    if-ge p1, p2, :cond_5

    move v3, p2

    move v4, p1

    .line 11865
    :goto_3
    iget-object v0, v8, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v6

    .line 11866
    :goto_4
    if-ge v5, v9, :cond_7

    .line 11867
    iget-object v0, v8, Landroid/support/v7/widget/af;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ao;

    .line 11868
    if-eqz v0, :cond_4

    iget v10, v0, Landroid/support/v7/widget/ao;->b:I

    if-lt v10, v4, :cond_4

    iget v10, v0, Landroid/support/v7/widget/ao;->b:I

    if-gt v10, v3, :cond_4

    .line 11871
    iget v10, v0, Landroid/support/v7/widget/ao;->b:I

    if-ne v10, p1, :cond_6

    .line 11872
    sub-int v10, p2, p1

    invoke-virtual {v0, v10, v6}, Landroid/support/v7/widget/ao;->a(IZ)V

    .line 11866
    :cond_4
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_5
    move v1, v2

    move v3, p1

    move v4, p2

    .line 11863
    goto :goto_3

    .line 11874
    :cond_6
    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/ao;->a(IZ)V

    goto :goto_5

    .line 11416
    :cond_7
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$5;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->o:Z

    .line 473
    return-void
.end method
