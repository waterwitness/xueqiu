.class final Lcom/xueqiu/android/stock/PrivateFundActivity$1;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    const-class v2, Lcom/xueqiu/android/stock/FundNvHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const-string v1, "extra_fund_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x834

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 234
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 236
    return-void
.end method
