.class final Lcom/xueqiu/android/cube/CubeActivity$53;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->p()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;

    .line 2465
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->H(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 2466
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeActivity;->invalidateOptionsMenu()V

    .line 2467
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->I(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 2468
    return-void
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 3

    .prologue
    .line 2472
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;

    .line 2473
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeActivity;->invalidateOptionsMenu()V

    .line 2474
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->H(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 2475
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->I(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 2476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2477
    const-string v1, "extra_portfolio_category"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2478
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 2479
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->c(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;

    .line 2484
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeActivity;->invalidateOptionsMenu()V

    .line 2485
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$53;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->I(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 2486
    return-void
.end method
