.class final Lcom/xueqiu/android/message/c$14;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 475
    iget-object v2, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v2}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 476
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/message/ApplyListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v2}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/xueqiu/android/message/a/z;->a(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 479
    iget-object v2, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v2}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/xueqiu/android/message/a/z;->b(I)Lcom/xueqiu/android/message/model/UserNotificationSession;

    move-result-object v2

    .line 480
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v3

    if-nez v3, :cond_2

    .line 481
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/CommentReceiveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 483
    :cond_2
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 484
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/UserListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    new-instance v1, Lcom/xueqiu/android/community/model/User;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/User;-><init>()V

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 486
    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/community/model/User;->setUserId(J)V

    .line 487
    const-string v2, "extra_list_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    const-string v2, "extra_user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 489
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    .line 490
    iget-object v0, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070505

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 491
    :cond_3
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 492
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/MentionMeStatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 494
    :cond_4
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    .line 495
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setUnreadCount(I)V

    .line 496
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 498
    iget-object v4, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v4}, Lcom/xueqiu/android/message/c;->j(Lcom/xueqiu/android/message/c;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 499
    iget-object v0, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->k(Lcom/xueqiu/android/message/c;)Z

    .line 501
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v4, "pay_ask_first_in"

    invoke-static {v0, v4, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    move v0, v1

    .line 504
    :cond_5
    const-string v1, "is_show_hint"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 505
    const-string v0, "question_count"

    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v1}, Lcom/xueqiu/android/message/c;->l(Lcom/xueqiu/android/message/c;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string v0, "comment_count"

    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v1}, Lcom/xueqiu/android/message/c;->m(Lcom/xueqiu/android/message/c;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    iget-object v0, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->l(Lcom/xueqiu/android/message/c;)I

    move-result v0

    if-gtz v0, :cond_6

    .line 509
    iget-object v0, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->m(Lcom/xueqiu/android/message/c;)I

    move-result v0

    if-lez v0, :cond_6

    .line 510
    const-string v0, "page_type"

    const-string v1, "comment"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/xueqiu/android/community/c/l;

    invoke-static {v1, v4, v3}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    .line 515
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_0

    .line 517
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_new_paid_mention"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 512
    :cond_6
    const-string v0, "page_type"

    const-string v1, "question"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_7
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_8

    .line 520
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/xueqiu/android/trade/c/w;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 523
    :cond_8
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/model/UserNotificationSession;->setUnreadCount(I)V

    .line 524
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/xueqiu/android/tactic/MyPushListActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    .line 526
    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_9

    .line 528
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_new_push"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    :cond_9
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x708

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 531
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 534
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 535
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/message/TalkListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    const-string v2, "extra_collapsed_boolean"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    iget-object v1, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 543
    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    const-string v2, "talk"

    iget-object v0, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 545
    iget-object v0, p0, Lcom/xueqiu/android/message/c$14;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/c;->a(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
