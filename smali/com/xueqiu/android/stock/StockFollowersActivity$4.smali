.class final Lcom/xueqiu/android/stock/StockFollowersActivity$4;
.super Ljava/lang/Object;
.source "StockFollowersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/StockFollowersActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockFollowersActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockFollowersActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$4;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$4;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->b(Lcom/xueqiu/android/stock/StockFollowersActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/IMGroupListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v1, "extra_data_typesss"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const-string v1, "extra_stock_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$4;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/StockFollowersActivity;->c(Lcom/xueqiu/android/stock/StockFollowersActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "extra_title"

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$4;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    const v3, 0x7f0703fd

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$4;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v6}, Lcom/xueqiu/android/stock/StockFollowersActivity;->c(Lcom/xueqiu/android/stock/StockFollowersActivity;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/xueqiu/android/stock/StockFollowersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$4;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method
