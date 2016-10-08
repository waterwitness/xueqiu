.class public final Lcom/xueqiu/android/community/d/c$9;
.super Lrx/i;
.source "TopicDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/xueqiu/android/community/d/c;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/d/c;Lcom/xueqiu/android/community/model/User;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/xueqiu/android/community/d/c$9;->c:Lcom/xueqiu/android/community/d/c;

    iput-object p2, p0, Lcom/xueqiu/android/community/d/c$9;->a:Lcom/xueqiu/android/community/model/User;

    iput-object p3, p0, Lcom/xueqiu/android/community/d/c$9;->b:Landroid/view/View;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 303
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$9;->c:Lcom/xueqiu/android/community/d/c;

    .line 1050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 304
    check-cast v0, Lcom/xueqiu/android/community/TopicDetailActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent_action_update_friends"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/TopicDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 306
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 299
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1315
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$9;->a:Lcom/xueqiu/android/community/model/User;

    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$9;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 1317
    iget-object v0, p0, Lcom/xueqiu/android/community/d/c$9;->c:Lcom/xueqiu/android/community/d/c;

    .line 2050
    iget-object v0, v0, Lcom/xueqiu/android/community/d/c;->a:Lcom/xueqiu/android/community/b/i;

    .line 1317
    iget-object v1, p0, Lcom/xueqiu/android/community/d/c$9;->a:Lcom/xueqiu/android/community/model/User;

    iget-object v2, p0, Lcom/xueqiu/android/community/d/c$9;->b:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/community/b/i;->a(Lcom/xueqiu/android/community/model/User;Landroid/view/View;)V

    .line 299
    :cond_0
    return-void

    .line 1316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 310
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 311
    return-void
.end method
