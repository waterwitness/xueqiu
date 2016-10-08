.class final Lcom/xueqiu/android/community/StatusDetailActivity$3;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
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
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 676
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 677
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 672
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1681
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 1682
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1683
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->j(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;J)V

    .line 1687
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->a:Lcom/xueqiu/android/community/model/User;

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 1689
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->k(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1690
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->l(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1692
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1693
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->l(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 1687
    goto :goto_0

    .line 1695
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$3;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->k(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
