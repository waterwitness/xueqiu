.class final Lcom/xueqiu/android/stock/c/x$14;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/x;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$14;->c:Lcom/xueqiu/android/stock/c/x;

    iput p2, p0, Lcom/xueqiu/android/stock/c/x$14;->a:I

    iput-object p3, p0, Lcom/xueqiu/android/stock/c/x$14;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 822
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$14;->c:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/stock/F10Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 823
    const-string v1, "extra_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$14;->c:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v1, "extra_page"

    iget v2, p0, Lcom/xueqiu/android/stock/c/x$14;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const-string v1, "extra_stock"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$14;->c:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 826
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$14;->c:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/x;->a(Landroid/content/Intent;)V

    .line 828
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 829
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$14;->c:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->f(Lcom/xueqiu/android/stock/c/x;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "name"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$14;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/x$14;->c:Lcom/xueqiu/android/stock/c/x;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/x;->i(Lcom/xueqiu/android/stock/c/x;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v1, "tab_id"

    iget v2, p0, Lcom/xueqiu/android/stock/c/x$14;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 833
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 834
    return-void
.end method
