.class final Lcom/xueqiu/android/base/c/e$1;
.super Ljava/lang/Object;
.source "Traceroute.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/c/e;->a(Ljava/lang/String;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x1e

    iput v0, p0, Lcom/xueqiu/android/base/c/e$1;->a:I

    iput-object p1, p0, Lcom/xueqiu/android/base/c/e$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 48
    check-cast p1, Lrx/i;

    move v0, v1

    .line 1051
    :goto_0
    iget v2, p0, Lcom/xueqiu/android/base/c/e$1;->a:I

    if-gt v0, v2, :cond_2

    .line 1053
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1054
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "ping -c 1 -t %d %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/xueqiu/android/base/c/e$1;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1055
    new-instance v5, Lcom/xueqiu/android/base/c/f;

    invoke-direct {v5, v4}, Lcom/xueqiu/android/base/c/f;-><init>(Ljava/lang/Process;)V

    .line 1056
    invoke-virtual {v5}, Lcom/xueqiu/android/base/c/f;->start()V

    .line 1057
    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v6, v7}, Lcom/xueqiu/android/base/c/f;->join(J)V

    .line 1058
    invoke-virtual {v5}, Lcom/xueqiu/android/base/c/f;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1059
    invoke-virtual {v5}, Lcom/xueqiu/android/base/c/f;->a()V

    .line 1060
    const-string v2, "%2d ******"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1051
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    const-string v5, "%2d %s %dms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/xueqiu/android/base/c/e;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xueqiu/android/base/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1063
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 1072
    :cond_2
    invoke-virtual {p1}, Lrx/i;->a()V

    .line 48
    return-void

    .line 1068
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1069
    const-string v2, "%d **************"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/i;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method
