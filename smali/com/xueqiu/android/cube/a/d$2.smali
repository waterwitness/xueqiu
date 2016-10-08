.class final Lcom/xueqiu/android/cube/a/d$2;
.super Ljava/lang/Object;
.source "CubeHoldingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Holding;

.field final synthetic b:Lcom/xueqiu/android/cube/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/d;Lcom/xueqiu/android/cube/model/Holding;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/d$2;->b:Lcom/xueqiu/android/cube/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/cube/a/d$2;->a:Lcom/xueqiu/android/cube/model/Holding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d$2;->b:Lcom/xueqiu/android/cube/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/cube/a/d;->b(Lcom/xueqiu/android/cube/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d$2;->b:Lcom/xueqiu/android/cube/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/cube/a/d;->a(Lcom/xueqiu/android/cube/a/d;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v2, p0, Lcom/xueqiu/android/cube/a/d$2;->a:Lcom/xueqiu/android/cube/model/Holding;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Holding;->getStockSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d$2;->b:Lcom/xueqiu/android/cube/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/cube/a/d;->a(Lcom/xueqiu/android/cube/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a/d$2;->b:Lcom/xueqiu/android/cube/a/d;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d$2;->a:Lcom/xueqiu/android/cube/model/Holding;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/a/d;->b(Lcom/xueqiu/android/cube/a/d;Lcom/xueqiu/android/cube/model/Holding;)V

    goto :goto_0
.end method
