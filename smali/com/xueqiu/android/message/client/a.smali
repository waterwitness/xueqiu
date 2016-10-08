.class public final Lcom/xueqiu/android/message/client/a;
.super Ljava/lang/Object;
.source "CommandHandler.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/xueqiu/android/message/client/d;

.field private c:Lcom/snowballfinance/message/io/c/h;

.field private d:Lcom/xueqiu/android/base/SnowBallApplication;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snowballfinance/message/io/c/h;Lcom/xueqiu/android/base/SnowBallApplication;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/xueqiu/android/message/client/a;->c:Lcom/snowballfinance/message/io/c/h;

    .line 82
    new-instance v0, Lcom/xueqiu/android/message/client/d;

    invoke-direct {v0, p1, p3}, Lcom/xueqiu/android/message/client/d;-><init>(Landroid/content/Context;Lcom/xueqiu/android/base/SnowBallApplication;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/client/a;->b:Lcom/xueqiu/android/message/client/d;

    .line 83
    iput-object p3, p0, Lcom/xueqiu/android/message/client/a;->d:Lcom/xueqiu/android/base/SnowBallApplication;

    .line 84
    return-void
.end method

.method static a()V
    .locals 2

    .prologue
    .line 664
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->getAllUnreadCount(Z)I

    move-result v0

    .line 665
    sget-object v1, Lcom/xueqiu/android/message/client/c;->f:Lrx/i/b;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/i/b;->a(Ljava/lang/Object;)V

    .line 666
    return-void
.end method

.method static synthetic a(Lcom/snowballfinance/messageplatform/data/SystemEvent;)Z
    .locals 2

    .prologue
    .line 65
    .line 9701
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9702
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9703
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9704
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 65
    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/snowballfinance/messageplatform/a/e;)V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/16 v10, 0x64

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    .line 5466
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/e;->d:Ljava/util/List;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6466
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/e;->d:Ljava/util/List;

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/Message;

    .line 147
    invoke-static {v0}, Lcom/xueqiu/android/message/model/Message;->wrapPlatformMessage(Lcom/snowballfinance/messageplatform/data/Message;)Lcom/xueqiu/android/message/model/Message;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/Message;->getMessageId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a;->c:Lcom/snowballfinance/message/io/c/h;

    iget-object v3, p0, Lcom/xueqiu/android/message/client/a;->c:Lcom/snowballfinance/message/io/c/h;

    .line 7428
    iget-object v3, v3, Lcom/snowballfinance/message/io/c/h;->e:Ljava/lang/String;

    .line 150
    invoke-static {v2, v3}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/util/List;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    new-instance v3, Lcom/xueqiu/android/message/client/a$1;

    invoke-direct {v3, p0, v2}, Lcom/xueqiu/android/message/client/a$1;-><init>(Lcom/xueqiu/android/message/client/a;Ljava/util/List;)V

    .line 151
    invoke-virtual {v0, v3}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 7458
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/e;->c:Ljava/lang/Boolean;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 164
    invoke-static {v1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v1

    .line 167
    new-instance v2, Lcom/xueqiu/android/message/client/a$23;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/a$23;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$12;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/message/client/a$12;-><init>(Lcom/xueqiu/android/message/client/a;Z)V

    .line 173
    invoke-virtual {v2, v3}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 180
    new-instance v2, Lcom/xueqiu/android/message/client/a$34;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/a$34;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v2

    .line 187
    new-instance v3, Lcom/xueqiu/android/message/client/a$54;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$54;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v3}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$45;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/message/client/a$45;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 193
    invoke-virtual {v3, v4}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 200
    new-instance v3, Lcom/xueqiu/android/message/client/a$56;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$56;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v3}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v3

    .line 206
    invoke-virtual {v3, v5}, Lrx/a;->b(I)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$55;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/message/client/a$55;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v3, v4}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 213
    new-instance v3, Lcom/xueqiu/android/message/client/a$2;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$2;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v3}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v3

    .line 219
    invoke-virtual {v3, v5}, Lrx/a;->b(I)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$57;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/message/client/a$57;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v3, v4}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 226
    new-instance v3, Lcom/xueqiu/android/message/client/a$4;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$4;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v3}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$3;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/message/client/a$3;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 232
    invoke-virtual {v3, v4}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v3

    .line 239
    new-instance v4, Lcom/xueqiu/android/message/client/a$6;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/message/client/a$6;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v4}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/message/client/a$5;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/message/client/a$5;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 245
    invoke-virtual {v4, v5}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v4

    .line 253
    new-instance v5, Lcom/xueqiu/android/message/client/a$8;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/message/client/a$8;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v5}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v5

    new-instance v6, Lcom/xueqiu/android/message/client/a$7;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/client/a$7;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 258
    invoke-virtual {v5, v6}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v5

    .line 265
    new-instance v6, Lcom/xueqiu/android/message/client/a$10;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/client/a$10;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v6}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v6

    new-instance v7, Lcom/xueqiu/android/message/client/a$9;

    invoke-direct {v7, p0}, Lcom/xueqiu/android/message/client/a$9;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 270
    invoke-virtual {v6, v7}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v6

    .line 277
    new-instance v7, Lcom/xueqiu/android/message/client/a$13;

    invoke-direct {v7, p0}, Lcom/xueqiu/android/message/client/a$13;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v7}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v7

    new-instance v8, Lcom/xueqiu/android/message/client/a$11;

    invoke-direct {v8, p0}, Lcom/xueqiu/android/message/client/a$11;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 282
    invoke-virtual {v7, v8}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v7

    .line 289
    new-instance v8, Lcom/xueqiu/android/message/client/a$15;

    invoke-direct {v8, p0}, Lcom/xueqiu/android/message/client/a$15;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v8}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v8

    new-instance v9, Lcom/xueqiu/android/message/client/a$14;

    invoke-direct {v9, p0}, Lcom/xueqiu/android/message/client/a$14;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 294
    invoke-virtual {v8, v9}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v8

    .line 301
    new-instance v9, Lcom/xueqiu/android/message/client/a$17;

    invoke-direct {v9, p0}, Lcom/xueqiu/android/message/client/a$17;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v9}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 7992
    invoke-static {v1, v2}, Lrx/a;->a(Lrx/a;Lrx/a;)Lrx/a;

    move-result-object v1

    .line 307
    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$16;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/a$16;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 314
    invoke-static {v6, v8}, Lrx/a;->a(Lrx/a;Lrx/a;)Lrx/a;

    move-result-object v2

    invoke-virtual {v2, v10}, Lrx/a;->a(I)Lrx/a;

    move-result-object v2

    invoke-virtual {v2}, Lrx/a;->d()Lrx/a;

    move-result-object v2

    new-instance v6, Lcom/xueqiu/android/message/client/a$18;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/message/client/a$18;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v2, v6}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v2

    .line 323
    invoke-static {v3, v2}, Lrx/a;->a(Lrx/a;Lrx/a;)Lrx/a;

    move-result-object v2

    invoke-virtual {v2}, Lrx/a;->d()Lrx/a;

    move-result-object v2

    invoke-virtual {v2, v10}, Lrx/a;->a(I)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$19;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$19;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v2, v3}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 330
    invoke-static {v4, v5, v7}, Lrx/a;->a(Lrx/a;Lrx/a;Lrx/a;)Lrx/a;

    move-result-object v2

    invoke-virtual {v2}, Lrx/a;->d()Lrx/a;

    move-result-object v2

    invoke-virtual {v2, v10}, Lrx/a;->a(I)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$25;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$25;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v2, v3}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v2

    .line 337
    invoke-virtual {v2, v10}, Lrx/a;->a(I)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$24;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$24;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v2, v3}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$22;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$22;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 349
    invoke-virtual {v2, v3}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$21;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/a$21;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 354
    invoke-virtual {v2, v3}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$20;

    invoke-direct {v3, p0, v1, v0}, Lcom/xueqiu/android/message/client/a$20;-><init>(Lcom/xueqiu/android/message/client/a;Lrx/a;Z)V

    .line 359
    invoke-virtual {v2, v3}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 391
    return-void
