.class final Lcom/xueqiu/android/community/a/ak$35;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$35;->b:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$35;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 507
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$35;->b:Lcom/xueqiu/android/community/a/ak;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$35;->a:Lcom/xueqiu/android/community/model/Status;

    .line 2429
    new-instance v3, Landroid/content/Intent;

    .line 3089
    iget-object v0, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 2429
    const-class v4, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2431
    const-string v0, "extra_write_type"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2432
    const-string v0, "extra_status_id"

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2433
    const-string v0, "extra_paid_to_user"

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2434
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2435
    const-string v4, "extra_paid_mention"

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2438
    :cond_0
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2439
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    .line 2440
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "//<a href=\"/n/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" target=\"_blank\">@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "</a>:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2441
    const-string v4, "extra_retweet_text"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4089
    :cond_1
    iget-object v0, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 2443
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 509
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$35;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$35;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$35;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/xueqiu/android/community/l;->a(J)V

    .line 512
    :cond_2
    return-void
.end method
