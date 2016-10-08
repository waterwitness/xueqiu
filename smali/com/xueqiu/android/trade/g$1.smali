.class final Lcom/xueqiu/android/trade/g$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TradeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/q;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 115
    iput-object p2, p0, Lcom/xueqiu/android/trade/g$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/trade/g$1;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/xueqiu/android/trade/g$1;->c:Z

    invoke-direct {p0, p1}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 118
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 115
    check-cast p1, Ljava/util/Map;

    .line 1123
    new-instance v0, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>()V

    .line 1124
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/xueqiu/android/trade/g$1;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/xueqiu/android/trade/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/trade/g$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xueqiu/android/trade/g$1;->c:Z

    .line 2047
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1129
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/g$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/trade/g$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/xueqiu/android/trade/g$1;->c:Z

    .line 3047
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/trade/g;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
