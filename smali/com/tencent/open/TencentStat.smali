.class public Lcom/tencent/open/TencentStat;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/open/TContext;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 38
    invoke-static {p0}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Aqc"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setAutoExceptionCaught(Z)V

    .line 42
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setEnableSmartReporting(Z)V

    .line 43
    const/16 v1, 0x5a0

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setSendPeriodMinutes(I)V

    .line 44
    sget-object v1, Lcom/tencent/stat/StatReportStrategy;->PERIOD:Lcom/tencent/stat/StatReportStrategy;

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setStatSendStrategy(Lcom/tencent/stat/StatReportStrategy;)V

    .line 45
    const-string v1, "http://cgi.connect.qq.com/qqconnectutil/sdk"

    invoke-static {v1}, Lcom/tencent/stat/StatConfig;->setStatReportUrl(Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "1.0.0"

    invoke-static {v1, v0, v2}, Lcom/tencent/stat/StatService;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/tencent/stat/MtaSDkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    const-string v0, "DEBUG"

    const-string v1, "MTA init Failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static varargs a(Lcom/tencent/open/TContext;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;)V

    .line 64
    invoke-virtual {p0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/tencent/stat/StatService;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static a(Lcom/tencent/open/TContext;)Z
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/open/TContext;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/OpenConfig;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;

    move-result-object v0

    const-string v1, "Common_ta_enable"

    invoke-virtual {v0, v1}, Lcom/tencent/open/OpenConfig;->d(Ljava/lang/String;)Z

    move-result v0

    .line 26
    return v0
.end method

.method public static b(Lcom/tencent/open/TContext;)V
    .locals 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/tencent/open/TencentStat;->a(Lcom/tencent/open/TContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/stat/StatConfig;->setEnableStatService(Z)V

    goto :goto_0
.end method

.method public static b(Lcom/tencent/open/TContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/tencent/open/TencentStat;->b(Lcom/tencent/open/TContext;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/tencent/open/TContext;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/stat/StatService;->reportQQ(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
