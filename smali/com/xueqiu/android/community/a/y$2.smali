.class final Lcom/xueqiu/android/community/a/y$2;
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
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/community/a/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/y;Lcom/xueqiu/android/community/model/User;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/xueqiu/android/community/a/y$2;->b:Lcom/xueqiu/android/community/a/y;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/y$2;->a:Lcom/xueqiu/android/community/model/User;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 364
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 365
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 361
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 4369
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4370
    iget-object v1, p0, Lcom/xueqiu/android/community/a/y$2;->a:Lcom/xueqiu/android/community/model/User;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$2;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/User;->setFollowing(Z)V

    .line 4371
    iget-object v0, p0, Lcom/xueqiu/android/community/a/y$2;->b:Lcom/xueqiu/android/community/a/y;

    .line 5338
    iget-object v0, v0, Landroid/support/v7/widget/s;->a:Landroid/support/v7/widget/t;

    invoke-virtual {v0}, Landroid/support/v7/widget/t;->a()V

    .line 4371
    :goto_1
    return-void

    .line 4370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4373
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
