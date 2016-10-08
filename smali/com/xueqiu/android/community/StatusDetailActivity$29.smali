.class final Lcom/xueqiu/android/community/StatusDetailActivity$29;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    .prologue
    const v5, 0x7f0e0118

    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1852
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v2, v5}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1853
    if-nez v2, :cond_1

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1856
    :cond_1
    if-lez p2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v3}, Lcom/xueqiu/android/community/StatusDetailActivity;->y(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 1857
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->z(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 1865
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->A(Lcom/xueqiu/android/community/StatusDetailActivity;)Z

    move-result v3

    .line 1868
    if-nez p2, :cond_5

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 1869
    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    add-int/lit8 v4, p4, -0x1

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 1870
    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v4}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-le v2, v4, :cond_5

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 1871
    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    const v4, 0x7f0e0062

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 1872
    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/a/a;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1874
    if-eqz v3, :cond_4

    .line 1875
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->B(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    move v2, v0

    .line 1882
    :goto_2
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 1883
    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 1884
    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v3}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 1888
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    .line 1889
    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v3}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v4}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v5}, Lcom/xueqiu/android/community/StatusDetailActivity;->h(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1890
    sub-int/2addr v2, v3

    if-lez v2, :cond_6

    .line 1891
    :goto_3
    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->D(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    goto/16 :goto_0

    .line 1859
    :cond_3
    if-nez p2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1860
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v2, v5}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->z(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    goto/16 :goto_1

    .line 1878
    :cond_4
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->C(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v0, v1

    .line 1890
    goto :goto_3
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 1842
    const v0, 0x7f0e076a

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1843
    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1845
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$29;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->x(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1848
    :cond_0
    return-void
.end method
