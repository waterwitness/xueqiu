.class final Lcom/xueqiu/android/cube/b/h$12;
.super Lcom/xueqiu/android/base/b/p;
.source "RebalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/xueqiu/android/stock/model/Stock;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$12;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 369
    const-string v0, "CreateCubeFragment"

    const-string v1, "getStockQuoteFlag failed."

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 366
    check-cast p1, Ljava/util/Map;

    .line 1374
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$12;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->g(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/a/d;

    move-result-object v0

    .line 2339
    iget-object v0, v0, Lcom/xueqiu/android/cube/a/d;->g:Ljava/util/Map;

    .line 1374
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1375
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$12;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->g(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/d;->notifyDataSetChanged()V

    .line 1376
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$12;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->c(Lcom/xueqiu/android/cube/b/h;)V

    .line 366
    return-void
.end method
