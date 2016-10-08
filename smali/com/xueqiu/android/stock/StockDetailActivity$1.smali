.class final Lcom/xueqiu/android/stock/StockDetailActivity$1;
.super Ljava/lang/Object;
.source "StockDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/StockDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$1;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public final b_(I)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$1;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;I)Landroid/support/v4/a/i;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    check-cast v0, Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/x;->C_()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$1;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$1;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$1;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;I)Landroid/support/v4/a/i;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    check-cast v0, Lcom/xueqiu/android/stock/c/x;

    .line 1479
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/stock/c/x;->d:Z

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$1;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/stock/StockDetailActivity;->b(Lcom/xueqiu/android/stock/StockDetailActivity;I)I

    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$1;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->b(Lcom/xueqiu/android/stock/StockDetailActivity;)Z

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$1;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    const/16 v1, 0x5dc

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->c(Lcom/xueqiu/android/stock/StockDetailActivity;I)V

    .line 136
    return-void
.end method
