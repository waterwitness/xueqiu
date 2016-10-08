.class final Lcom/xueqiu/android/message/client/MessageService$2;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Lcom/snowballfinance/messageplatform/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/xueqiu/android/message/client/a;

.field final synthetic b:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 4

    .prologue
    .line 278
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$2;->b:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v1, Lcom/xueqiu/android/message/client/a;

    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$2;->b:Lcom/xueqiu/android/message/client/MessageService;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$2;->b:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v3

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->e()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/SnowBallApplication;

    invoke-direct {v1, v2, v3, v0}, Lcom/xueqiu/android/message/client/a;-><init>(Landroid/content/Context;Lcom/snowballfinance/message/io/c/h;Lcom/xueqiu/android/base/SnowBallApplication;)V

    iput-object v1, p0, Lcom/xueqiu/android/message/client/MessageService$2;->a:Lcom/xueqiu/android/message/client/a;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/16 v5, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 278
    check-cast p1, Lcom/snowballfinance/messageplatform/a/a;

    .line 1283
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$2;->a:Lcom/xueqiu/android/message/client/a;

    .line 2087
    const-string v1, "CommandHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle command:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/a/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    sget-object v1, Lcom/xueqiu/android/message/client/a$53;->a:[I

    .line 3091
    invoke-static {p1}, Lcom/snowballfinance/messageplatform/a/s;->a(Lcom/snowballfinance/messageplatform/a/a;)Lcom/snowballfinance/messageplatform/a/s;

    move-result-object v2

    .line 2088
    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/a/s;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2114
    const-string v0, "CommandHandler"

    const-string v1, "unhandled command: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :goto_0
    return-void

    .line 2090
    :pswitch_0
    check-cast p1, Lcom/snowballfinance/messageplatform/a/e;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/e;)V

    goto :goto_0

    .line 2093
    :pswitch_1
    check-cast p1, Lcom/snowballfinance/messageplatform/a/t;

    .line 3394
    sget-object v0, Lcom/xueqiu/android/message/client/c;->d:Lrx/i/c;

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2096
    :pswitch_2
    check-cast p1, Lcom/snowballfinance/messageplatform/a/d;

    .line 3398
    iget-object v1, v0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v1

    .line 3509
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/a/d;->d:Ljava/lang/Long;

    .line 3398
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3517
    iget-object v4, p1, Lcom/snowballfinance/messageplatform/a/d;->e:Ljava/lang/Boolean;

    .line 3398
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalk(JZ)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    .line 3399
    if-eqz v1, :cond_0

    .line 3400
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/model/Talk;->setSummary(Ljava/lang/String;)V

    .line 3401
    iget-object v2, v0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->saveTalk(Lcom/xueqiu/android/message/model/Talk;)V

    .line 3403
    :cond_0
    iget-object v0, v0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    .line 4509
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/d;->d:Ljava/lang/Long;

    .line 3403
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4517
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/d;->e:Ljava/lang/Boolean;

    .line 3403
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->deleteMessages(JZ)V

    .line 3404
    sget-object v0, Lcom/xueqiu/android/message/client/c;->e:Lrx/i/c;

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2099
    :pswitch_3
    check-cast p1, Lcom/snowballfinance/messageplatform/a/i;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/client/a;->a(Lcom/snowballfinance/messageplatform/a/i;)V

    goto :goto_0

    .line 2102
    :pswitch_4
    check-cast p1, Lcom/snowballfinance/messageplatform/a/k;

    .line 5744
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/k;->c:Ljava/util/List;

    .line 5423
    invoke-static {v1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$28;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$28;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 5428
    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$27;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$27;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$26;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$26;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 5434
    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 5442
    new-instance v2, Lcom/xueqiu/android/message/client/a$30;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$30;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$29;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/message/client/a$29;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 5447
    invoke-virtual {v2, v3}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v2

    .line 5454
    new-instance v3, Lcom/xueqiu/android/message/client/a$32;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/message/client/a$32;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v3}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$31;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$31;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 5459
    invoke-virtual {v3, v4}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v3

    .line 5466
    new-instance v4, Lcom/xueqiu/android/message/client/a$36;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$36;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v4}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 5471
    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v4, Lcom/xueqiu/android/message/client/a$35;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$35;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v4}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v1

    new-instance v4, Lcom/xueqiu/android/message/client/a$33;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$33;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 5477
    invoke-virtual {v1, v4}, Lrx/a;->a(Lrx/c/b;)Lrx/a;

    move-result-object v1

    .line 5484
    invoke-virtual {v2}, Lrx/a;->i()Lrx/a;

    move-result-object v2

    new-instance v4, Lcom/xueqiu/android/message/client/a$40;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$40;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v2, v4}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v2

    .line 5493
    invoke-virtual {v2, v5}, Lrx/a;->a(I)Lrx/a;

    move-result-object v2

    new-instance v4, Lcom/xueqiu/android/message/client/a$39;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$39;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v2, v4}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v2

    new-instance v4, Lcom/xueqiu/android/message/client/a$38;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$38;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 5505
    invoke-virtual {v2, v4}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v2

    new-instance v4, Lcom/xueqiu/android/message/client/a$37;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$37;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 5510
    invoke-virtual {v2, v4}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v2

    .line 5517
    invoke-virtual {v3}, Lrx/a;->i()Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$44;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$44;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v3, v4}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v3

    .line 5526
    invoke-virtual {v3, v5}, Lrx/a;->a(I)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$43;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$43;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v3, v4}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$42;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$42;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 5538
    invoke-virtual {v3, v4}, Lrx/a;->b(Lrx/c/b;)Lrx/a;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/message/client/a$41;

    invoke-direct {v4, v0}, Lcom/xueqiu/android/message/client/a$41;-><init>(Lcom/xueqiu/android/message/client/a;)V

    .line 5543
    invoke-virtual {v3, v4}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v3

    .line 5550
    invoke-static {v2, v3}, Lrx/a;->a(Lrx/a;Lrx/a;)Lrx/a;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/message/client/a$46;

    invoke-direct {v3, v0, v1}, Lcom/xueqiu/android/message/client/a$46;-><init>(Lcom/xueqiu/android/message/client/a;Lrx/a;)V

    invoke-virtual {v2, v3}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto/16 :goto_0

    .line 2105
    :pswitch_5
    check-cast p1, Lcom/snowballfinance/messageplatform/a/u;

    .line 7542
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/u;->c:Lcom/snowballfinance/messageplatform/data/MessageSession;

    .line 6602
    invoke-static {v1}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$48;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$48;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 6607
    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$47;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$47;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    goto/16 :goto_0

    .line 2108
    :pswitch_6
    check-cast p1, Lcom/snowballfinance/messageplatform/a/q;

    .line 8379
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/q;->c:Ljava/lang/Long;

    .line 7617
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 9069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 9077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 7617
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 7618
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    .line 9387
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/a/q;->d:Ljava/lang/Long;

    .line 9395
    iget-object v3, p1, Lcom/snowballfinance/messageplatform/a/q;->e:Ljava/lang/Boolean;

    .line 7618
    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->markTalkRead(Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 7621
    iget-object v0, v0, Lcom/xueqiu/android/message/client/a;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 10387
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/q;->d:Ljava/lang/Long;

    .line 7622
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 7623
    invoke-static {}, Lcom/xueqiu/android/message/client/a;->a()V

    .line 7627
    :goto_1
    sget-object v0, Lcom/xueqiu/android/message/client/c;->b:Lrx/i/c;

    new-instance v1, Lcom/xueqiu/android/message/model/Read;

    invoke-direct {v1, p1}, Lcom/xueqiu/android/message/model/Read;-><init>(Lcom/snowballfinance/messageplatform/a/q;)V

    invoke-virtual {v0, v1}, Lrx/i/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7625
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Long;

    .line 11379
    iget-object v2, p1, Lcom/snowballfinance/messageplatform/a/q;->c:Ljava/lang/Long;

    .line 7625
    aput-object v2, v1, v6

    new-array v2, v7, [Ljava/lang/Boolean;

    .line 11395
    iget-object v3, p1, Lcom/snowballfinance/messageplatform/a/q;->e:Ljava/lang/Boolean;

    .line 7625
    aput-object v3, v2, v6

    new-array v3, v7, [Ljava/lang/Long;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->markTalkTargetReads([Ljava/lang/Long;[Ljava/lang/Boolean;[Ljava/lang/Long;)Z

    goto :goto_1

    .line 2111
    :pswitch_7
    check-cast p1, Lcom/snowballfinance/messageplatform/a/m;

    .line 11661
    iget-object v1, p1, Lcom/snowballfinance/messageplatform/a/m;->c:Ljava/util/List;

    .line 11631
    invoke-static {v1}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$51;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$51;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 11636
    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$50;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$50;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 11641
    invoke-virtual {v1}, Lrx/a;->i()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/a$49;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/a$49;-><init>(Lcom/xueqiu/android/message/client/a;)V

    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    goto/16 :goto_0

    .line 2088
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
