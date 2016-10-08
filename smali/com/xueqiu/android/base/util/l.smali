.class public final Lcom/xueqiu/android/base/util/l;
.super Ljava/lang/Object;
.source "GroupUtil.java"


# direct methods
.method public static a(Lcom/xueqiu/android/common/b;ILjava/lang/String;)V
    .locals 7

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 57
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const-wide/16 v2, -0x1

    new-instance v6, Lcom/xueqiu/android/base/util/l$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/xueqiu/android/base/util/l$1;-><init>(Lcom/xueqiu/android/common/b;ILjava/lang/String;)V

    move-object v4, p2

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/b;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 161
    return-void
.end method

.method public static a(Lcom/xueqiu/android/common/b;J)V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/xueqiu/android/common/b;->h()Landroid/app/Dialog;

    .line 194
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v1}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 196
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->k(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 197
    invoke-virtual {v1, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/l$7;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/l$7;-><init>()V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/l$6;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/l$6;-><init>()V

    .line 202
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/l$5;

    invoke-direct {v1}, Lcom/xueqiu/android/base/util/l$5;-><init>()V

    .line 207
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/g;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/base/util/l$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xueqiu/android/base/util/l$3;-><init>(Lcom/xueqiu/android/common/b;J)V

    new-instance v2, Lcom/xueqiu/android/base/util/l$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/util/l$4;-><init>(Lcom/xueqiu/android/common/b;)V

    .line 212
    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 283
    return-void
.end method

.method public static a(Lcom/xueqiu/android/community/model/User;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 313
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/storage/DBManager;->insertOrUpdateUserByKeepFollowShip(Lcom/xueqiu/android/community/model/User;)Z

    .line 314
    invoke-static {p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 315
    if-nez v0, :cond_0

    .line 316
    invoke-static {p0}, Lcom/xueqiu/android/message/model/Talk;->from(Lcom/xueqiu/android/community/model/User;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v0

    .line 317
    invoke-static {p1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 319
    :cond_0
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/message/model/Talk;->setUserRef(Lcom/xueqiu/android/community/model/User;)V

    .line 320
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string v2, "talk"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 323
    return-void
.end method
