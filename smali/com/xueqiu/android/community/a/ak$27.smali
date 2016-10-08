.class final Lcom/xueqiu/android/community/a/ak$27;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
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

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/RecommendStock;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$27;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$27;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iput-object p4, p0, Lcom/xueqiu/android/community/a/ak$27;->b:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1790
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1791
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1787
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 2795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2796
    const-string v1, "extra_portfolio_category"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2797
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$27;->c:Lcom/xueqiu/android/community/a/ak;

    .line 3089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 2797
    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 2798
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2799
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$27;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$27;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/RecommendStock;->setHasExist(Z)V

    .line 2800
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$27;->b:Landroid/view/View;

    const v1, 0x7f0e01ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2801
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$27;->a:Lcom/xueqiu/android/community/model/RecommendStock;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/RecommendStock;->isHasExist()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/ak;->a(Landroid/widget/ImageView;Z)V

    .line 2802
    :goto_1
    return-void

    .line 2799
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2803
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$27;->c:Lcom/xueqiu/android/community/a/ak;

    .line 4089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 2803
    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
