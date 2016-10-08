.class final Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;
.super Lrx/i;
.source "NVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a()V
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
.field final synthetic a:Lcom/xueqiu/android/cube/NVHistoryActivity$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/NVHistoryActivity$2;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$2;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->a(Lcom/xueqiu/android/cube/NVHistoryActivity;)V

    .line 119
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 115
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1128
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->a(Lcom/xueqiu/android/cube/NVHistoryActivity;Lcom/xueqiu/android/common/model/PagedList;)Lcom/xueqiu/android/common/model/PagedList;

    .line 1129
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->d(Lcom/xueqiu/android/cube/NVHistoryActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$2;

    iget-object v1, v1, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/NVHistoryActivity;->e(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/common/model/PagedList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1130
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->f(Lcom/xueqiu/android/cube/NVHistoryActivity;)V

    .line 1131
    iget-object v0, p0, Lcom/xueqiu/android/cube/NVHistoryActivity$2$1;->a:Lcom/xueqiu/android/cube/NVHistoryActivity$2;

    iget-object v0, v0, Lcom/xueqiu/android/cube/NVHistoryActivity$2;->a:Lcom/xueqiu/android/cube/NVHistoryActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/NVHistoryActivity;->g(Lcom/xueqiu/android/cube/NVHistoryActivity;)Lcom/xueqiu/android/cube/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/o;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 123
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method
