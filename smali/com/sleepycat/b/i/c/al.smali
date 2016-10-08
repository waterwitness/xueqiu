.class public final Lcom/sleepycat/b/i/c/al;
.super Ljava/lang/Object;
.source "RepImpl.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/c/aj;

.field private b:Lcom/sleepycat/b/i/i/m;


# virtual methods
.method public final declared-synchronized a()Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 1853
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;

    move-result-object v0

    .line 2775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 3122
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1856
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->b:Lcom/sleepycat/b/i/i/m;

    .line 4122
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->g:Lcom/sleepycat/b/p/au;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1853
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 1864
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/f;->a(Z)V

    .line 1866
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;

    move-result-object v0

    .line 4775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 1866
    iput-object v0, p0, Lcom/sleepycat/b/i/c/al;->b:Lcom/sleepycat/b/i/i/m;

    .line 1867
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->b(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1869
    :cond_0
    monitor-exit p0

    return-void

    .line 1864
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 1

    .prologue
    .line 1876
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1877
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/f;->c()V

    .line 1878
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;

    move-result-object v0

    .line 5775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 1878
    iput-object v0, p0, Lcom/sleepycat/b/i/c/al;->b:Lcom/sleepycat/b/i/i/m;

    .line 1879
    iget-object v0, p0, Lcom/sleepycat/b/i/c/al;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/aj;->b(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    :cond_0
    monitor-exit p0

    return-void

    .line 1876
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
