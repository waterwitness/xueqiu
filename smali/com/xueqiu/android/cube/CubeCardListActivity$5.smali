.class final Lcom/xueqiu/android/cube/CubeCardListActivity$5;
.super Ljava/lang/Object;
.source "CubeCardListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeCardListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeCardListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeCardListActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$5;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$5;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->c(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/cube/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 277
    return-void
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$5;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->c(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/cube/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    const-string v1, "extra_portfolio_category"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$5;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 285
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$5;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->c(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/cube/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 290
    return-void
.end method
