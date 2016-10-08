.class final Landroid/support/v4/widget/n;
.super Landroid/support/v4/widget/as;
.source "DrawerLayout.java"


# instance fields
.field final a:I

.field b:Landroid/support/v4/widget/ar;

.field final synthetic c:Landroid/support/v4/widget/DrawerLayout;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1

    .prologue
    .line 1811
    iput-object p1, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/as;-><init>()V

    .line 1805
    new-instance v0, Landroid/support/v4/widget/n$1;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/n$1;-><init>(Landroid/support/v4/widget/n;)V

    iput-object v0, p0, Landroid/support/v4/widget/n;->d:Ljava/lang/Runnable;

    .line 1812
    iput p2, p0, Landroid/support/v4/widget/n;->a:I

    .line 1813
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1820
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/n;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1821
    return-void
.end method

.method public final a(I)V
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1833
    iget-object v4, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/ar;

    .line 2475
    iget-object v5, v1, Landroid/support/v4/widget/ar;->k:Landroid/view/View;

    .line 2683
    iget-object v1, v4, Landroid/support/v4/widget/DrawerLayout;->a:Landroid/support/v4/widget/ar;

    .line 3421
    iget v1, v1, Landroid/support/v4/widget/ar;->a:I

    .line 2684
    iget-object v6, v4, Landroid/support/v4/widget/DrawerLayout;->b:Landroid/support/v4/widget/ar;

    .line 4421
    iget v6, v6, Landroid/support/v4/widget/ar;->a:I

    .line 2687
    if-eq v1, v3, :cond_0

    if-ne v6, v3, :cond_3

    :cond_0
    move v1, v3

    .line 2695
    :goto_0
    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    .line 2696
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/l;

    .line 2697
    iget v6, v0, Landroid/support/v4/widget/l;->b:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 4714
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/l;

    .line 4715
    iget-boolean v3, v0, Landroid/support/v4/widget/l;->d:Z

    if-eqz v3, :cond_1

    .line 4716
    iput-boolean v2, v0, Landroid/support/v4/widget/l;->d:Z

    .line 4721
    invoke-virtual {v4, v5, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 4726
    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4727
    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 4728
    if-eqz v0, :cond_1

    .line 4729
    invoke-virtual {v0, v8}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2704
    :cond_1
    :goto_1
    iget v0, v4, Landroid/support/v4/widget/DrawerLayout;->c:I

    if-eq v1, v0, :cond_2

    .line 2705
    iput v1, v4, Landroid/support/v4/widget/DrawerLayout;->c:I

    .line 1834
    :cond_2
    return-void

    .line 2689
    :cond_3
    if-eq v1, v0, :cond_4

    if-ne v6, v0, :cond_5

    :cond_4
    move v1, v0

    .line 2690
    goto :goto_0

    :cond_5
    move v1, v2

    .line 2692
    goto :goto_0

    .line 2699
    :cond_6
    iget v0, v0, Landroid/support/v4/widget/l;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 4736
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/l;

    .line 4737
    iget-boolean v2, v0, Landroid/support/v4/widget/l;->d:Z

    if-nez v2, :cond_1

    .line 4738
    iput-boolean v3, v0, Landroid/support/v4/widget/l;->d:Z

    .line 4743
    invoke-virtual {v4, v5, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    .line 4746
    invoke-virtual {v4}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4747
    invoke-virtual {v4, v8}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 4750
    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_1
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 1935
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1936
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1941
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1942
    iget-object v1, p0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/ar;

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ar;->a(Landroid/view/View;I)V

    .line 1944
    :cond_0
    return-void

    .line 1938
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;F)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1873
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/view/View;)F

    move-result v1

    .line 1874
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1877
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1878
    cmpl-float v0, p2, v4

    if-gtz v0, :cond_0

    cmpl-float v0, p2, v4

    if-nez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1884
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/n;->b:Landroid/support/v4/widget/ar;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ar;->a(II)Z

    .line 1885
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1886
    return-void

    .line 1878
    :cond_2
    neg-int v0, v2

    goto :goto_0

    .line 1880
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1881
    cmpg-float v3, p2, v4

    if-ltz v3, :cond_4

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    :cond_4
    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public final a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 1839
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1842
    iget-object v1, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1843
    add-int v1, v0, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 1848
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;F)V

    .line 1849
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1850
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1851
    return-void

    .line 1845
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 1846
    sub-int/2addr v1, p2

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 1849
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1827
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/n;->a:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/view/View;I)I
    .locals 2

    .prologue
    .line 1953
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1957
    :goto_0
    return v0

    .line 1956
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 1957
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 1862
    iget v1, p0, Landroid/support/v4/widget/n;->a:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    .line 1863
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1864
    if-eqz v0, :cond_1

    .line 1865
    iget-object v1, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)V

    .line 1867
    :cond_1
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/l;

    .line 1856
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/l;->c:Z

    .line 1858
    invoke-virtual {p0}, Landroid/support/v4/widget/n;->b()V

    .line 1859
    return-void
.end method

.method public final c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1948
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 1890
    iget-object v0, p0, Landroid/support/v4/widget/n;->c:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/n;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1891
    return-void
.end method

.method public final d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1963
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method
