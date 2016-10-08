.class public abstract Lcom/sleepycat/b/n/q;
.super Ljava/lang/Object;
.source "Locker.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Ljava/lang/RuntimeException;

.field public i:Lcom/sleepycat/b/c/ad;

.field public j:Lcom/sleepycat/b/n/l;

.field public k:J

.field protected l:Z

.field protected m:Z

.field n:J

.field o:Lcom/sleepycat/b/n/e;

.field protected p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/l/d;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Ljava/lang/Thread;

.field public r:Z

.field public s:Lcom/sleepycat/b/n/q;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/sleepycat/b/n/q;->c:Z

    .line 79
    iput-boolean v0, p0, Lcom/sleepycat/b/n/q;->r:Z

    .line 147
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/b/c/ad;ZZJ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/sleepycat/b/n/q;->c:Z

    .line 79
    iput-boolean v0, p0, Lcom/sleepycat/b/n/q;->r:Z

    .line 3496
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 4189
    iget-object v1, v0, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    .line 3115
    iput-object v1, p0, Lcom/sleepycat/b/n/q;->j:Lcom/sleepycat/b/n/l;

    .line 3116
    invoke-virtual {p0, v0, p4, p5}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/n/aj;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 3117
    iput-object p1, p0, Lcom/sleepycat/b/n/q;->i:Lcom/sleepycat/b/c/ad;

    .line 3118
    iput-boolean p2, p0, Lcom/sleepycat/b/n/q;->l:Z

    .line 3119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/q;->o:Lcom/sleepycat/b/n/e;

    .line 3122
    iput-boolean p3, p0, Lcom/sleepycat/b/n/q;->m:Z

    .line 3123
    invoke-virtual {p0}, Lcom/sleepycat/b/n/q;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/n/q;->a:J

    .line 4669
    iget-wide v0, p1, Lcom/sleepycat/b/c/ad;->p:J

    .line 3129
    iput-wide v0, p0, Lcom/sleepycat/b/n/q;->b:J

    .line 3131
    iget-wide v0, p0, Lcom/sleepycat/b/n/q;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/n/q;->n:J

    .line 3138
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/n/q;->q:Ljava/lang/Thread;

    .line 108
    return-void

    .line 3134
    :cond_0
    iput-wide v2, p0, Lcom/sleepycat/b/n/q;->n:J

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/sleepycat/b/n/aj;J)J
.end method

