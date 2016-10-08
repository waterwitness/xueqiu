.class final Lcom/xueqiu/android/stock/PrivateFundActivity$22;
.super Lcom/xueqiu/android/base/b/p;
.source "PrivateFundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$22;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 393
    check-cast p1, Ljava/util/Map;

    .line 1400
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$22;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$22;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/stock/model/StockQuote;)V

    .line 393
    return-void
.end method
