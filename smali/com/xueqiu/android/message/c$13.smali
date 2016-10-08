.class final Lcom/xueqiu/android/message/c$13;
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
    .line 421
    iput-object p1, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 424
    iget-object v0, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->i(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xueqiu/android/message/a/u;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/x;

    .line 425
    new-instance v2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1271
    iget-object v1, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 427
    if-eqz v1, :cond_1

    .line 2271
    iget-object v1, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 427
    instance-of v1, v1, Lcom/xueqiu/android/message/model/Talk;

    if-eqz v1, :cond_1

    .line 3271
    iget-object v0, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 428
    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 459
    :goto_0
    const-string v1, "talk"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 460
    iget-object v0, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 461
    iget-object v0, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->g(Lcom/xueqiu/android/message/c;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->g(Lcom/xueqiu/android/message/c;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ak;->c(Landroid/view/MenuItem;)Z

    .line 464
    :cond_0
    return-void

    .line 4271
    :cond_1
    iget-object v1, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 429
    if-eqz v1, :cond_3

    .line 5271
    iget-object v1, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 429
    instance-of v1, v1, Lcom/xueqiu/android/community/model/User;

    if-eqz v1, :cond_3

    .line 6271
    iget-object v0, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 430
    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 431
    iget-object v1, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v6}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    .line 432
    if-nez v1, :cond_2

    .line 433
    new-instance v1, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v1}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 434
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 435
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 436
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 439
    :cond_2
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 440
    invoke-virtual {v1, v7}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 441
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 442
    iget-object v3, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 443
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/community/model/User;)Z

    move-object v0, v1

    .line 444
    goto/16 :goto_0

    .line 7271
    :cond_3
    iget-object v1, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 444
    if-eqz v1, :cond_0

    .line 8271
    iget-object v1, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 444
    instance-of v1, v1, Lcom/xueqiu/android/message/model/IMGroup;

    if-eqz v1, :cond_0

    .line 9271
    iget-object v0, v0, Lcom/xueqiu/android/message/a/x;->d:Ljava/lang/Object;

    .line 445
    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 446
    iget-object v1, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v7}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    .line 447
    if-nez v1, :cond_4

    .line 448
    new-instance v1, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v1}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 449
    invoke-virtual {v1, v7}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 450
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 451
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v1, v6}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    move-object v0, v1

    .line 455
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/message/c$13;->a:Lcom/xueqiu/android/message/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/c;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
