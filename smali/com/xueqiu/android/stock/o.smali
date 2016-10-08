.class final Lcom/xueqiu/android/stock/o;
.super Landroid/support/v4/a/v;
.source "StockDetailActivity.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/stock/StockDetailActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/StockDetailActivity;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/xueqiu/android/stock/o;->b:Lcom/xueqiu/android/stock/StockDetailActivity;

    .line 313
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 314
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/xueqiu/android/stock/o;->b:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;I)Landroid/support/v4/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/stock/o;->b:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->c(Lcom/xueqiu/android/stock/StockDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
