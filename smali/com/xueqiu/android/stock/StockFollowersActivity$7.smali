.class final Lcom/xueqiu/android/stock/StockFollowersActivity$7;
.super Ljava/lang/Object;
.source "StockFollowersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/StockFollowersActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/IMGroup;

.field final synthetic b:Lcom/xueqiu/android/stock/StockFollowersActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockFollowersActivity;Lcom/xueqiu/android/message/model/IMGroup;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$7;->b:Lcom/xueqiu/android/stock/StockFollowersActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$7;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$7;->b:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockFollowersActivity;->b(Lcom/xueqiu/android/stock/StockFollowersActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/GroupProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    const-string v1, "extra_group_id"

    iget-object v2, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$7;->a:Lcom/xueqiu/android/message/model/IMGroup;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockFollowersActivity$7;->b:Lcom/xueqiu/android/stock/StockFollowersActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/StockFollowersActivity;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method
