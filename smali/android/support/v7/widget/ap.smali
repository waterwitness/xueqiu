.class public final Landroid/support/v7/widget/ap;
.super Landroid/support/v4/view/a;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final b:Landroid/support/v7/widget/RecyclerView;

.field final c:Landroid/support/v4/view/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    .line 75
    new-instance v0, Landroid/support/v7/widget/ap$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ap$1;-><init>(Landroid/support/v7/widget/ap;)V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->c:Landroid/support/v4/view/a;

    .line 35
    iput-object p1, p0, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/f;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 52
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/f;)V

    .line 53
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/f;->b(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 55
    iget-object v0, p0, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v2

    .line 8248
    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 8279
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/f;->b(Ljava/lang/CharSequence;)V

    .line 8280
    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8282
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/f;->a(I)V

    .line 8283
    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/f;->i(Z)V

    .line 8285
    :cond_1
    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8287
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/f;->a(I)V

    .line 8288
    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/f;->i(Z)V

    .line 8412
    :cond_3
    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_4
    move v0, v1

    .line 8431
    :goto_0
    iget-object v3, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v3

    if-nez v3, :cond_9

    .line 8290
    :cond_5
    :goto_1
    invoke-static {v0, v1}, Landroid/support/v4/view/a/q;->a(II)Landroid/support/v4/view/a/q;

    move-result-object v0

    .line 8296
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/f;->a(Ljava/lang/Object;)V

    .line 57
    :cond_6
    return-void

    .line 8415
    :cond_7
    invoke-virtual {v2}, Landroid/support/v7/widget/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/s;->a()I

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0

    .line 8434
    :cond_9
    invoke-virtual {v2}, Landroid/support/v7/widget/aa;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/s;->a()I

    move-result v1

    goto :goto_1
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 7492
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v4

    .line 7453
    iget-object v0, v4, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    iget-object v0, v4, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 7469
    iget-object v0, v4, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7473
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    move v3, v1

    .line 7491
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 7494
    :cond_2
    iget-object v1, v4, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    .line 44
    goto :goto_0

    .line 7475
    :sswitch_0
    iget-object v0, v4, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7476
    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->i()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->k()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->m()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 7478
    :goto_2
    iget-object v3, v4, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7479
    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->h()I

    move-result v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->j()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->l()I

    move-result v5

    sub-int/2addr v3, v5

    neg-int v3, v3

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_1

    .line 7483
    :sswitch_1
    iget-object v0, v4, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7484
    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->i()I

    move-result v0

    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->k()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->m()I

    move-result v3

    sub-int/2addr v0, v3

    .line 7486
    :goto_3
    iget-object v3, v4, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7487
    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->h()I

    move-result v3

    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->j()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/aa;->l()I

    move-result v5

    sub-int/2addr v3, v5

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 7473
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 62
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 63
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 65
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/aa;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 69
    :cond_0
    return-void
.end method
