.class public final Lcom/xueqiu/android/community/a;
.super Ljava/lang/Object;
.source "CommentListItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Z

.field private b:Lcom/xueqiu/android/common/b;

.field private c:Lcom/xueqiu/android/community/model/Status;

.field private d:Lcom/xueqiu/android/common/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/a/d",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/community/model/Status;Lcom/xueqiu/android/common/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/b;",
            "Lcom/xueqiu/android/community/model/Status;",
            "Lcom/xueqiu/android/common/a/d",
            "<",
            "Lcom/xueqiu/android/community/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    .line 58
    iput-object v0, p0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    .line 59
    iput-object v0, p0, Lcom/xueqiu/android/community/a;->d:Lcom/xueqiu/android/common/a/d;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/a;->a:Z

    .line 63
    iput-object p1, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    .line 64
    iput-object p2, p0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    .line 65
    iput-object p3, p0, Lcom/xueqiu/android/community/a;->d:Lcom/xueqiu/android/common/a/d;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/b;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a;J)V
    .locals 3

    .prologue
    .line 55
    .line 15291
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    .line 16032
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/xueqiu/android/base/util/ah;->a(Landroid/content/Context;JILjava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 15292
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 9

    .prologue
    const/16 v8, 0x4b

    const/4 v7, 0x0

    .line 5318
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x6a4

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 5319
    const-string v1, "target_id"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 5320
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 5322
    const-string v1, "\u96ea\u7403\u7cbe\u5f69\u8bc4\u8bba"

    .line 5323
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    .line 6054
    invoke-static {v0, v2, v7}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v0

    .line 5323
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5324
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 6197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5324
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getText()Ljava/lang/String;

    move-result-object v0

    .line 5325
    :goto_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    .line 5326
    iget-object v2, p0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5328
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->isAnswer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5329
    const-string v1, "\u96ea\u7403\u7cbe\u5f69\u95ee\u7b54"

    .line 5330
    const-string v2, "COMMENT"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getRqtype()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5331
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    .line 5335
    :cond_0
    invoke-static {v0}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    .line 7054
    invoke-static {v0, v2, v7}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v0

    .line 5335
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5336
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->isAnswer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_1

    .line 5337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5340
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 5341
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 5342
    new-instance v6, Lcom/xueqiu/android/community/a$3;

    iget-object v7, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    invoke-direct {v6, p0, v7}, Lcom/xueqiu/android/community/a$3;-><init>(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/base/b/q;)V

    .line 7403
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/aj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 55
    return-void

    .line 5324
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/a;)Lcom/xueqiu/android/common/a/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->d:Lcom/xueqiu/android/common/a/d;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 6

    .prologue
    .line 8303
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    const-class v1, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8304
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v0

    .line 8305
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 8306
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v0

    .line 8308
    :cond_0
    const-string v3, "extra_comment"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8309
    const-string v3, "extra_write_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8310
    const-string v3, "extra_status_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8311
    const-string v1, "extra_paid_mention"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8312
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    .line 8311
    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8313
    const-string v0, "extra_paid_to_user"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8314
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/common/b;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    return-void

    .line 8312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 10186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 9212
    if-eqz v0, :cond_0

    .line 9213
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    .line 11152
    invoke-static {v0, v4}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 9219
    :goto_0
    return-void

    .line 9217
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getUserId()J

    move-result-wide v0

    .line 12069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 12077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 9217
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 9218
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    const-string v1, "\u4e0d\u80fd\u7ed9\u81ea\u5df1\u6253\u8d4f"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 9222
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/ap;->b(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 9223
    iget-object v1, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/b;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9224
    iget-object v0, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    const v1, 0x7f040012

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/b;->overridePendingTransition(II)V

    .line 9226
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x6a4

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 9227
    const-string v1, "reward_id"

    .line 13069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 13077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 9227
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 9228
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 4

    .prologue
    .line 14232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14233
    const-string v1, "extra_status_id"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14234
    const-string v1, "extra_is_status_reward"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14235
    iget-object v1, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    iget-object v2, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    const-class v3, Lcom/xueqiu/android/community/c/p;

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/b;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 4

    .prologue
    .line 14254
    const-string v0, "UNANSWERED"

    invoke-static {p1}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/community/model/Comment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14255
    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getUserId()J

    move-result-wide v0

    .line 15069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 15077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 14255
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 14256
    const-string v0, "\u5220\u9664\u540e\u8d39\u7528\u4e0d\u9000\u8fd8\uff0c\u5c06\u8f6c\u7ed9\u88ab\u63d0\u95ee\u8005"

    .line 14260
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/a$2;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/community/a$2;-><init>(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 14286
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void

    .line 14258
    :cond_0
    const-string v0, "\u786e\u8ba4\u5220\u9664\u5417\uff1f"

    goto :goto_0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/a;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 4

    .prologue
    .line 16296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    const-class v2, Lcom/xueqiu/android/community/CommentTalksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16297
    const-string v1, "extra_status"

    iget-object v2, p0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16298
    const-string v1, "extra_comment_id"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 16299
    iget-object v1, p0, Lcom/xueqiu/android/community/a;->b:Lcom/xueqiu/android/common/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/b;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a;->d:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 102
    const/4 v2, 0x0

    .line 103
    if-eqz p1, :cond_2

    .line 104
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 107
    :cond_2
    sub-int v2, p3, v2

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/community/a;->d:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v4}, Lcom/xueqiu/android/common/a/d;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    if-ltz v2, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/community/a;->d:Lcom/xueqiu/android/common/a/d;

    invoke-virtual {v4, v2}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xueqiu/android/community/model/Comment;

    .line 112
    if-eqz v6, :cond_0

    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const v2, 0x7f0700a7

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 119
    const v2, 0x7f0700aa

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 120
    const v2, 0x7f0702ec

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 121
    const v2, 0x7f0702fe

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 122
    const v2, 0x7f070300

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 123
    const v2, 0x7f070119

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 124
    const v2, 0x7f0702f1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 125
    const v2, 0x7f0700a1

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 127
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/xueqiu/android/community/a;->a:Z

    if-nez v2, :cond_3

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->getReplyScreenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 128
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4073
    const/4 v2, 0x1

    .line 4075
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->isTruncated()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 4076
    const/4 v2, 0x0

    .line 133
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 134
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_5
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->getRewardUserCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 141
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5069
    :cond_6
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 5077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v16

    .line 145
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v18

    cmp-long v2, v16, v18

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    .line 146
    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v18

    cmp-long v2, v16, v18

    if-nez v2, :cond_c

    :cond_7
    const/4 v2, 0x1

    .line 147
    :goto_2
    if-eqz v2, :cond_8

    .line 148
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_8
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v18

    cmp-long v2, v16, v18

    if-eqz v2, :cond_9

    .line 152
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 156
    invoke-interface {v4, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, [Ljava/lang/String;

    .line 158
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07009e

    .line 159
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    new-instance v2, Lcom/xueqiu/android/community/a$1;

    move-object/from16 v3, p0

    move-object/from16 v13, p2

    invoke-direct/range {v2 .. v14}, Lcom/xueqiu/android/community/a$1;-><init>(Lcom/xueqiu/android/community/a;Ljava/util/List;Ljava/lang/String;Lcom/xueqiu/android/community/model/Comment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v3, 0x1

    .line 207
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 4078
    :cond_a
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->isAnswer()Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "COMMENT"

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->getRqtype()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 4080
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Comment;->getReplyComment()Lcom/xueqiu/android/community/model/Comment;

    move-result-object v13

    invoke-virtual {v13}, Lcom/xueqiu/android/community/model/Comment;->isTruncated()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4081
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 4085
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/xueqiu/android/community/a;->c:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v13}, Lcom/xueqiu/android/community/model/Status;->isTruncated()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4086
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 146
    :cond_c
    const/4 v2, 0x0

    goto :goto_2
.end method
