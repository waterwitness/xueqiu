.class public final Lcom/xueqiu/android/base/util/ax;
.super Ljava/lang/Object;
.source "TraceID.java"


# static fields
.field private static a:J

.field private static b:Ljava/util/Calendar;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/base/util/ax;->b:Ljava/util/Calendar;

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xueqiu/android/base/util/ax;->a:J

    .line 30
    sget-object v0, Lcom/xueqiu/android/base/util/ax;->b:Ljava/util/Calendar;

    sget-wide v2, Lcom/xueqiu/android/base/util/ax;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 31
    return-void
.end method

.method public static a(Z)V
    .locals 4

    .prologue
    .line 61
    if-nez p0, :cond_1

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xueqiu/android/base/util/ax;->c:J

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    sget-wide v2, Lcom/xueqiu/android/base/util/ax;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/xueqiu/android/base/util/ax;->a()V

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 38
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 2072
    sget-object v2, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 2073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2074
    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sget-object v3, Lcom/xueqiu/android/base/util/ax;->b:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 41
    :goto_0
    if-eqz v2, :cond_0

    .line 42
    invoke-static {}, Lcom/xueqiu/android/base/util/ax;->a()V

    .line 2197
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    const-string v0, "--"

    .line 3197
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    const-string v1, "--"

    .line 52
    :cond_2
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v2

    .line 3442
    iget-boolean v2, v2, Lcom/xueqiu/android/base/b;->c:Z

    .line 52
    if-eqz v2, :cond_4

    sget-wide v2, Lcom/xueqiu/android/base/util/ax;->a:J

    .line 53
    :goto_1
    const-string v6, "%s.%s.%s.%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    aput-object v1, v7, v4

    const/4 v0, 0x2

    .line 56
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x3

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v0

    .line 53
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v2, v5

    .line 2074
    goto :goto_0

    .line 52
    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_1
.end method
