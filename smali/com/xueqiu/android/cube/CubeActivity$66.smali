.class final Lcom/xueqiu/android/cube/CubeActivity$66;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$66;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 478
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$66;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getLastRebalancing()Lcom/xueqiu/android/cube/model/Rebalancing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Rebalancing;->getStatus()Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/cube/model/Rebalancing$Status;->FAILED:Lcom/xueqiu/android/cube/model/Rebalancing$Status;

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$66;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->p(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$66;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    .line 484
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$66;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/CubeActivity;Z)V

    .line 485
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$66;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->q(Lcom/xueqiu/android/cube/CubeActivity;)V

    goto :goto_0
.end method
