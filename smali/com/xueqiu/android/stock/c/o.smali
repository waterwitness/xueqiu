.class final Lcom/xueqiu/android/stock/c/o;
.super Landroid/support/v4/a/v;
.source "PortfolioFragment.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/c/n;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/o;->b:Lcom/xueqiu/android/stock/c/n;

    .line 862
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 863
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 7

    .prologue
    .line 867
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/o;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->n(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SwitchSwipeEnableViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v5, 0x1

    .line 868
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/o;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/c/n;)I

    move-result v1

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/o;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->t(Lcom/xueqiu/android/stock/c/n;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/o;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xueqiu/android/stock/model/Portfolio;

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/xueqiu/android/stock/c/p;->a(IJLcom/xueqiu/android/stock/model/Portfolio;ZI)Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    return-object v0

    .line 867
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 873
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/v;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/p;

    .line 874
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/o;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/n;->j(Lcom/xueqiu/android/stock/c/n;)[Lcom/xueqiu/android/stock/c/p;

    move-result-object v1

    aput-object v0, v1, p2

    .line 875
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/o;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/o;->b:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 884
    const/4 v0, -0x2

    return v0
.end method