.method public final a(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    .locals 9

    .prologue
    .line 443
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/n/q;->a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 5027
    iget-object v1, v0, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 446
    sget-object v2, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v1, v2, :cond_1

    .line 448
    iget-object v0, p0, Lcom/sleepycat/b/n/q;->j:Lcom/sleepycat/b/n/l;

    const-string v1, "Non-blocking lock was denied."

    .line 5677
    iget-boolean v0, v0, Lcom/sleepycat/b/n/l;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sleepycat/b/aq;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/aq;-><init>(Ljava/lang/String;)V

    .line 448
    :goto_0
    throw v0

    .line 5677
    :cond_0
    new-instance v0, Lcom/sleepycat/b/ap;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/ap;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/n/q;->s:Lcom/sleepycat/b/n/q;

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/n/q;->b(Lcom/sleepycat/b/n/q;)V

    .line 452
    return-object v0
.end method

.method public abstract a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
.end method

.method abstract a(J)V
.end method

.method public declared-synchronized a(JJLcom/sleepycat/b/c/i;)V
    .locals 7

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/n/q;->v()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 548
    :cond_0
    monitor-exit p0

    return-void

    .line 532
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/n/q;->j:Lcom/sleepycat/b/n/l;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/o;

    move-result-object v4

    .line 533
    if-eqz v4, :cond_0

    .line 538
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/q;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 7027
    iget-object v0, v0, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 541
    sget-object v1, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v0, v1, :cond_0

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No contention is possible on new LSN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " old LSN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LockType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/sleepycat/b/au;)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public final a(Lcom/sleepycat/b/av;)V
    .locals 1

    .prologue
    .line 663
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 664
    return-void

    .line 663
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract a(Lcom/sleepycat/b/c/c;)V
.end method

.method public abstract a(Lcom/sleepycat/b/c/i;)V
.end method

.method public abstract a(Lcom/sleepycat/b/c/i;Z)V
.end method

.method public a(Lcom/sleepycat/b/i;)V
    .locals 0

    .prologue
    .line 704
    return-void
.end method

.method public a(Lcom/sleepycat/b/l/a;)V
    .locals 3

    .prologue
    .line 759
    invoke-virtual {p1}, Lcom/sleepycat/b/l/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    :goto_0
    return-void

    .line 763
    :cond_0
    monitor-enter p0

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/q;->p:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 766
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/q;->p:Ljava/util/Map;

    .line 7342
    :cond_1
    iget-wide v0, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 768
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 769
    iget-object v1, p0, Lcom/sleepycat/b/n/q;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 770
    monitor-exit p0

    goto :goto_0

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 772
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/n/q;->p:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/b/l/a;->d()Lcom/sleepycat/b/l/d;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method a(Lcom/sleepycat/b/n/b;)V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method protected abstract a(Ljava/lang/Long;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;)V
.end method

.method public a(Lcom/sleepycat/b/n/q;)Z
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public abstract a_(Z)V
.end method

.method public final b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    .locals 9

    .prologue
    .line 478
    const/4 v5, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sleepycat/b/n/q;->a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 6027
    iget-object v1, v0, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 480
    sget-object v2, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-eq v1, v2, :cond_0

    .line 481
    iget-object v1, p0, Lcom/sleepycat/b/n/q;->s:Lcom/sleepycat/b/n/q;

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/n/q;->b(Lcom/sleepycat/b/n/q;)V

    .line 483
    :cond_0
    return-object v0
.end method

.method abstract b(J)V
.end method

.method public abstract b(Lcom/sleepycat/b/c/c;)V
.end method

.method public b(Lcom/sleepycat/b/c/i;)V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method b(Lcom/sleepycat/b/n/b;)V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public b(Lcom/sleepycat/b/n/q;)V
    .locals 0

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/n/q;->c(Lcom/sleepycat/b/n/q;)V

    .line 322
    return-void
.end method

.method protected abstract b_(Z)V
.end method

.method public declared-synchronized c(J)V
    .locals 7

    .prologue
    .line 200
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 201
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the timeout value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_0
    long-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    :try_start_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the timeout value cannot be greater than 2^32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    iput-wide p1, p0, Lcom/sleepycat/b/n/q;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    monitor-exit p0

    return-void
.end method

.method final c(Lcom/sleepycat/b/n/q;)V
    .locals 2

    .prologue
    .line 334
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/q;->d:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sleepycat/b/n/q;->i:Lcom/sleepycat/b/c/ad;

    iget-object v1, p0, Lcom/sleepycat/b/n/q;->d:Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/n/q;Ljava/lang/Throwable;)Lcom/sleepycat/b/au;

    move-result-object v0

    throw v0

    .line 338
    :cond_0
    return-void
.end method

.method public abstract c()Z
.end method

.method public declared-synchronized d(J)Z
    .locals 1

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/q;->j:Lcom/sleepycat/b/n/l;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sleepycat/b/n/l;->c(JLcom/sleepycat/b/n/q;)Z

    move-result v0

    .line 494
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/n/q;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return v0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract e()Lcom/sleepycat/b/n/z;
.end method

.method public abstract f()Lcom/sleepycat/b/n/q;
.end method

.method public abstract h()V
.end method

.method public h_()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public abstract i_()Z
.end method

.method j()V
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/n/q;->c:Z

    .line 686
    return-void
.end method

.method public abstract j_()Z
.end method

.method public k()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public abstract k_()V
.end method

.method public l()J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sleepycat/b/n/q;->i:Lcom/sleepycat/b/c/ad;

    .line 4673
    iget-wide v0, v0, Lcom/sleepycat/b/c/ad;->o:J

    .line 150
    return-wide v0
.end method

.method public abstract l_()Z
.end method

.method public p()Z
    .locals 6

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/sleepycat/b/n/q;->s_()J

    move-result-wide v0

    .line 822
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 823
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/b/n/q;->n:J

    sub-long/2addr v2, v4

    .line 824
    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 825
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p_()Lcom/sleepycat/b/bp;
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/sleepycat/b/n/q;->m:Z

    return v0
.end method

.method public declared-synchronized r_()J
    .locals 2

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/b/n/q;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/sleepycat/b/n/q;->l:Z

    return v0
.end method

.method public declared-synchronized s_()J
    .locals 2

    .prologue
    .line 840
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/b/n/q;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 859
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 860
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/n/q;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sleepycat/b/n/q;->q:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/q;->q:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lock was preempted by the replication replayer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/q;->d:Ljava/lang/RuntimeException;

    .line 301
    return-void
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/sleepycat/b/n/q;->c:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method
