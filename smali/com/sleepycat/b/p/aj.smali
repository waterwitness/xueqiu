.class public abstract Lcom/sleepycat/b/p/aj;
.super Ljava/lang/Thread;
.source "StoppableThread.java"


# instance fields
.field public final D:Lcom/sleepycat/b/c/ad;

.field public final E:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public F:Ljava/lang/Exception;

.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, v2, p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    iput-object v2, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 63
    iput-wide v4, p0, Lcom/sleepycat/b/p/aj;->a:J

    .line 66
    iput-wide v4, p0, Lcom/sleepycat/b/p/aj;->b:J

    .line 88
    iput-object p1, p0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/p/aj;->setDaemon(Z)V

    .line 96
    if-nez p2, :cond_0

    new-instance p2, Lcom/sleepycat/b/p/ak;

    invoke-direct {p2, p0, v1}, Lcom/sleepycat/b/p/ak;-><init>(Lcom/sleepycat/b/p/aj;B)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/p/aj;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/logging/Logger;
.end method

.method public final a(Ljava/util/logging/Logger;)V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/p/aj;->c()I

    move-result v0

    .line 235
    if-ltz v0, :cond_1

    .line 236
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/p/aj;->join(J)V

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/p/aj;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Soft shutdown failed for thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resorting to interrupt."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/sleepycat/b/p/aj;->interrupt()V

    .line 249
    invoke-virtual {p0}, Lcom/sleepycat/b/p/aj;->join()V

    .line 250
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shutdown via interrupt."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted while waiting to join thread:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->D:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has exited."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, -0x1

    return v0
.end method

.method public final n()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
