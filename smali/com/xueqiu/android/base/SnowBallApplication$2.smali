.class final Lcom/xueqiu/android/base/SnowBallApplication$2;
.super Ljava/lang/Object;
.source "SnowBallApplication.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/SnowBallApplication;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/SnowBallApplication;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/SnowBallApplication;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xueqiu/android/base/SnowBallApplication$2;->a:Lcom/xueqiu/android/base/SnowBallApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/b;->b()V

    .line 105
    invoke-static {}, Lcom/xueqiu/android/base/SnowBallApplication;->b()Z

    .line 106
    const-string v2, "SnowBallApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init app base components waste "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/xueqiu/android/base/SnowBallApplication$2;->a:Lcom/xueqiu/android/base/SnowBallApplication;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/SnowBallApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/n;->a(Landroid/content/Context;)V

    .line 110
    sget-object v1, Lcom/xueqiu/android/base/util/ag;->d:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/base/SnowBallApplication$2$1;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/base/SnowBallApplication$2$1;-><init>(Lcom/xueqiu/android/base/SnowBallApplication$2;Ljava/lang/Throwable;)V

    const-wide/16 v4, 0x2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v4, v5, v0}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    goto :goto_0
.end method
