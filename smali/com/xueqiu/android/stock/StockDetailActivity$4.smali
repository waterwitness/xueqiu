.class final Lcom/xueqiu/android/stock/StockDetailActivity$4;
.super Ljava/lang/Object;
.source "StockDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/StockDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 337
    const-string v0, "StockDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5c1d\u8bd5\u5237\u65b0\u4e00\u6b21"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/StockDetailActivity;->d(Lcom/xueqiu/android/stock/StockDetailActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->d(Lcom/xueqiu/android/stock/StockDetailActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->e(Lcom/xueqiu/android/stock/StockDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->f(Lcom/xueqiu/android/stock/StockDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    .line 349
    invoke-static {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->g(Lcom/xueqiu/android/stock/StockDetailActivity;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    .line 350
    invoke-static {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->g(Lcom/xueqiu/android/stock/StockDetailActivity;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/client/MessageService;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->h(Lcom/xueqiu/android/stock/StockDetailActivity;)V

    .line 355
    :goto_1
    const/16 v0, 0x3e8

    .line 360
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->c(Lcom/xueqiu/android/stock/StockDetailActivity;I)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$4;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->d(Lcom/xueqiu/android/stock/StockDetailActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_3
    const v0, 0x1d4c0

    goto :goto_2
.end method
