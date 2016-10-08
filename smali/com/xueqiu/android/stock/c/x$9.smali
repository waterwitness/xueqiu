.class final Lcom/xueqiu/android/stock/c/x$9;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/x;->D()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$9;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 399
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$9;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0, p2, p1}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/c/x;ILandroid/widget/AbsListView;)V

    .line 401
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$9;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->j(Lcom/xueqiu/android/stock/c/x;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 402
    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    const/4 v1, 0x2

    if-lt p2, v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$9;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/c/x;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 408
    :cond_2
    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 409
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$9;->a:Lcom/xueqiu/android/stock/c/x;

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$9;->a:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/x;->h(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/community/widget/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/i;->d()Landroid/widget/ListView;

    move-result-object v0

    const v2, 0x7f0e060c

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Lcom/xueqiu/android/stock/c/x;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method
