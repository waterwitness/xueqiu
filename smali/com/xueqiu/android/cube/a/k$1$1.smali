.class final Lcom/xueqiu/android/cube/a/k$1$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a/k$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/a/k$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/k$1;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/k$1$1;->a:Lcom/xueqiu/android/cube/a/k$1;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 107
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k$1$1;->a:Lcom/xueqiu/android/cube/a/k$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/k$1;->c:Lcom/xueqiu/android/cube/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/k;->b()V

    .line 109
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 104
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1113
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k$1$1;->a:Lcom/xueqiu/android/cube/a/k$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/k$1;->c:Lcom/xueqiu/android/cube/a/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/k;->b()V

    .line 1114
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k$1$1;->a:Lcom/xueqiu/android/cube/a/k$1;

    iget-object v1, v0, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k$1$1;->a:Lcom/xueqiu/android/cube/a/k$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/model/Cube;->setFollowing(Z)V

    .line 1128
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k$1$1;->a:Lcom/xueqiu/android/cube/a/k$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/k$1;->b:Lcom/xueqiu/android/cube/a/l;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/k$1$1;->a:Lcom/xueqiu/android/cube/a/k$1;

    iget-object v1, v1, Lcom/xueqiu/android/cube/a/k$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/a/k;->a(Lcom/xueqiu/android/cube/a/l;Lcom/xueqiu/android/cube/model/Cube;)V

    :goto_1
    return-void

    .line 1127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1131
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/k$1$1;->a:Lcom/xueqiu/android/cube/a/k$1;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a/k$1;->c:Lcom/xueqiu/android/cube/a/k;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1131
    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
