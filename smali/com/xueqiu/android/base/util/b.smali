.class public final Lcom/xueqiu/android/base/util/b;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"


# direct methods
.method public static a(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    return-void
.end method
