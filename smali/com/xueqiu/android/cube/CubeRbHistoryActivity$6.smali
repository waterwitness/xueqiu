.class final Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;
.super Ljava/lang/Object;
.source "CubeRbHistoryActivity.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeRbHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;I)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;->c:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;->a:I

    iput p2, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 195
    check-cast p1, Lrx/i;

    .line 3198
    invoke-static {}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;->c:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->g(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;->c:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->f(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;->a:I

    iget v6, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;->b:I

    new-instance v7, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6$1;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;->c:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {v7, p0, v1, p1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6$1;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity$6;Lcom/xueqiu/android/base/b/q;Lrx/i;)V

    .line 3467
    iget-object v1, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual/range {v1 .. v7}, Lcom/xueqiu/android/base/b/c;->b(JLjava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 195
    return-void
.end method
