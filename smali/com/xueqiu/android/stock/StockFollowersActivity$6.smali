.class final Lcom/xueqiu/android/stock/StockFollowersActivity$6;
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
    .line 263
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$6;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$6;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->b(Lcom/xueqiu/android/stock/StockFollowersActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/UserListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    const-string v1, "extra_list_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    new-instance v1, Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/model/Stock;-><init>()V

    .line 269
    iget-object v2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$6;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/StockFollowersActivity;->c(Lcom/xueqiu/android/stock/StockFollowersActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stock/model/Stock;->setCode(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$6;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v2}, Lcom/xueqiu/android/stock/StockFollowersActivity;->d(Lcom/xueqiu/android/stock/StockFollowersActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stock/model/Stock;->setName(Ljava/lang/String;)V

    .line 271
    const-string v2, "extra_stock"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$6;->a:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->startActivity(Landroid/content/Intent;)V

    .line 273
    return-void
.end method