.end method

.method final a(Lcom/snowballfinance/messageplatform/a/i;)V
    .locals 6

    .prologue
    .line 408
    .line 8769
    iget-object v0, p1, Lcom/snowballfinance/messageplatform/a/i;->c:Ljava/util/List;

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;

    .line 413
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getTargetId()Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getTargetGroup()Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/MessageSessionExt;->getTargetLastReadTimestamp()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->markTalkTargetReads(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 418
    sget-object v0, Lcom/xueqiu/android/message/client/c;->c:Lrx/i/c;

    iget-object v1, p0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    .line 419
    invoke-static {}, Lcom/xueqiu/android/message/client/a;->a()V

    .line 420
    return-void
.end method

.method final b()Z
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 729
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    const v2, 0x7f0701e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 758
    :goto_0
    return v0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    const v2, 0x7f0701eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 735
    const-string v2, "7,24"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 737
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 738
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 741
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 742
    const/16 v1, 0xc

    invoke-virtual {v6, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 743
    const/16 v1, 0xd

    invoke-virtual {v6, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 744
    if-le v2, v0, :cond_1

    .line 745
    invoke-virtual {v6, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 746
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 747
    const/4 v3, 0x5

    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Ljava/util/Calendar;->add(II)V

    .line 748
    invoke-virtual {v6, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 749
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 758
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-ltz v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    move v0, v5

    goto :goto_0

    .line 750
    :cond_1
    if-ge v2, v0, :cond_2

    .line 751
    invoke-virtual {v6, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 752
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 753
    invoke-virtual {v6, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 754
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    move v0, v5

    .line 756
    goto :goto_0

    :cond_3
    move v0, v4

    .line 758
    goto :goto_0
.end method
