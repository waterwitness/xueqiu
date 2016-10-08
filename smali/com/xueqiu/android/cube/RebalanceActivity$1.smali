.class final Lcom/xueqiu/android/cube/RebalanceActivity$1;
.super Lcom/xueqiu/android/base/b/p;
.source "RebalanceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/RebalanceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/RebalanceActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/RebalanceActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/RebalanceActivity;->i()V

    .line 80
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 76
    check-cast p1, Lcom/xueqiu/android/cube/model/Cube;

    .line 1085
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/RebalanceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/RebalanceActivity;->i()V

    .line 1089
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/RebalanceActivity;->a(Lcom/xueqiu/android/cube/RebalanceActivity;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/xueqiu/android/cube/b/h;->a(ZZLcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/b/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/RebalanceActivity;->a(Lcom/xueqiu/android/cube/RebalanceActivity;Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/b/h;

    .line 1090
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    .line 1275
    iget-boolean v0, v0, Lcom/xueqiu/android/common/b;->n:Z

    .line 1090
    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/RebalanceActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    const v1, 0x7f0e0018

    iget-object v2, p0, Lcom/xueqiu/android/cube/RebalanceActivity$1;->a:Lcom/xueqiu/android/cube/RebalanceActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/RebalanceActivity;->b(Lcom/xueqiu/android/cube/RebalanceActivity;)Lcom/xueqiu/android/cube/b/h;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 76
    :cond_0
    return-void
.end method
