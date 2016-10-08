.class final Lcom/xueqiu/android/base/c/f;
.super Ljava/lang/Thread;
.source "Traceroute.java"


# instance fields
.field a:Ljava/lang/Process;

.field b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Process;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/c/f;->a:Ljava/lang/Process;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/base/c/f;->b:Z

    .line 25
    iput-object p1, p0, Lcom/xueqiu/android/base/c/f;->a:Ljava/lang/Process;

    .line 26
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 29
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xueqiu/android/base/c/f;->b:Z

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/base/c/f;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/c/f;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "interrupted"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/base/c/f;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
