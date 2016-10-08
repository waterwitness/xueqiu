.class public Lcom/xueqiu/android/message/database/bind/TalkBinding;
.super Lcom/sleepycat/a/a/k;
.source "TalkBinding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lcom/xueqiu/android/message/model/Talk;

    invoke-direct {v0}, Lcom/xueqiu/android/message/model/Talk;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/message/model/Talk;->setId(J)V

    .line 25
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setGroup(Z)V

    .line 26
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setTop(Z)V

    .line 27
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setNotify(Z)V

    .line 28
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setUnread(I)Lcom/xueqiu/android/message/model/Talk;

    .line 29
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setProfileImageUrl(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 32
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setLastTime(Ljava/util/Date;)V

    .line 33
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setTargetReadAt(Ljava/util/Date;)V

    .line 34
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setReadAt(Ljava/util/Date;)V

    .line 35
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setActive(Z)V

    .line 36
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setCollapsed(Z)V

    .line 37
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/model/Talk;->setStatus(I)V

    .line 38
    return-object v0
.end method

.method public objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 43
    check-cast p1, Lcom/xueqiu/android/message/model/Talk;

    .line 44
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 45
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 46
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isTop()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 47
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isNotify()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 48
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getUnread()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 49
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    .line 50
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    .line 51
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    .line 52
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getLastTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 53
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getTargetReadAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 54
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getReadAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 55
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isActive()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 56
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->isCollapsed()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 57
    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Talk;->getStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 58
    return-void
.end method
