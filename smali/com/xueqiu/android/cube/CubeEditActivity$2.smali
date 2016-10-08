.class final Lcom/xueqiu/android/cube/CubeEditActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeEditActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic a:Lcom/xueqiu/android/cube/CubeEditActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeEditActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeEditActivity$2;->a:Lcom/xueqiu/android/cube/CubeEditActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 93
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 94
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 90
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1098
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity$2;->a:Lcom/xueqiu/android/cube/CubeEditActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeEditActivity;->setResult(I)V

    .line 1100
    const v0, 0x7f07044c

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 1101
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeEditActivity$2;->a:Lcom/xueqiu/android/cube/CubeEditActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/CubeEditActivity;->finish()V

    :goto_0
    return-void

    .line 1103
    :cond_0
    const v0, 0x7f07044b

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method
