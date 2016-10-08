.class final Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;
.super Lrx/i;
.source "CubeRbHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->d(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->f()V

    .line 133
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 129
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1143
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;Lcom/xueqiu/android/common/model/PagedList;)Lcom/xueqiu/android/common/model/PagedList;

    .line 1144
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->d(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v1, v1, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->e(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 1145
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/cube/a/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1240
    iput-object v1, v0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    .line 1146
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/cube/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/n;->notifyDataSetChanged()V

    .line 1147
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/cube/a/n;

    move-result-object v0

    .line 2236
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    .line 1147
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->d(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->c(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V

    .line 129
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 137
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 138
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$3;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->d(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshExpandableListView;->f()V

    .line 139
    return-void
.end method
