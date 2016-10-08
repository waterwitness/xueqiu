.class final Lcom/xueqiu/android/message/SelectUserActivity$5;
.super Lcom/xueqiu/android/base/b/p;
.source "SelectUserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/SelectUserActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/message/model/IMGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/SelectUserActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/SelectUserActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/xueqiu/android/message/SelectUserActivity$5;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 347
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 348
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 344
    check-cast p1, Lcom/xueqiu/android/message/model/IMGroup;

    .line 1352
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 1353
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 1354
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 1355
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 1357
    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/model/Talk;->setGroupRef(Lcom/xueqiu/android/message/model/IMGroup;)V

    .line 1358
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/IMGroup;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 1359
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xueqiu/android/base/storage/DBManager;->saveIMGroup(Lcom/xueqiu/android/message/model/IMGroup;)Z

    .line 1360
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity$5;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/SelectUserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 1361
    iget-object v1, p0, Lcom/xueqiu/android/message/SelectUserActivity$5;->a:Lcom/xueqiu/android/message/SelectUserActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/SelectUserActivity;->a(Lcom/xueqiu/android/message/SelectUserActivity;Lcom/xueqiu/android/message/model/Talk;)V

    .line 344
    return-void
.end method
