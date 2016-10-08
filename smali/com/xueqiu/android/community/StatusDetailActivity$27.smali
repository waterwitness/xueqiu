.class final Lcom/xueqiu/android/community/StatusDetailActivity$27;
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
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1740
    :cond_0
    :goto_0
    return-void

    .line 1738
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 1739
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1732
    .line 2744
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2745
    :cond_0
    :goto_0
    return-void

    .line 2747
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 2748
    const v0, 0x7f07011a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 2749
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 2751
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.statusDelete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2752
    const-string v1, "delete_status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2753
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->e()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 2754
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->deleteStatus(J)Z

    .line 2755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2756
    const-string v1, "delete_status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2757
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 2758
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$27;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->finish()V

    goto :goto_0
.end method
