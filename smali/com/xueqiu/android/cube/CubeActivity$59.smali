.class final Lcom/xueqiu/android/cube/CubeActivity$59;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/Rebalancing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$59;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 2751
    const-string v0, "CubeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCubeRbHistory  onErrorResponse : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2748
    check-cast p1, Lcom/xueqiu/android/cube/model/Rebalancing;

    .line 3756
    if-eqz p1, :cond_0

    .line 3757
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$59;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Rebalancing;)V

    .line 2748
    :cond_0
    return-void
.end method
