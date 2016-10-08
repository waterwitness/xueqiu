.class public final Lcom/xueqiu/android/community/d/c$8;
.super Lcom/xueqiu/android/base/b/p;
.source "TopicDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/RecommendStock;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/xueqiu/android/community/d/c;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/xueqiu/android/community/d/c$8;->c:Lcom/xueqiu/android/community/d/c;

    iput-object p3, p0, Lcom/xueqiu/android/community/d/c$8;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iput-object p4, p0, Lcom/xueqiu/android/community/d/c$8;->b:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 264
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 265
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 261
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1269
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1270
    const-string v0, "extra_portfolio_category"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1271
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$8;->c:Lcom/xueqiu/android/community/d/c;

    .line 2050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 1271
    check-cast v0, Lcom/xueqiu/android/community/TopicDetailActivity;

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1272
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$8;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$8;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/RecommendStock;->setHasExist(Z)V

    .line 1274
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$8;->c:Lcom/xueqiu/android/community/d/c;

    .line 3050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 1274
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$8;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iget-object v2, p0, Lcom/xueqiu/android/community/d/c$8;->b:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/community/b/i;->a(Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V

    :goto_1
    return-void

    .line 1273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$8;->c:Lcom/xueqiu/android/community/d/c;

    .line 4050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 1276
    check-cast v0, Lcom/xueqiu/android/community/TopicDetailActivity;

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
