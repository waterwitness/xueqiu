.class public Lcom/xueqiu/android/base/SnowBallApplication;
.super Landroid/app/Application;
.source "SnowBallApplication.java"


# static fields
.field public static a:J

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xueqiu/android/base/SnowBallApplication;->b:Z

    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xueqiu/android/base/SnowBallApplication;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/xueqiu/android/base/SnowBallApplication;->b:Z

    return v0
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xueqiu/android/base/SnowBallApplication;->b:Z

    return v0
.end method

.method private onCreateProxy()V
    .locals 8

    .prologue
    .line 57
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xueqiu/android/base/SnowBallApplication;->a:J

    .line 1125
    new-instance v1, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 1126
    new-instance v0, Lcom/xueqiu/android/base/util/c;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/util/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setCrashHandleCallback(Lcom/tencent/bugly/crashreport/CrashReport$CrashHandleCallback;)V

    .line 1127
    const-string v0, "release"

    const-string v2, "release"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "900004761"

    .line 1128
    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    invoke-static {p0}, Lcom/xueqiu/android/base/b;->a(Landroid/app/Application;)V

    .line 2099
    sget-object v2, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v3, Lcom/xueqiu/android/base/SnowBallApplication$2;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/base/SnowBallApplication$2;-><init>(Lcom/xueqiu/android/base/SnowBallApplication;)V

    invoke-virtual {v2, v3}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 65
    invoke-static {}, Lcom/xueqiu/android/base/util/ax;->a()V

    .line 67
    const-string v2, "SnowBallApplication"

    const-string v3, "snowball app launched"

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v2, "SnowBallApplication"

    const-string v3, "Application onCreate in: %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_1
    return-void

    .line 1127
    :cond_0
    const-string v0, "900027044"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {p0}, Lcom/xueqiu/android/base/SnowBallApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/n;->a(Landroid/content/Context;)V

    .line 72
    sget-object v1, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/base/SnowBallApplication$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/base/SnowBallApplication$1;-><init>(Lcom/xueqiu/android/base/SnowBallApplication;Ljava/lang/Throwable;)V

    const-wide/16 v4, 0x2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v0}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    goto :goto_1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lcom/xueqiu/android/base/l;->a()Lcom/xueqiu/android/base/l;

    invoke-static {}, Lcom/xueqiu/android/base/l;->b()Lcom/xueqiu/android/base/m;

    .line 85
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    invoke-static {p0}, Lcom/xueqiu/android/base/n;->b(Landroid/content/Context;)Lcom/xueqiu/android/base/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/n;->a()V

    .line 49
    invoke-direct {p0}, Lcom/xueqiu/android/base/SnowBallApplication;->onCreateProxy()V

    .line 50
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 90
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 2178
    invoke-static {}, Lcom/xueqiu/android/base/b;->g()V

    .line 92
    return-void
.end method
