.class final Lcom/xueqiu/android/community/a/l$2;
.super Ljava/lang/Object;
.source "PaidQuestionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/a/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/l;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/xueqiu/android/community/a/l$2;->b:Lcom/xueqiu/android/community/a/l;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/l$2;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 271
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/l$2;->b:Lcom/xueqiu/android/community/a/l;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/k;->a(Lcom/xueqiu/android/community/a/k;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    const-string v0, "extra_write_type"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    const-string v0, "extra_status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/l$2;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 274
    const-string v0, "extra_reply_somebody"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/l$2;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v0, "extra_paid_to_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/l$2;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/community/a/l$2;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/l$2;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    const-string v2, "extra_paid_mention"

    iget-object v0, p0, Lcom/xueqiu/android/community/a/l$2;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/l$2;->b:Lcom/xueqiu/android/community/a/l;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/k;->a(Lcom/xueqiu/android/community/a/k;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method
