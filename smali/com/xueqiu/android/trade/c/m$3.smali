.class final Lcom/xueqiu/android/trade/c/m$3;
.super Lcom/xueqiu/android/base/b/p;
.source "TakingPositionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/m;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/stock/model/Stock;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/m;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/m$3;->a:Lcom/xueqiu/android/trade/c/m;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$3;->a:Lcom/xueqiu/android/trade/c/m;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/trade/c/m;->a(Lcom/xueqiu/android/trade/c/m;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 264
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 254
    check-cast p1, Ljava/util/ArrayList;

    .line 1258
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/m$3;->a:Lcom/xueqiu/android/trade/c/m;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/trade/c/m;->a(Lcom/xueqiu/android/trade/c/m;Ljava/util/ArrayList;Ljava/lang/Exception;)V

    .line 254
    return-void
.end method
