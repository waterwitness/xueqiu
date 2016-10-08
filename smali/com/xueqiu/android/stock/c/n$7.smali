.class final Lcom/xueqiu/android/stock/c/n$7;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Lrx/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/n;->M()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/f",
        "<",
        "Lcom/xueqiu/android/stock/model/PortfolioStock;",
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$7;->b:Lcom/xueqiu/android/stock/c/n;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/n$7;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 710
    check-cast p1, Lcom/xueqiu/android/stock/model/PortfolioStock;

    .line 1713
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$7;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/PortfolioStock;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 710
    return-object v0
.end method
