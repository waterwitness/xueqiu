.class final Lcom/xueqiu/android/cube/CubeEditorialActivity$5;
.super Ljava/lang/Object;
.source "CubeEditorialActivity.java"

# interfaces
.implements Lcom/xueqiu/android/base/util/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeEditorialActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeEditorialActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeEditorialActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$5;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$5;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->a(Lcom/xueqiu/android/cube/CubeEditorialActivity;)Lcom/xueqiu/android/cube/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 136
    return-void
.end method

.method public final b(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$5;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->a(Lcom/xueqiu/android/cube/CubeEditorialActivity;)Lcom/xueqiu/android/cube/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v1, "extra_portfolio_category"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$5;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    .line 144
    return-void
.end method

.method public final c(Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditorialActivity$5;->a:Lcom/xueqiu/android/cube/CubeEditorialActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeEditorialActivity;->a(Lcom/xueqiu/android/cube/CubeEditorialActivity;)Lcom/xueqiu/android/cube/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 149
    return-void
.end method
