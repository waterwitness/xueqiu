.class final Lcom/xueqiu/android/community/a/y$4;
.super Lcom/xueqiu/android/base/b/p;
.source "RecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/y;
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

.field final synthetic b:Lcom/xueqiu/android/community/a/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/RecommendStock;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y$4;->b:Lcom/xueqiu/android/community/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/y$4;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 394
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 395
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 391
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 4399
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4400
    const-string v1, "extra_portfolio_category"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4401
    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$4;->b:Lcom/xueqiu/android/community/a/y;

    .line 5065
    iget-object v1, v1, Lcom/xueqiu/android/community/a/y;->c:Landroid/content/Context;

    .line 4401
    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 4402
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4403
    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$4;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$4;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/RecommendStock;->setHasExist(Z)V

    .line 4404
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$4;->b:Lcom/xueqiu/android/community/a/y;

    .line 5338
    iget-object v0, v0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    .line 4404
    :goto_1
    return-void

    .line 4403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4406
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$4;->b:Lcom/xueqiu/android/community/a/y;

    .line 6065
    iget-object v0, v0, Lcom/xueqiu/android/community/a/y;->c:Landroid/content/Context;

    .line 4406
    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
