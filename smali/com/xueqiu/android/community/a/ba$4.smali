.class final Lcom/xueqiu/android/community/a/ba$4;
.super Lrx/i;
.source "UserListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ba;
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

.field final synthetic b:Lcom/xueqiu/android/community/a/ba;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ba;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ba$4;->b:Lcom/xueqiu/android/community/a/ba;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ba$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ba$4;->a:Lcom/xueqiu/android/community/model/User;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 323
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$4;->b:Lcom/xueqiu/android/community/a/ba;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ba;->f(Lcom/xueqiu/android/community/a/ba;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ba$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;J)V

    .line 329
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ba$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$4;->b:Lcom/xueqiu/android/community/a/ba;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ba;->notifyDataSetChanged()V

    .line 332
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :cond_1
    const v0, 0x7f0703d6

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 318
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1351
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 340
    instance-of v0, p1, Lcom/android/volley/y;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 341
    check-cast v0, Lcom/android/volley/y;

    iget-object v0, v0, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/volley/y;

    iget-object v0, v0, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    iget v0, v0, Lcom/android/volley/k;->a:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1

    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ba$4;->b:Lcom/xueqiu/android/community/a/ba;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ba;->f(Lcom/xueqiu/android/community/a/ba;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070428

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
