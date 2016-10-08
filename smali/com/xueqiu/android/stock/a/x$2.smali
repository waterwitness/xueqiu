.class public final Lcom/xueqiu/android/stock/a/x$2;
.super Ljava/lang/Object;
.source "QuotesCenterRenderKit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/a/x;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/model/StockQuote;

.field final synthetic b:Lcom/xueqiu/android/stock/a/x;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/a/x;Lcom/xueqiu/android/stock/model/StockQuote;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/x$2;->b:Lcom/xueqiu/android/stock/a/x;

    iput-object p2, p0, Lcom/xueqiu/android/stock/a/x$2;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/x$2;->b:Lcom/xueqiu/android/stock/a/x;

    .line 1040
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 157
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/x$2;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/x$2;->b:Lcom/xueqiu/android/stock/a/x;

    .line 2040
    iget-object v1, v1, Lcom/xueqiu/android/stock/a/x;->a:Landroid/content/Context;

    .line 158
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xaf0

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 161
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/x$2;->a:Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 163
    return-void
.end method
