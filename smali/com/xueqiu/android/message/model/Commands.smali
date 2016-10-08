.class public Lcom/xueqiu/android/message/model/Commands;
.super Ljava/lang/Object;
.source "Commands.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteMessages(JZ)Lcom/snowballfinance/messageplatform/a/d;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/snowballfinance/messageplatform/a/d;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/d;-><init>()V

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 7077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 7505
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->c:Ljava/lang/Long;

    .line 62
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 7513
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->d:Ljava/lang/Long;

    .line 63
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 7521
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/d;->e:Ljava/lang/Boolean;

    .line 64
    return-object v0
.end method

.method public static deliver(Lcom/xueqiu/android/message/model/Message;)Lcom/snowballfinance/messageplatform/a/e;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {v0}, Lcom/xueqiu/android/message/model/Commands;->deliver(Ljava/util/List;)Lcom/snowballfinance/messageplatform/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static deliver(Ljava/util/List;)Lcom/snowballfinance/messageplatform/a/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)",
            "Lcom/snowballfinance/messageplatform/a/e;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Lcom/snowballfinance/messageplatform/a/e;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/a/e;-><init>()V

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 77
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->toPlatformMessage()Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8470
    :cond_0
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/e;->d:Ljava/util/List;

    .line 80
    return-object v1
.end method

.method public static deliverReceipt(Ljava/util/List;)Lcom/snowballfinance/messageplatform/a/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/message/model/Message;",
            ">;)",
            "Lcom/snowballfinance/messageplatform/a/f;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Lcom/snowballfinance/messageplatform/a/f;

    invoke-direct {v1}, Lcom/snowballfinance/messageplatform/a/f;-><init>()V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 93
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9427
    :cond_0
    iput-object v2, v1, Lcom/snowballfinance/messageplatform/a/f;->c:Ljava/util/List;

    .line 96
    return-object v1
.end method

.method public static getMessageSessions()Lcom/snowballfinance/messageplatform/a/j;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/snowballfinance/messageplatform/a/j;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/j;-><init>()V

    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 6077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 6698
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/j;->c:Ljava/lang/Long;

    .line 52
    return-object v0
.end method

.method public static getMessages(JZJJI)Lcom/snowballfinance/messageplatform/a/l;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/snowballfinance/messageplatform/a/l;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/l;-><init>()V

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3609
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->c:Ljava/lang/Long;

    .line 41
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3617
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->d:Ljava/lang/Long;

    .line 42
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3641
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->e:Ljava/lang/Boolean;

    .line 43
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4625
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->f:Ljava/lang/Long;

    .line 44
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4633
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->g:Ljava/lang/Long;

    .line 45
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5601
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/l;->h:Ljava/lang/Integer;

    .line 46
    return-object v0
.end method

.method public static read(JJZ)Lcom/snowballfinance/messageplatform/a/q;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/snowballfinance/messageplatform/a/q;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/q;-><init>()V

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1383
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/q;->c:Ljava/lang/Long;

    .line 26
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1391
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/q;->d:Ljava/lang/Long;

    .line 27
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1399
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/q;->e:Ljava/lang/Boolean;

    .line 28
    return-object v0
.end method

.method public static requestPrimary()Lcom/snowballfinance/messageplatform/a/r;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/snowballfinance/messageplatform/a/r;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/r;-><init>()V

    return-object v0
.end method

.method public static typing(JJ)Lcom/snowballfinance/messageplatform/a/t;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/snowballfinance/messageplatform/a/t;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/t;-><init>()V

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2332
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/t;->c:Ljava/lang/Long;

    .line 34
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2340
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/t;->d:Ljava/lang/Long;

    .line 35
    return-object v0
.end method

.method public static updateMessageSession(Lcom/xueqiu/android/message/model/Talk;)Lcom/snowballfinance/messageplatform/a/u;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/snowballfinance/messageplatform/a/u;

    invoke-direct {v0}, Lcom/snowballfinance/messageplatform/a/u;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/xueqiu/android/message/model/Talk;->toMessageSession()Lcom/snowballfinance/messageplatform/data/MessageSession;

    move-result-object v1

    .line 7546
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/u;->c:Lcom/snowballfinance/messageplatform/data/MessageSession;

    .line 70
    return-object v0
.end method
