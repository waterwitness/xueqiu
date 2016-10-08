.class final Lcom/xueqiu/android/cube/CreateCubeActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "CreateCubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CreateCubeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CreateCubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CreateCubeActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$2;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 98
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 95
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1103
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$2;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CreateCubeActivity;->a(Lcom/xueqiu/android/cube/CreateCubeActivity;Z)Z

    .line 1104
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$2;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CreateCubeActivity;->a(Lcom/xueqiu/android/cube/CreateCubeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1105
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$2;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->c(Lcom/xueqiu/android/cube/CreateCubeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/xueqiu/android/cube/CreateCubeActivity$2;->a:Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CreateCubeActivity;->d(Lcom/xueqiu/android/cube/CreateCubeActivity;)V

    .line 95
    :cond_0
    return-void
.end method
