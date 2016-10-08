.class final Lcom/xueqiu/android/community/d/e$8;
.super Lrx/i;
.source "UserProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/d/e;->e()V
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
.field final synthetic a:Lcom/xueqiu/android/community/d/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/e;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 304
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;J)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 309
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/community/b/o;->j()V

    .line 311
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getPinyinRemark()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setPinyinRemark(Ljava/lang/String;)V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getPinyinScreenName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setPinyinScreenName(Ljava/lang/String;)V

    .line 319
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowMe()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent_action_update_friends"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/b;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    :cond_3
    return-void

    .line 308
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$8;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 329
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 330
    return-void
.end method
