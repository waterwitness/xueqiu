.class final Lcom/xueqiu/android/stock/c/g$2;
.super Ljava/lang/Object;
.source "IndustryIndexFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/g;->a(Landroid/view/View;II)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/stock/c/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/g;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/g$2;->b:Lcom/xueqiu/android/stock/c/g;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/g$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v1, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/g$2;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/g$2;->b:Lcom/xueqiu/android/stock/c/g;

    iget-object v1, v1, Lcom/xueqiu/android/stock/c/g;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/e;->a(Landroid/content/Intent;)V

    .line 450
    :cond_0
    return-void
.end method
