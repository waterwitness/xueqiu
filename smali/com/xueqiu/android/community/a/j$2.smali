.class final Lcom/xueqiu/android/community/a/j$2;
.super Ljava/lang/Object;
.source "PaidCommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic b:Lcom/xueqiu/android/community/a/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/j;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/xueqiu/android/community/a/j$2;->b:Lcom/xueqiu/android/community/a/j;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/j$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 289
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/j$2;->b:Lcom/xueqiu/android/community/a/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/i;->a(Lcom/xueqiu/android/community/a/i;)Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    iget-object v0, p0, Lcom/xueqiu/android/community/a/j$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    .line 291
    const-string v0, "extra_comment"

    iget-object v4, p0, Lcom/xueqiu/android/community/a/j$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 292
    const-string v0, "extra_write_type"

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string v0, "extra_status_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 294
    const-string v2, "extra_paid_mention"

    iget-object v0, p0, Lcom/xueqiu/android/community/a/j$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/a/j$2;->a:Lcom/xueqiu/android/community/model/Comment;

    .line 295
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    .line 294
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    const-string v0, "extra_paid_to_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/j$2;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/community/a/j$2;->b:Lcom/xueqiu/android/community/a/j;

    iget-object v0, v0, Lcom/xueqiu/android/community/a/j;->r:Lcom/xueqiu/android/community/a/i;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/i;->a(Lcom/xueqiu/android/community/a/i;)Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
