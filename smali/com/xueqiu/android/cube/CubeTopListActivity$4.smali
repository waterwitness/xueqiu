.class final Lcom/xueqiu/android/cube/CubeTopListActivity$4;
.super Ljava/lang/Object;
.source "CubeTopListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeTopListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeTopListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeTopListActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$4;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    .prologue
    const v4, 0x7f0e0463

    const/16 v3, 0x8

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$4;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    const v1, 0x7f0e0183

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeTopListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 215
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 216
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$4;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Landroid/view/ViewGroup;)V

    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$4;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->f(Lcom/xueqiu/android/cube/CubeTopListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f070473

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$4;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$4;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->g(Lcom/xueqiu/android/cube/CubeTopListActivity;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->a(Lcom/xueqiu/android/cube/CubeTopListActivity;Landroid/view/ViewGroup;)V

    .line 221
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeTopListActivity$4;->a:Lcom/xueqiu/android/cube/CubeTopListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeTopListActivity;->f(Lcom/xueqiu/android/cube/CubeTopListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
