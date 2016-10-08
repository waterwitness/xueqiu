.class final Landroid/support/v7/widget/ap$1;
.super Landroid/support/v4/view/a;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ap;
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/widget/ap;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ap;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Landroid/support/v7/widget/ap$1;->b:Landroid/support/v7/widget/ap;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/f;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/f;)V

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/ap$1;->b:Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/ap$1;->b:Landroid/support/v7/widget/ap;

    iget-object v0, v0, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v2

    .line 7334
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ao;

    move-result-object v0

    .line 7336
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ao;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7337
    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    iget-object v0, v2, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    .line 7358
    invoke-virtual {v2}, Landroid/support/v7/widget/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v0

    .line 7359
    :goto_0
    invoke-virtual {v2}, Landroid/support/v7/widget/aa;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/support/v7/widget/aa;->a(Landroid/view/View;)I

    move-result v1

    .line 7360
    :cond_0
    invoke-static {v0, v1}, Landroid/support/v4/view/a/r;->a(II)Landroid/support/v4/view/a/r;

    move-result-object v0

    .line 7363
    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/f;->b(Ljava/lang/Object;)V

    .line 83
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 7358
    goto :goto_0
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ap$1;->b:Landroid/support/v7/widget/ap;

    iget-object v1, v1, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Landroid/support/v7/widget/ap$1;->b:Landroid/support/v7/widget/ap;

    iget-object v1, v1, Landroid/support/v7/widget/ap;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/aa;

    move-result-object v1

    .line 7500
    iget-object v2, v1, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/af;

    iget-object v1, v1, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/al;

    goto :goto_0
.end method
