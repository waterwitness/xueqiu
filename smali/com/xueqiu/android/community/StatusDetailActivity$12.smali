.class final Lcom/xueqiu/android/community/StatusDetailActivity$12;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 306
    .line 1309
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_comment_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1310
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 1313
    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    .line 1315
    const-string v1, "ANSWERED"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/PaidMention;->setState(Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->c(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1321
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->c(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 1323
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    .line 1324
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1325
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1326
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    .line 1327
    const-string v1, "ANSWERED"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/PaidMention;->setState(Ljava/lang/String;)V

    .line 1331
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->d(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 1335
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1338
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/Comment;

    .line 1339
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_5

    .line 1340
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1341
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1342
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/PaidMention;

    .line 1343
    const-string v1, "ANSWERED"

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/PaidMention;->setState(Ljava/lang/String;)V

    .line 1347
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$12;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->e(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/a;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
