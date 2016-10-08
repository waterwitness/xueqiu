.class final Lcom/xueqiu/android/stock/StockFollowersActivity$8;
.super Ljava/lang/Object;
.source "StockFollowersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/StockFollowersActivity;->a(Lcom/xueqiu/android/community/model/User;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/stock/StockFollowersActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$8;->b:Lcom/xueqiu/android/stock/StockFollowersActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$8;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 382
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$8;->b:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->b(Lcom/xueqiu/android/stock/StockFollowersActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$8;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$8;->b:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->startActivity(Landroid/content/Intent;)V

    .line 385
    return-void
.end method
