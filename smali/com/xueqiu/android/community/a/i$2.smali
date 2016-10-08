.class final Lcom/xueqiu/android/community/a/i$2;
.super Ljava/lang/Object;
.source "PaidCommentListAdapter.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/i;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/i;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/xueqiu/android/community/a/i$2;->a:Lcom/xueqiu/android/community/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 96
    check-cast p1, Landroid/content/Intent;

    .line 1099
    const-string v0, "extra_comment_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/community/a/i$2;->a:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 1102
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1103
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1104
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    const-string v4, "ANSWERED"

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/community/model/PaidMention;->setState(Ljava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/i$2;->a:Lcom/xueqiu/android/community/a/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/i;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
