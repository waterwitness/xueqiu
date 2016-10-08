.class final Lcom/xueqiu/android/stock/c/t$8;
.super Ljava/lang/Object;
.source "QuoteFragment.java"

# interfaces
.implements Lcom/xueqiu/android/stockchart/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/t;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/t;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 753
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x642

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 754
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->d(Lcom/xueqiu/android/stock/c/t;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 756
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 757
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 745
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 746
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->d(Lcom/xueqiu/android/stock/c/t;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 748
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 749
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 761
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 762
    const-string v1, "big"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x642

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 765
    :cond_0
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->d(Lcom/xueqiu/android/stock/c/t;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 767
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 768
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 731
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 732
    const-string v1, "big"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x642

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 736
    :cond_0
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->d(Lcom/xueqiu/android/stock/c/t;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v1, "tab_id"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 740
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 741
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 772
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 773
    const-string v1, "big"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x642

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 776
    :cond_0
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$8;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->d(Lcom/xueqiu/android/stock/c/t;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 778
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 779
    return-void
.end method
