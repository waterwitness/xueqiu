.class final Lcom/xueqiu/android/community/a/ak$19;
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
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$19;->b:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$19;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$19;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$19;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1561
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$19;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1560
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1553
    .line 2565
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$19;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$19;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2566
    :cond_0
    :goto_0
    return-void

    .line 2568
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$19;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 2569
    const v0, 0x7f07011a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 2570
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$19;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 2572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.statusDelete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2573
    const-string v1, "delete_status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$19;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2574
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->e()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 2575
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$19;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->deleteStatus(J)Z

    goto :goto_0
.end method
