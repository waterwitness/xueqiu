.class public Lcom/sleepycat/b/n/y;
.super Lcom/sleepycat/b/n/a;
.source "ThreadLocker.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/a;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 36
    iget-object v1, p0, Lcom/sleepycat/b/n/y;->j:Lcom/sleepycat/b/n/l;

    .line 2014
    iget-object v0, v1, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2017
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 2018
    iget-object v0, v1, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ar;

    .line 2019
    if-eqz v0, :cond_0

    .line 2020
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/p/ar;->b(Ljava/lang/Object;)Z

    move-result v0

    .line 2021
    sget-boolean v1, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2023
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/b/p/ar;

    invoke-direct {v1, p0}, Lcom/sleepycat/b/p/ar;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    :cond_1
    return-void
.end method

.method public static b(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/y;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->T()Lcom/sleepycat/b/n/y;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/n/y;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/n/y;-><init>(Lcom/sleepycat/b/c/ad;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(JJLcom/sleepycat/b/c/i;)V
    .locals 3

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/n/y;->a:Z

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/b/n/y;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    invoke-super/range {p0 .. p5}, Lcom/sleepycat/b/n/a;->a(JJLcom/sleepycat/b/c/i;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    iput-boolean v0, p0, Lcom/sleepycat/b/n/y;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v1

    :try_start_3
    iput-boolean v0, p0, Lcom/sleepycat/b/n/y;->a:Z

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/n/q;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/n/q;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/b/n/y;

    if-eqz v2, :cond_2

    .line 125
    iget-object v2, p0, Lcom/sleepycat/b/n/y;->q:Ljava/lang/Thread;

    iget-object v3, p1, Lcom/sleepycat/b/n/q;->q:Ljava/lang/Thread;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/n/q;)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sleepycat/b/n/y;->j:Lcom/sleepycat/b/n/l;

    iget-object v1, p0, Lcom/sleepycat/b/n/y;->q:Ljava/lang/Thread;

    .line 2049
    iget-object v2, v0, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 2050
    sget-object v0, Lcom/sleepycat/b/n/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    .line 62
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/y;

    .line 64
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/y;->c(Lcom/sleepycat/b/n/q;)V

    goto :goto_0

    .line 2052
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ar;

    .line 2053
    if-nez v0, :cond_1

    .line 2054
    sget-object v0, Lcom/sleepycat/b/n/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 2056
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/b/p/ar;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 66
    :cond_2
    return-void
.end method

.method protected final declared-synchronized b_(Z)V
    .locals 3

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/n/y;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/y;->q:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-transactional Cursors may not be used in multiple threads; Cursor was created in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/n/y;->q:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but used in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final f()Lcom/sleepycat/b/n/q;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/y;->b_(Z)V

    .line 111
    iget-object v0, p0, Lcom/sleepycat/b/n/y;->i:Lcom/sleepycat/b/c/ad;

    invoke-static {v0}, Lcom/sleepycat/b/n/y;->b(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/y;

    move-result-object v0

    return-object v0
.end method

.method final j()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/sleepycat/b/n/a;->j()V

    .line 50
    iget-object v1, p0, Lcom/sleepycat/b/n/y;->j:Lcom/sleepycat/b/n/l;

    .line 2031
    iget-object v0, v1, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 2034
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 2035
    iget-object v0, v1, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ar;

    .line 2036
    sget-boolean v3, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2037
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/p/ar;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 2038
    sget-boolean v3, Lcom/sleepycat/b/n/l;->m:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2039
    :cond_1
    iget-object v0, v1, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2040
    iget-object v0, v1, Lcom/sleepycat/b/n/l;->l:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_2
    return-void
.end method
