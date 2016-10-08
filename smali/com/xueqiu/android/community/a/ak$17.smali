.class final Lcom/xueqiu/android/community/a/ak$17;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;I)V
    .locals 0

    .prologue
    .line 1479
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$17;->a:Lcom/xueqiu/android/community/model/Status;

    iput p3, p0, Lcom/xueqiu/android/community/a/ak$17;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1483
    if-nez p2, :cond_0

    .line 1485
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1485
    const-class v2, Lcom/xueqiu/android/community/PromotionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1486
    const-string v1, "extra_status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$17;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1487
    const-string v1, "extra_top_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1488
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1525
    :goto_0
    return-void

    .line 1489
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1491
    iget v0, p0, Lcom/xueqiu/android/community/a/ak$17;->b:I

    if-ne v0, v1, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/a/ak$17$1;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/a/ak$17$1;-><init>(Lcom/xueqiu/android/community/a/ak$17;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/b/ai;->j(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 1509
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    new-instance v4, Lcom/xueqiu/android/community/a/ak$17$2;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/b;

    invoke-direct {v4, p0, v0}, Lcom/xueqiu/android/community/a/ak$17$2;-><init>(Lcom/xueqiu/android/community/a/ak$17;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/xueqiu/android/base/b/ai;->t(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 1523
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$17;->c:Lcom/xueqiu/android/community/a/ak;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$17;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/ak;->c(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    goto :goto_0
.end method
