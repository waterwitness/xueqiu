.class final Lcom/sleepycat/b/n/aa;
.super Lcom/sleepycat/b/bp;
.source "Txn.java"


# direct methods
.method protected constructor <init>(Lcom/sleepycat/b/n/z;)V
    .locals 1

    .prologue
    .line 2426
    .line 3408
    iget-object v0, p1, Lcom/sleepycat/b/n/z;->i:Lcom/sleepycat/b/c/ad;

    .line 2426
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->A()Lcom/sleepycat/b/x;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/bp;-><init>(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/z;)V

    .line 2427
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 2464
    monitor-enter p0

    :try_start_0
    const-string v0, "abort() not permitted on an auto transaction"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2466
    monitor-exit p0

    return-void

    .line 2464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 2433
    monitor-enter p0

    :try_start_0
    const-string v0, "commit() not permitted on an auto transaction"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2435
    monitor-exit p0

    return-void

    .line 2433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
