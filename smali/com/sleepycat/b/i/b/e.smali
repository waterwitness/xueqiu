.class final Lcom/sleepycat/b/i/b/e;
.super Ljava/lang/Object;
.source "Elections.java"

# interfaces
.implements Lcom/sleepycat/b/i/b/k;


# instance fields
.field a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object v0, p0, Lcom/sleepycat/b/i/b/e;->a:Ljava/util/concurrent/CountDownLatch;

    .line 550
    iput-object v0, p0, Lcom/sleepycat/b/i/b/e;->a:Ljava/util/concurrent/CountDownLatch;

    .line 551
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .prologue
    .line 557
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/e;->a:Ljava/util/concurrent/CountDownLatch;

    .line 558
    iget-object v0, p0, Lcom/sleepycat/b/i/b/e;->a:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    .locals 1

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/e;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/sleepycat/b/i/b/e;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :cond_0
    monitor-exit p0

    return-void

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
