.class final Lcom/xueqiu/android/community/c/k$2;
.super Ljava/lang/Object;
.source "OptionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/k;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/k;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/community/c/k$2;->a:Lcom/xueqiu/android/community/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k$2;->a:Lcom/xueqiu/android/community/c/k;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/k;->b(Lcom/xueqiu/android/community/c/k;)Lcom/xueqiu/android/stock/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/c/k$2;->a:Lcom/xueqiu/android/community/c/k;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/k;->a(Lcom/xueqiu/android/community/c/k;)Lcom/xueqiu/android/common/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/a/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockOption;

    .line 116
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockOption;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockOption;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;->setType(I)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/community/c/k$2;->a:Lcom/xueqiu/android/community/c/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/k;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/xueqiu/android/community/c/k$2;->a:Lcom/xueqiu/android/community/c/k;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/k;->a(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
