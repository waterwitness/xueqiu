.class public Lcom/xueqiu/android/message/client/MessageService;
.super Landroid/app/Service;
.source "MessageService.java"


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/xueqiu/android/base/b/ai;

.field private c:Lrx/h;

.field private d:Lcom/snowballfinance/message/io/c/h;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Lrx/d/c/j;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xueqiu/android/message/client/MessageService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    new-instance v0, Lrx/d/c/j;

    invoke-direct {v0}, Lrx/d/c/j;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->f:Lrx/d/c/j;

    .line 204
    new-instance v0, Lcom/xueqiu/android/message/client/MessageService$22;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/client/MessageService$22;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 6

    .prologue
    .line 77
    .line 18498
    invoke-direct {p0}, Lcom/xueqiu/android/message/client/MessageService;->e()Ljava/lang/String;

    move-result-object v0

    .line 18499
    invoke-static {}, Lcom/xueqiu/android/message/client/MessageService;->f()Ljava/lang/String;

    move-result-object v1

    .line 19069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 19077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 18500
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 18501
    const-string v3, "%s%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 18502
    const-string v3, "user_mobile_setting"

    const-string v4, ""

    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 18504
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 18505
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    .line 18506
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/message/client/MessageService$17;

    invoke-direct {v5, p0, v2}, Lcom/xueqiu/android/message/client/MessageService$17;-><init>(Lcom/xueqiu/android/message/client/MessageService;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/xueqiu/android/base/b/ai;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 77
    :cond_0
    return-void
.end method

.method private b()Lrx/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->d:Lcom/snowballfinance/message/io/c/h;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->d:Lcom/snowballfinance/message/io/c/h;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/h;->d()V

    .line 225
    :cond_0
    const-string v0, "MessageService"

    const-string v1, "connect [userId:%d] [token:%s] [device:%s] [version:%s] [channel:%s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/xueqiu/android/message/client/MessageService;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 9069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v4

    .line 9182
    iget-object v4, v4, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 225
    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 9369
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v4

    .line 225
    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/xueqiu/android/message/client/MessageService;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lcom/xueqiu/android/message/client/MessageService;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/snowballfinance/message/io/c/h;

    invoke-static {}, Lcom/xueqiu/android/base/c/b;->a()Lcom/xueqiu/android/base/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/c/b;->b()[Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {}, Lcom/xueqiu/android/message/client/MessageService;->d()J

    move-result-wide v2

    .line 11069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v4

    .line 11182
    iget-object v4, v4, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 11369
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-direct {p0}, Lcom/xueqiu/android/message/client/MessageService;->e()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-static {}, Lcom/xueqiu/android/message/client/MessageService;->f()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/snowballfinance/message/io/c/h;-><init>([Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->d:Lcom/snowballfinance/message/io/c/h;

    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->d:Lcom/snowballfinance/message/io/c/h;

    .line 13295
    iget-object v1, v0, Lcom/snowballfinance/message/io/c/h;->j:Lrx/i/c;

    invoke-virtual {v1}, Lrx/i/c;->c()Lrx/a;

    move-result-object v1

    .line 12278
    iget-object v2, p0, Lcom/xueqiu/android/message/client/MessageService;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v2}, Lrx/h/p;->a(Ljava/util/concurrent/Executor;)Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v1

    invoke-virtual {v1}, Lrx/a;->f()Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$2;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    new-instance v3, Lcom/xueqiu/android/message/client/MessageService$3;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/message/client/MessageService$3;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v1, v2, v3}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 14287
    iget-object v1, v0, Lcom/snowballfinance/message/io/c/h;->i:Lrx/i/c;

    invoke-virtual {v1}, Lrx/i/c;->c()Lrx/a;

    move-result-object v1

    .line 12292
    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$5;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$5;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v1, v2}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$4;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    .line 12297
    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 14291
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->m:Lrx/i/c;

    invoke-virtual {v0}, Lrx/i/c;->c()Lrx/a;

    move-result-object v0

    .line 12304
    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$6;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->d:Lcom/snowballfinance/message/io/c/h;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/h;->b()Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 2

    .prologue
    .line 77
    .line 19164
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$20;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$20;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 77
    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 351
    const-string v0, "MessageService"

    const-string v1, "restartService"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 355
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 356
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 357
    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 358
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 77
    .line 19415
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getInstance(Landroid/content/Context;)Lcom/xueqiu/android/base/storage/prefs/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->getTalks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Ljava/lang/Iterable;)Lrx/a;

    move-result-object v0

    .line 19416
    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$9;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$8;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$8;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    .line 19421
    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v1

    .line 19427
    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$11;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$11;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v2}, Lrx/a;->a(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$10;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$10;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    .line 19432
    invoke-virtual {v0, v2}, Lrx/a;->c(Lrx/c/f;)Lrx/a;

    move-result-object v0

    .line 19439
    invoke-virtual {v1, v3}, Lrx/a;->a(I)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$14;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$14;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v1, v2}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$13;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$13;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    .line 19444
    invoke-virtual {v1, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 19464
    invoke-virtual {v0, v3}, Lrx/a;->a(I)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$16;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$16;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v1}, Lrx/a;->d(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$15;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$15;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    .line 19469
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 77
    return-void
.end method

.method private static d()J
    .locals 4

    .prologue
    .line 16069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 16077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 374
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 17069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 17077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v0

    .line 377
    :cond_0
    return-wide v0
.end method

.method static synthetic d(Lcom/xueqiu/android/message/client/MessageService;)Lrx/a;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/xueqiu/android/message/client/MessageService;->b()Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->d:Lcom/snowballfinance/message/io/c/h;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 383
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 384
    sget-boolean v1, Lcom/xueqiu/android/base/util/v;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    const-string v1, "4.0"

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 387
    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 391
    const-string v0, ""

    goto :goto_0
.end method

.method private static f()Ljava/lang/String;
    .locals 5

    .prologue
    .line 18041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/xueqiu/android/base/f;->a()Lcom/xueqiu/android/common/model/ClientInfo;

    move-result-object v1

    .line 396
    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/ClientInfo;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/ClientInfo;->getChannelEvent()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 399
    const-string v2, "%s:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 401
    :cond_0
    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/message/client/MessageService;)Lrx/h;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/message/client/MessageService;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/base/b/ai;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->b:Lcom/xueqiu/android/base/b/ai;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowballfinance/messageplatform/a/y;",
            ")",
            "Lrx/a",
            "<",
            "Lcom/snowballfinance/messageplatform/a/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->d:Lcom/snowballfinance/message/io/c/h;

    if-nez v0, :cond_0

    .line 253
    const-string v0, "not connected."

    invoke-static {p1, v0}, Lcom/snowballfinance/messageplatform/a/z;->a(Lcom/snowballfinance/messageplatform/a/y;Ljava/lang/String;)Lcom/snowballfinance/messageplatform/a/z;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Object;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 270
    :goto_0
    return-object v0

    .line 255
    :cond_0
    invoke-static {}, Lrx/i/a;->k()Lrx/i/a;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$24;

    invoke-direct {v2, p0, p1, v0}, Lcom/xueqiu/android/message/client/MessageService$24;-><init>(Lcom/xueqiu/android/message/client/MessageService;Lcom/snowballfinance/messageplatform/a/y;Lrx/i/a;)V

    invoke-virtual {v1, v2}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 268
    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;

    move-result-object v0

    .line 14915
    new-instance v1, Lrx/d/a/s;

    new-instance v2, Lrx/a$4;

    invoke-direct {v2, v0}, Lrx/a$4;-><init>(Lrx/a;)V

    invoke-direct {v1, v0, v2}, Lrx/d/a/s;-><init>(Lrx/a;Lrx/c/e;)V

    .line 15052
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/j;

    .line 15053
    new-instance v2, Lrx/e/a$1;

    invoke-direct {v2, v1, v0}, Lrx/e/a$1;-><init>(Lrx/e/a;[Lrx/j;)V

    invoke-virtual {v1, v2}, Lrx/e/a;->d(Lrx/c/b;)V

    .line 270
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/e/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snowballfinance/messageplatform/a/a;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$23;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/message/client/MessageService$23;-><init>(Lcom/xueqiu/android/message/client/MessageService;Lcom/snowballfinance/messageplatform/a/a;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->d:Lcom/snowballfinance/message/io/c/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/xueqiu/android/message/client/b;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/client/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const-wide/32 v4, 0xdbba0

    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b;->c()V

    .line 6405
    const-string v0, "MessageService"

    const-string v1, "setup Alarm."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6407
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 6409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v2, v0, v4

    .line 6410
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 6411
    const/4 v1, 0x2

    const-wide/32 v4, 0xdbba0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 7182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 6112
    if-nez v0, :cond_0

    .line 6113
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->stopSelf()V

    .line 6114
    :goto_0
    return-void

    .line 6116
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->b:Lcom/xueqiu/android/base/b/ai;

    .line 6117
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->e:Ljava/util/concurrent/ExecutorService;

    .line 6118
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lrx/h/p;->a(Ljava/util/concurrent/Executor;)Lrx/g;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g;->a()Lrx/h;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    .line 6120
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$1;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 6129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6130
    const-string v1, "com.xueqiu.android.action.requestPrimary"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6131
    const-string v1, "com.xueqiu.android.action.reconnect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6132
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/message/client/MessageService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6133
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xueqiu/android/message/client/MessageService;->a:Z

    .line 6134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6135
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6136
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6137
    iget-object v1, p0, Lcom/xueqiu/android/message/client/MessageService;->f:Lrx/d/c/j;

    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lrx/a/b/a;->a(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$12;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/client/MessageService$12;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v2}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/d/c/j;->a(Lrx/j;)V

    .line 6146
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$18;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$18;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lrx/h;->a(Lrx/c/a;JJLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 6154
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$19;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 106
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 178
    const-string v0, "MessageService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->close()V

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->f:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->f:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/client/MessageService;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 184
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$21;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$21;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 8182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 198
    if-eqz v0, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/xueqiu/android/message/client/MessageService;->c()V

    .line 201
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xueqiu/android/message/client/MessageService;->a:Z

    .line 202
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 334
    const-string v0, "MessageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 342
    const-string v0, "MessageService"

    const-string v1, "onTaskRemoved"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DataStore;->close()V

    .line 344
    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/message/client/MessageService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 15182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 345
    if-eqz v0, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/xueqiu/android/message/client/MessageService;->c()V

    .line 348
    :cond_0
    return-void
.end method
