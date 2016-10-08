.class final Lcom/xueqiu/android/cube/CubeListActivity$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeListActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeListActivity$1;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 72
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$1;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeListActivity;->i()V

    .line 74
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lcom/xueqiu/android/community/model/User;

    .line 1078
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$1;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeListActivity;->a(Lcom/xueqiu/android/cube/CubeListActivity;Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/community/model/User;

    .line 1079
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$1;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeListActivity;->a(Lcom/xueqiu/android/cube/CubeListActivity;)V

    .line 1080
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeListActivity$1;->a:Lcom/xueqiu/android/cube/CubeListActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeListActivity;->i()V

    .line 69
    return-void
.end method
