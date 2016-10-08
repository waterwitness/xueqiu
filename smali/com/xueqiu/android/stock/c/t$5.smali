.class final Lcom/xueqiu/android/stock/c/t$5;
.super Ljava/lang/Object;
.source "QuoteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/t;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/stock/c/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/t;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/t$5;->b:Lcom/xueqiu/android/stock/c/t;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/t$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 569
    new-instance v0, Lcom/xueqiu/android/stock/view/b;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t$5;->b:Lcom/xueqiu/android/stock/c/t;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/t;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xueqiu/android/stock/view/b;-><init>(Landroid/content/Context;)V

    .line 570
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t$5;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/b;->setData(Ljava/util/List;)V

    .line 1183
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/view/b;->invalidate()V

    .line 573
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$5;->b:Lcom/xueqiu/android/stock/c/t;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/t;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 575
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 577
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 578
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 580
    new-instance v2, Lcom/xueqiu/android/stock/c/t$5$1;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/stock/c/t$5$1;-><init>(Lcom/xueqiu/android/stock/c/t$5;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stock/view/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x640

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 588
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$5;->b:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->c(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v1, "type"

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/t$5;->b:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/t;->d(Lcom/xueqiu/android/stock/c/t;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 590
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 591
    return-void
.end method
