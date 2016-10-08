.class final Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;
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
    .line 176
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;->c:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    const/16 v0, 0x14

    iput v0, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;->a:I

    iput p2, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 176
    check-cast p1, Lrx/i;

    .line 3179
    invoke-static {}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;->c:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;->f(Lcom/xueqiu/android/cube/CubeRbHistoryActivity;)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;->a:I

    iget v4, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;->b:I

    new-instance v5, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5$1;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;->c:Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {v5, p0, v2, p1}, Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5$1;-><init>(Lcom/xueqiu/android/cube/CubeRbHistoryActivity$5;Lcom/xueqiu/android/base/b/q;Lrx/i;)V

    .line 3471
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-static {v1}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/c;->b(Ljava/lang/String;Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 176
    return-void
.end method
