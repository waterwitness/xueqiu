.class final Lcom/xueqiu/android/common/search/USearchActivity$4;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->a(Lcom/xueqiu/android/stock/a/ad;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/model/Stock;

.field final synthetic b:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;Lcom/xueqiu/android/stock/model/Stock;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 588
    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->n(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/b/a;->b(Ljava/lang/String;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->a:Lcom/xueqiu/android/stock/model/Stock;

    .line 592
    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/search/USearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 594
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "click_area"

    const-string v2, "\u80a1\u7968"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "click_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$4;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 598
    return-void
.end method
