.class final Lcom/xueqiu/android/cube/CubeListActivity$4;
.super Ljava/lang/Object;
.source "CubeListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeListActivity;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeListActivity$4;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$4;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeListActivity;->c(Lcom/xueqiu/android/cube/CubeListActivity;)Lcom/xueqiu/android/cube/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/h;->notifyDataSetChanged()V

    .line 173
    return-void
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$4;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeListActivity;->c(Lcom/xueqiu/android/cube/CubeListActivity;)Lcom/xueqiu/android/cube/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/h;->notifyDataSetChanged()V

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    const-string v1, "extra_portfolio_category"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeListActivity$4;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 181
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$4;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeListActivity;->c(Lcom/xueqiu/android/cube/CubeListActivity;)Lcom/xueqiu/android/cube/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/h;->notifyDataSetChanged()V

    .line 186
    return-void
.end method
