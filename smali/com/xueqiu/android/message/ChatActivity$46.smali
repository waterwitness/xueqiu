.class final Lcom/xueqiu/android/message/ChatActivity$46;
.super Landroid/content/BroadcastReceiver;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.connectionReady"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->A(Lcom/xueqiu/android/message/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0, v4}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;I)I

    .line 1339
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->v(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.connectionLoading"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->A(Lcom/xueqiu/android/message/ChatActivity;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 1341
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;I)I

    .line 1342
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->v(Lcom/xueqiu/android/message/ChatActivity;)V

    goto :goto_0

    .line 1343
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.connectionLost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->A(Lcom/xueqiu/android/message/ChatActivity;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1344
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;I)I

    .line 1345
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->v(Lcom/xueqiu/android/message/ChatActivity;)V

    goto :goto_0

    .line 1346
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.chat.hideKeyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1347
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->q(Lcom/xueqiu/android/message/ChatActivity;)V

    goto :goto_0

    .line 1348
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.receiveTyping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1349
    const-string v0, "extra_from_id_long"

    invoke-virtual {p2, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1350
    const-string v2, "extra_typing_bool"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1351
    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v3}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 1352
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    .line 2066
    iget-object v0, v0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 1352
    const-string v1, "\u8f93\u5165\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1354
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->v(Lcom/xueqiu/android/message/ChatActivity;)V

    goto/16 :goto_0

    .line 1356
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.updateIMGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1357
    const-string v0, "extra_imgroup"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1358
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->B(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/IMGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1359
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/IMGroup;)Lcom/xueqiu/android/message/model/IMGroup;

    .line 1360
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    .line 3066
    iget-object v1, v1, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v1}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v1

    .line 1360
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 1361
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/ChatActivity;->b()V

    .line 1362
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->v(Lcom/xueqiu/android/message/ChatActivity;)V

    .line 1363
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->C(Lcom/xueqiu/android/message/ChatActivity;)V

    goto/16 :goto_0

    .line 1365
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1366
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    const-string v1, "extra_messages"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1367
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.historyMessages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1368
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    const-string v1, "extra_messages"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1369
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.talks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1370
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    const-string v1, "extra_talks"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1371
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.receiveRead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1372
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    const-string v1, "extra_reads"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1373
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.receiveTyping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1374
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    const-string v1, "extra_from_id_long"

    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "extra_to_id_long"

    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    const-string v1, "extra_typing_bool"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(JZ)V

    goto/16 :goto_0

    .line 1375
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.clearTalkHistory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1376
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$46;->a:Lcom/xueqiu/android/message/ChatActivity;

    const-string v1, "extra_to_id_long"

    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "extra_to_group_bool"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/message/ChatActivity;->a(JZ)V

    goto/16 :goto_0

    .line 1377
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.serviceMenu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
