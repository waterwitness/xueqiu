.class final Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;
.super Lrx/i;
.source "NVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/cube/model/HistoryValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/NVHistoryActivity$1;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->a(Lcom/xueqiu/android/cube/NVHistoryActivity;)V

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->b(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 89
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 84
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1099
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->a(Lcom/xueqiu/android/cube/NVHistoryActivity;Lcom/xueqiu/android/common/model/PagedList;)Lcom/xueqiu/android/common/model/PagedList;

    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->b(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v1, v1, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->c(Lcom/xueqiu/android/cube/NVHistoryActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->d(Lcom/xueqiu/android/cube/NVHistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->d(Lcom/xueqiu/android/cube/NVHistoryActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v1, v1, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->e(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/model/PagedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1103
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->f(Lcom/xueqiu/android/cube/NVHistoryActivity;)V

    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->g(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/cube/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/o;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$1$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->b(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 95
    return-void
.end method
