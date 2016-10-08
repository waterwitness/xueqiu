.class final Landroid/support/v7/widget/r$2;
.super Landroid/support/v7/widget/r;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/r;
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/aa;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/aa;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 7682
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {p1}, Landroid/support/v7/widget/aa;->d(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 318
    iget v0, v0, Landroid/support/v7/widget/ab;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    .line 6391
    iget-object v1, v0, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 6392
    iget-object v1, v0, Landroid/support/v7/widget/aa;->i:Landroid/support/v7/widget/RecyclerView;

    .line 6689
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->a()I

    move-result v2

    .line 6690
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 6691
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/d;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/d;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 6690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->k()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 6706
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {p1}, Landroid/support/v7/widget/aa;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 311
    iget v0, v0, Landroid/support/v7/widget/ab;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->i()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    invoke-virtual {v1}, Landroid/support/v7/widget/aa;->m()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 295
    invoke-static {p1}, Landroid/support/v7/widget/aa;->c(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/ab;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/ab;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->i()I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ab;

    .line 303
    invoke-static {p1}, Landroid/support/v7/widget/aa;->b(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/ab;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/ab;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->i()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    invoke-virtual {v1}, Landroid/support/v7/widget/aa;->k()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    invoke-virtual {v1}, Landroid/support/v7/widget/aa;->m()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroid/support/v7/widget/r$2;->a:Landroid/support/v7/widget/aa;

    invoke-virtual {v0}, Landroid/support/v7/widget/aa;->m()I

    move-result v0

    return v0
.end method
