.class final Lcom/xueqiu/android/stock/c/n$8;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$8;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 722
    check-cast p1, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 1725
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 722
    return-object v0
.end method
