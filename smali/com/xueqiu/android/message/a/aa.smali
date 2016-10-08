.class public final Lcom/xueqiu/android/message/a/aa;
.super Landroid/content/BroadcastReceiver;
.source "TalkListAdapter.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/z;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/message/a/z;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.talks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    const-string v1, "extra_talks"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/z;->a(Ljava/util/List;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.messages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    const-string v1, "extra_messages"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/z;->b(Ljava/util/List;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.receiveRead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    const-string v0, "target_read_at_long"

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    const-string v3, "extra_receive_read_toid_long"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/xueqiu/android/message/a/z;->a(JJ)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.sendRead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    const-string v0, "extra_talk"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xueqiu/android/message/a/z;->a(JJ)V

    goto :goto_0

    .line 108
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.setTalkState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    iget-object v4, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    const-string v0, "extra_talk"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 1169
    iget-object v5, v4, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    monitor-enter v5

    .line 1170
    :try_start_0
    iget-object v1, v4, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Talk;

    .line 1171
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1172
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 1173
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setNotify(Z)V

    .line 1174
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setTop(Z)V

    .line 1175
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    .line 1176
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 1177
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_6

    .line 1178
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 1180
    :cond_6
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 1185
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    if-eqz v2, :cond_0

    .line 1187
    invoke-virtual {v4}, Lcom/xueqiu/android/message/a/z;->b()V

    goto/16 :goto_0

    .line 1185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 110
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.updateIMGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 111
    iget-object v4, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    const-string v0, "extra_imgroup"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/IMGroup;

    .line 2151
    iget-object v5, v4, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    monitor-enter v5

    .line 2152
    :try_start_2
    iget-object v1, v4, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Talk;

    .line 2153
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 2154
    const-string v3, "%s(%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v4, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    .line 2155
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xueqiu/android/base/util/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 2154
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/IMGroup;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 2161
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2162
    if-eqz v2, :cond_0

    .line 2163
    invoke-virtual {v4}, Lcom/xueqiu/android/message/a/z;->b()V

    goto/16 :goto_0

    .line 2161
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 112
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.updateUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 113
    iget-object v4, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    const-string v0, "extra_user"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 3135
    iget-object v5, v4, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    monitor-enter v5

    .line 3136
    :try_start_4
    iget-object v1, v4, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Talk;

    .line 3137
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_a

    .line 3138
    iget-object v3, v4, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xueqiu/android/base/util/aw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    move v0, v2

    .line 3143
    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3144
    if-eqz v0, :cond_0

    .line 3145
    invoke-virtual {v4}, Lcom/xueqiu/android/message/a/z;->b()V

    goto/16 :goto_0

    .line 3143
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 114
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xueqiu.android.action.deleteTalk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/message/a/aa;->a:Lcom/xueqiu/android/message/a/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->a()V

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_3

    :cond_d
    move v2, v3

    goto :goto_2

    :cond_e
    move v2, v3

    goto/16 :goto_1
.end method
