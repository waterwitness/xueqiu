.class final Lcom/xueqiu/android/stock/c/m$7$1;
.super Lcom/xueqiu/android/base/b/p;
.source "PortfolioContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/m$7;->a(Lcom/xueqiu/android/common/widget/f;I)V
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
.field final synthetic a:Lcom/xueqiu/android/stock/c/m$7;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/m$7;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/m$7$1;->a:Lcom/xueqiu/android/stock/c/m$7;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 343
    instance-of v1, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v1, :cond_1

    .line 344
    check-cast p1, Lcom/xueqiu/android/base/a/a;

    .line 1092
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 346
    if-eqz v1, :cond_0

    .line 347
    const-string v2, "symbol"

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m$7$1;->a:Lcom/xueqiu/android/stock/c/m$7;

    iget-object v1, v1, Lcom/xueqiu/android/stock/c/m$7;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/m;->b(Lcom/xueqiu/android/stock/c/m;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 340
    check-cast p1, Lcom/xueqiu/android/cube/model/Cube;

    .line 1357
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$7$1;->a:Lcom/xueqiu/android/stock/c/m$7;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/m$7;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/m;->b(Lcom/xueqiu/android/stock/c/m;Ljava/lang/String;)V

    .line 340
    return-void
.end method
