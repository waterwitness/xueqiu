.class final Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2$1;
.super Lrx/i;
.source "CubeRbHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;->a()V
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
.field final synthetic a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 105
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1117
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;Lcom/xueqiu/android/common/model/PagedList;)Lcom/xueqiu/android/common/model/PagedList;

    .line 1118
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/cube/a/n;

    move-result-object v0

    .line 1236
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/n;->a:Ljava/util/List;

    .line 1118
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1119
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->a(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Lcom/xueqiu/android/cube/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/n;->notifyDataSetChanged()V

    .line 1120
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$2;->a:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->c(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)V

    .line 105
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 112
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method
