.class final Lcom/xueqiu/android/stock/c/n$9;
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
        "Lcom/xueqiu/android/stock/model/StockQuote;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$9;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 716
    check-cast p1, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1719
    invoke-static {}, Lcom/xueqiu/android/base/util/as;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1720
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1719
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 716
    return-object v0

    .line 1720
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
