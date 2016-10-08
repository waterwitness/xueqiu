.class public final Lcom/xueqiu/android/message/a/z;
.super Landroid/widget/BaseAdapter;
.source "TalkListAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/xueqiu/android/message/model/ApplyCount;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xueqiu/android/message/model/UserNotificationSession;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field e:Landroid/app/Activity;

.field public f:Lcom/xueqiu/android/message/a/aa;

.field public g:Landroid/support/v4/content/r;

.field public h:Lcom/d/a/b/f;

.field private i:Lcom/xueqiu/android/base/storage/DBManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    .line 86
    new-instance v0, Lcom/xueqiu/android/message/a/aa;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/a/aa;-><init>(Lcom/xueqiu/android/message/a/z;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/z;->f:Lcom/xueqiu/android/message/a/aa;

    .line 66
    iput-object p1, p0, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    .line 68
    iput-boolean p3, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    .line 69
    invoke-static {p1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/z;->g:Landroid/support/v4/content/r;

    .line 70
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    .line 71
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 72
    return-void
.end method

.method private d(I)Lcom/xueqiu/android/message/model/Talk;
    .locals 3

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    add-int/lit8 p1, p1, -0x1

    .line 461
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 463
    add-int/lit8 p1, p1, -0x1

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 470
    :cond_2
    const-string v0, "TalkListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calc real position wrong:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    goto :goto_1
.end method

.method private static d(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 355
    const/4 v1, 0x0

    .line 356
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 358
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 362
    if-nez v1, :cond_2

    .line 367
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :goto_2
    move-object v1, v0

    .line 369
    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 370
    :cond_3
    if-eqz v1, :cond_4

    .line 371
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 125
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->b()V

    .line 131
    return-void
.end method

.method public final a(ILcom/xueqiu/android/message/model/UserNotificationSession;)V
    .locals 1

    .prologue
    .line 499
    .line 2489
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 499
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 501
    return-void
.end method

.method public final a(JJ)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 192
    cmp-long v0, p1, v6

    if-eqz v0, :cond_2

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 192
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    .line 194
    iget-object v2, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    monitor-enter v2

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 196
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v4

    if-lez v4, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 198
    cmp-long v1, p3, v6

    if-lez v1, :cond_1

    .line 199
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V

    .line 201
    :cond_1
    const/4 v0, 0x1

    .line 205
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->b()V

    .line 210
    :cond_2
    return-void

    .line 205
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 227
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 230
    new-instance v8, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v9

    invoke-direct {v8, v10, v11, v9}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v3

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 234
    iget-boolean v8, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 237
    :cond_2
    new-instance v8, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v9

    invoke-direct {v8, v10, v11, v9}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    .line 238
    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 239
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Talk;

    .line 240
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 241
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 243
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/xueqiu/android/message/model/Talk;->setTop(Z)V

    .line 244
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getStatus()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    move v1, v2

    .line 249
    :cond_3
    iget-boolean v8, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    if-nez v8, :cond_4

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v1, :cond_4

    .line 250
    iget-object v8, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v8}, Lcom/xueqiu/android/base/storage/DBManager;->getLatestCollapsedTalk()Lcom/xueqiu/android/message/model/Talk;

    move-result-object v8

    .line 251
    if-eqz v8, :cond_4

    .line 252
    new-instance v9, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-virtual {v8}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_4
    if-eqz v1, :cond_1

    iget-boolean v8, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v9

    if-ne v8, v9, :cond_1

    .line 256
    new-instance v8, Lcom/xueqiu/android/message/database/key/TalkKey;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v9

    invoke-direct {v8, v10, v11, v9}, Lcom/xueqiu/android/message/database/key/TalkKey;-><init>(JZ)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 260
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    const/4 v0, 0x0

    .line 262
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 263
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 266
    iget-boolean v8, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    if-nez v8, :cond_8

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 267
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_8

    :cond_7
    move-object v1, v0

    .line 269
    goto :goto_2

    .line 272
    :cond_8
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 275
    :cond_9
    if-eqz v1, :cond_a

    .line 276
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_a
    sget-object v0, Lcom/xueqiu/android/message/model/Talk;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    .line 281
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->b()V

    .line 282
    const-string v0, "TalkListAdapter"

    const-string v1, "onTalks:%dms"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Lcom/xueqiu/android/message/model/UserNotificationSession;
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/UserNotificationSession;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 392
    new-instance v1, Lcom/xueqiu/android/message/a/z$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/a/z$1;-><init>(Lcom/xueqiu/android/message/a/z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 288
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    iget-object v5, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    monitor-enter v5

    .line 290
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 292
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 293
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Message;

    .line 295
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Message;->belongTo(Lcom/xueqiu/android/message/model/Talk;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 297
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    .line 300
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->loadLastMessage(Lcom/xueqiu/android/message/model/Message;)V

    .line 301
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_3

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 302
    iget-object v7, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v7

    .line 303
    if-eqz v7, :cond_1

    .line 304
    const-string v8, "%s:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v10

    const/4 v7, 0x1

    .line 305
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v1, v10}, Lcom/xueqiu/android/message/model/Message;->getEventText(Lcom/xueqiu/android/base/storage/DBManager;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v9, v7

    .line 304
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 305
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v1, v7}, Lcom/xueqiu/android/message/model/Message;->getEventText(Lcom/xueqiu/android/base/storage/DBManager;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 313
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 315
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 316
    const/4 v2, 0x0

    .line 317
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 318
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/message/model/Talk;

    .line 319
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Message;->belongTo(Lcom/xueqiu/android/message/model/Talk;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 320
    const/4 v3, 0x1

    .line 321
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/message/model/Talk;->loadLastMessage(Lcom/xueqiu/android/message/model/Message;)V

    .line 322
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_a

    .line 323
    iget-object v2, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getFromId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    .line 324
    if-eqz v2, :cond_8

    .line 325
    const-string v6, "%s:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v8, 0x1

    .line 326
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/4 v9, 0x7

    if-ne v2, v9, :cond_9

    iget-object v2, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Message;->getEventText(Lcom/xueqiu/android/base/storage/DBManager;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v7, v8

    .line 325
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    :cond_8
    move v1, v3

    .line 334
    :goto_5
    if-nez v1, :cond_6

    .line 335
    iget-object v1, p0, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(Lcom/xueqiu/android/message/model/Message;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_6

    .line 337
    iget-boolean v1, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getLatestCollapsedTalk()Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 326
    :cond_9
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 329
    :cond_a
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v2

    const/4 v6, 0x7

    if-ne v2, v6, :cond_b

    iget-object v2, p0, Lcom/xueqiu/android/message/a/z;->i:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/message/model/Message;->getEventText(Lcom/xueqiu/android/base/storage/DBManager;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    move v1, v3

    .line 331
    goto :goto_5

    .line 329
    :cond_b
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 339
    :cond_c
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v1

    iget-boolean v2, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    if-ne v1, v2, :cond_6

    .line 340
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 345
    :cond_d
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    iget-boolean v0, p0, Lcom/xueqiu/android/message/a/z;->d:Z

    if-nez v0, :cond_e

    .line 347
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/z;->d(Ljava/util/List;)V

    .line 349
    :cond_e
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    sget-object v1, Lcom/xueqiu/android/message/model/Talk;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->b()V

    .line 351
    return-void

    :cond_f
    move v1, v2

    goto :goto_5
.end method

.method public final c(Ljava/util/List;)Lcom/xueqiu/android/message/a/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Talk;",
            ">;)",
            "Lcom/xueqiu/android/message/a/z;"
        }
    .end annotation

    .prologue
    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    .line 386
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 387
    return-object p0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 494
    .line 1489
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    .line 494
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 495
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 496
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->b:Lcom/xueqiu/android/message/model/ApplyCount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->b:Lcom/xueqiu/android/message/model/ApplyCount;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/ApplyCount;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->g:Landroid/support/v4/content/r;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/z;->f:Lcom/xueqiu/android/message/a/aa;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 577
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/a/z;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 407
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    add-int/lit8 v0, v0, 0x1

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/message/a/z;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 411
    return v0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 417
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/z;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/z;->b(I)Lcom/xueqiu/android/message/model/UserNotificationSession;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_1
    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/a/z;->d(I)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 428
    const-wide v0, 0x7fffffffffffffffL

    .line 430
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 442
    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 581
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/z;->getItemViewType(I)I

    .line 582
    if-nez p2, :cond_0

    .line 583
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03017b

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 584
    new-instance v1, Lcom/xueqiu/android/message/a/ab;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/message/a/ab;-><init>(Lcom/xueqiu/android/message/a/z;B)V

    .line 2617
    const v0, 0x7f0e0560

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    .line 2618
    const v0, 0x7f0e057a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->b:Landroid/view/View;

    .line 2619
    const v0, 0x7f0e00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    .line 2620
    const v0, 0x7f0e0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->d:Landroid/widget/TextView;

    .line 2621
    const v0, 0x7f0e0554

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->e:Landroid/widget/TextView;

    .line 2622
    const v0, 0x7f0e057f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    .line 2623
    const v0, 0x7f0e008f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->f:Landroid/widget/ImageView;

    .line 2624
    const v0, 0x7f0e057e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->h:Landroid/widget/ImageView;

    .line 2625
    const v0, 0x7f0e057c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->g:Landroid/widget/ImageView;

    .line 2626
    const v0, 0x7f0e057b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/message/a/ab;->j:Landroid/view/View;

    .line 584
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/z;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 587
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/ab;

    .line 588
    iget-object v1, p0, Lcom/xueqiu/android/message/a/z;->b:Lcom/xueqiu/android/message/model/ApplyCount;

    .line 2647
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    const-string v5, "\u52a0\u7fa4\u7533\u8bf7"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2648
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->e:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2649
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/ApplyCount;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2650
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->j:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2651
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2652
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2653
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2654
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->b:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2655
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 3061
    iget-object v2, v2, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 2655
    const-string v5, "drawable://2130838293"

    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/xueqiu/android/message/a/ab;->k:Lcom/d/a/b/d;

    invoke-virtual {v2, v5, v6, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 2657
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/ApplyCount;->getUnread()I

    move-result v2

    if-lez v2, :cond_2

    .line 2658
    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/ApplyCount;->getUnread()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 4061
    iget-object v2, v2, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    .line 2658
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/ay;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2659
    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2660
    iget-object v0, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    :cond_1
    :goto_0
    return-object p2

    .line 2662
    :cond_2
    iget-object v0, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 589
    :cond_3
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/z;->a(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 590
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/ab;

    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/z;->b(I)Lcom/xueqiu/android/message/model/UserNotificationSession;

    move-result-object v5

    .line 4667
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    if-nez v1, :cond_6

    .line 4668
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 5061
    iget-object v1, v1, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 4668
    const-string v6, "drawable://2130838294"

    iget-object v7, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/xueqiu/android/message/a/ab;->k:Lcom/d/a/b/d;

    invoke-virtual {v1, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 4669
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    const v6, 0x7f0700a4

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 4686
    :goto_1
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getUnreadCount()I

    move-result v1

    if-lez v1, :cond_b

    .line 4687
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/ab;->a()V

    .line 4691
    :goto_2
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4692
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getUnreadCount()I

    move-result v1

    const/16 v6, 0x270f

    if-le v1, v6, :cond_c

    const-string v1, "9999+"

    .line 4693
    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 11061
    iget-object v6, v6, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    .line 4693
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xueqiu/android/base/util/ay;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4694
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4695
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getUnreadCount()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    if-eq v1, v10, :cond_d

    move v1, v2

    .line 4696
    :goto_4
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    move v1, v3

    :goto_5
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4697
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    const v6, 0x7f020390

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4698
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4699
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4700
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4702
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getUnreadCount()I

    move-result v1

    if-lez v1, :cond_f

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    if-ne v1, v10, :cond_f

    move v1, v2

    .line 4703
    :goto_6
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->j:Landroid/view/View;

    if-eqz v1, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4704
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    if-ne v1, v9, :cond_10

    .line 4705
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/UserNotification;->getDesc()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 12061
    iget-object v4, v4, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    .line 13054
    invoke-static {v2, v4, v3}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v2

    .line 4705
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4715
    :goto_7
    const-string v1, ""

    .line 4716
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/UserNotification;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/UserNotification;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    .line 4717
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserNotification;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/h;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4719
    :cond_5
    iget-object v0, v0, Lcom/xueqiu/android/message/a/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4670
    :cond_6
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    if-ne v1, v9, :cond_7

    .line 4671
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 6061
    iget-object v1, v1, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 4671
    const-string v6, "drawable://2130838295"

    iget-object v7, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/xueqiu/android/message/a/ab;->k:Lcom/d/a/b/d;

    invoke-virtual {v1, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 4672
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    const v6, 0x7f070234

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 4673
    :cond_7
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 4674
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 7061
    iget-object v1, v1, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 4674
    const-string v6, "drawable://2130838296"

    iget-object v7, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/xueqiu/android/message/a/ab;->k:Lcom/d/a/b/d;

    invoke-virtual {v1, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 4675
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    const v6, 0x7f07022c

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 4676
    :cond_8
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_9

    .line 4677
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 8061
    iget-object v1, v1, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 4677
    const-string v6, "drawable://2130838298"

    iget-object v7, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/xueqiu/android/message/a/ab;->k:Lcom/d/a/b/d;

    invoke-virtual {v1, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 4678
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    const v6, 0x7f070256

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 4679
    :cond_9
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_a

    .line 4680
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 9061
    iget-object v1, v1, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 4680
    const-string v6, "drawable://2130838292"

    iget-object v7, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/xueqiu/android/message/a/ab;->k:Lcom/d/a/b/d;

    invoke-virtual {v1, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 4681
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    const v6, 0x7f070467

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 4683
    :cond_a
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 10061
    iget-object v1, v1, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 4683
    const-string v6, "drawable://2130838299"

    iget-object v7, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/xueqiu/android/message/a/ab;->k:Lcom/d/a/b/d;

    invoke-virtual {v1, v6, v7, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;)V

    .line 4684
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    const v6, 0x7f070239

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 4689
    :cond_b
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/ab;->b()V

    goto/16 :goto_2

    .line 4692
    :cond_c
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getUnreadCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_d
    move v1, v3

    .line 4695
    goto/16 :goto_4

    :cond_e
    move v1, v4

    .line 4696
    goto/16 :goto_5

    :cond_f
    move v1, v3

    .line 4702
    goto/16 :goto_6

    .line 4707
    :cond_10
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/UserNotification;->getScreenName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, ""

    .line 4708
    :goto_8
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/UserNotification;->getDesc()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    const-string v4, ""

    .line 4709
    :goto_9
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getType()I

    move-result v6

    if-ne v6, v10, :cond_13

    .line 13197
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 4709
    if-eqz v6, :cond_13

    .line 4710
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->d:Landroid/widget/TextView;

    const-string v2, "\u6682\u65e0\u65b0\u6d88\u606f"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 4707
    :cond_11
    const-string v1, "%s\uff1a"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/UserNotification;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 4708
    :cond_12
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/UserNotificationSession;->getNotification()Lcom/xueqiu/android/community/model/UserNotification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/UserNotification;->getDesc()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 4712
    :cond_13
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->d:Landroid/widget/TextView;

    const-string v7, "%s%s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v3

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 14061
    iget-object v2, v2, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    .line 15054
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/util/ai;->a(Ljava/lang/CharSequence;Landroid/content/Context;Z)Landroid/text/Spanned;

    move-result-object v1

    .line 4712
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 592
    :cond_14
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/xueqiu/android/message/model/Talk;

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/ab;

    invoke-direct {p0, p1}, Lcom/xueqiu/android/message/a/z;->d(I)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v5

    .line 15723
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->b:Landroid/view/View;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v3

    :goto_a
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15724
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 16061
    iget-boolean v1, v1, Lcom/xueqiu/android/message/a/z;->d:Z

    .line 15724
    if-nez v1, :cond_18

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 15725
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15726
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    const v6, 0x7f020319

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15727
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    const-string v6, "\u7559\u8a00"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15750
    :goto_b
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string v1, ""

    :goto_c
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15751
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 18061
    iget-boolean v1, v1, Lcom/xueqiu/android/message/a/z;->d:Z

    .line 15751
    if-nez v1, :cond_1c

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v1

    if-lez v1, :cond_1c

    .line 15752
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15753
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->j:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15754
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->d:Landroid/widget/TextView;

    const-string v6, "[%d\u6761\u672a\u8bfb\u6d88\u606f]"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15755
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/ab;->a()V

    .line 15786
    :goto_d
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 22061
    iget-boolean v1, v1, Lcom/xueqiu/android/message/a/z;->d:Z

    .line 15786
    if-nez v1, :cond_24

    .line 15787
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 15788
    :cond_15
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15795
    :goto_e
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 15796
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15800
    :goto_f
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 15801
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v6

    iget-object v7, v0, Lcom/xueqiu/android/message/a/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    invoke-static {v6}, Lcom/xueqiu/android/base/util/h;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15803
    :cond_16
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getStatus()I

    move-result v1

    if-ne v1, v2, :cond_26

    .line 15804
    iget-object v0, v0, Lcom/xueqiu/android/message/a/ab;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_17
    move v1, v4

    .line 15723
    goto/16 :goto_a

    .line 15729
    :cond_18
    const v1, 0x7f020488

    .line 15730
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 15731
    const v1, 0x7f020485

    .line 15733
    :cond_19
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getUserRef()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getUserRef()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v6

    sget-object v7, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v6, v7, :cond_1a

    .line 15734
    const v1, 0x7f020483

    .line 15737
    :cond_1a
    new-instance v6, Lcom/d/a/b/e;

    invoke-direct {v6}, Lcom/d/a/b/e;-><init>()V

    .line 16248
    iput v1, v6, Lcom/d/a/b/e;->a:I

    .line 16270
    iput v1, v6, Lcom/d/a/b/e;->b:I

    .line 16293
    iput v1, v6, Lcom/d/a/b/e;->c:I

    .line 16341
    iput-boolean v2, v6, Lcom/d/a/b/e;->h:Z

    .line 15742
    invoke-virtual {v6}, Lcom/d/a/b/e;->a()Lcom/d/a/b/e;

    move-result-object v1

    .line 16415
    iput-boolean v3, v1, Lcom/d/a/b/e;->m:Z

    .line 15743
    new-instance v6, Lcom/d/a/b/c/c;

    const/high16 v7, 0x3f800000    # 1.0f

    .line 15744
    invoke-static {v7}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v6, v7}, Lcom/d/a/b/c/c;-><init>(I)V

    .line 16445
    iput-object v6, v1, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 15745
    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 15747
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 17061
    iget-object v6, v6, Lcom/xueqiu/android/message/a/z;->h:Lcom/d/a/b/f;

    .line 15747
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/xueqiu/android/message/a/ab;->a:Landroid/widget/ImageView;

    new-instance v9, Lcom/xueqiu/android/message/b/a;

    invoke-direct {v9}, Lcom/xueqiu/android/message/b/a;-><init>()V

    invoke-virtual {v6, v7, v8, v1, v9}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 15748
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 15750
    :cond_1b
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    .line 15756
    :cond_1c
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 19061
    iget-boolean v1, v1, Lcom/xueqiu/android/message/a/z;->d:Z

    .line 15756
    if-nez v1, :cond_1d

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 15757
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->d:Landroid/widget/TextView;

    const-string v6, "[\u5168\u90e8\u5df2\u8bfb]"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15758
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15759
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15760
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/ab;->b()V

    goto/16 :goto_d

    .line 15761
    :cond_1d
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getStatus()I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1e

    .line 15762
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15763
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/ab;->b()V

    .line 15764
    const-string v1, "!"

    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 20061
    iget-object v6, v6, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    .line 15764
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xueqiu/android/base/util/ay;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 15765
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15766
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    const v6, 0x7f020391

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_d

    .line 15767
    :cond_1e
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v1

    if-nez v1, :cond_1f

    .line 15768
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15769
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/ab;->b()V

    .line 15770
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 15772
    :cond_1f
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 15773
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15774
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v1

    const/16 v6, 0x270f

    if-le v1, v6, :cond_20

    const-string v1, "9999+"

    .line 15775
    :goto_10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->l:Lcom/xueqiu/android/message/a/z;

    .line 21061
    iget-object v6, v6, Lcom/xueqiu/android/message/a/z;->e:Landroid/app/Activity;

    .line 15775
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xueqiu/android/base/util/ay;->b(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 15776
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15777
    iget-object v6, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v1

    if-lez v1, :cond_21

    move v1, v3

    :goto_11
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15778
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    const v6, 0x7f020390

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 15779
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/ab;->a()V

    goto/16 :goto_d

    .line 15774
    :cond_20
    invoke-virtual {v5}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_21
    move v1, v4

    .line 15777
    goto :goto_11

    .line 15781
    :cond_22
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15782
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->j:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15783
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/ab;->b()V

    goto/16 :goto_d

    .line 15790
    :cond_23
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 15793
    :cond_24
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 15798
    :cond_25
    iget-object v1, v0, Lcom/xueqiu/android/message/a/ab;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 15806
    :cond_26
    iget-object v0, v0, Lcom/xueqiu/android/message/a/ab;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x2

    return v0
.end method
