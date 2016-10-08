.class final Lcom/xueqiu/android/stock/c/t$3;
.super Ljava/lang/Object;
.source "QuoteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/t;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/t;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/t$3;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t$3;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    const-string v1, "extra_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$3;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "extra_name"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$3;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t$3;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/t;->a(Landroid/content/Intent;)V

    .line 211
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 212
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$3;->a:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 214
    return-void
.end method
