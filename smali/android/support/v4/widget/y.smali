.class final Landroid/support/v4/widget/y;
.super Landroid/support/v4/view/a;
.source "NestedScrollView.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1873
    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/f;)V
    .locals 2

    .prologue
    .line 1911
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/f;)V

    .line 1912
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1913
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/f;->b(Ljava/lang/CharSequence;)V

    .line 1914
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1915
    invoke-static {p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v0

    .line 1916
    if-lez v0, :cond_1

    .line 1917
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/f;->i(Z)V

    .line 1918
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_0

    .line 1919
    const/16 v1, 0x2000

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/f;->a(I)V

    .line 1921
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 1922
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/f;->a(I)V

    .line 1926
    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1876
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1906
    :goto_0
    return v0

    .line 1879
    :cond_0
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1880
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1881
    goto :goto_0

    .line 1883
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 1906
    goto :goto_0

    .line 1885
    :sswitch_0
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1887
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1889
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1890
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/NestedScrollView;->a(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1894
    goto :goto_0

    .line 1896
    :sswitch_1
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1898
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int v2, v3, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1899
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1900
    invoke-virtual {p1, v2}, Landroid/support/v4/widget/NestedScrollView;->a(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1904
    goto :goto_0

    .line 1883
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    .line 1930
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1931
    check-cast p1, Landroid/support/v4/widget/NestedScrollView;

    .line 1932
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1933
    invoke-static {p2}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/ac;

    move-result-object v1

    .line 1934
    invoke-static {p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1935
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/a/ac;->a(Z)V

    .line 1936
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    .line 2818
    sget-object v2, Landroid/support/v4/view/a/ac;->a:Landroid/support/v4/view/a/af;

    iget-object v3, v1, Landroid/support/v4/view/a/ac;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Landroid/support/v4/view/a/af;->c(Ljava/lang/Object;I)V

    .line 1937
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 2836
    sget-object v2, Landroid/support/v4/view/a/ac;->a:Landroid/support/v4/view/a/af;

    iget-object v3, v1, Landroid/support/v4/view/a/ac;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Landroid/support/v4/view/a/af;->d(Ljava/lang/Object;I)V

    .line 1938
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    .line 2853
    sget-object v2, Landroid/support/v4/view/a/ac;->a:Landroid/support/v4/view/a/af;

    iget-object v3, v1, Landroid/support/v4/view/a/ac;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Landroid/support/v4/view/a/af;->f(Ljava/lang/Object;I)V

    .line 1939
    invoke-static {p1}, Landroid/support/v4/widget/NestedScrollView;->a(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v0

    .line 2871
    sget-object v2, Landroid/support/v4/view/a/ac;->a:Landroid/support/v4/view/a/af;

    iget-object v1, v1, Landroid/support/v4/view/a/ac;->b:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Landroid/support/v4/view/a/af;->g(Ljava/lang/Object;I)V

    .line 1940
    return-void

    .line 1934
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
