.class public final Lcom/sleepycat/b/n/w;
.super Lcom/sleepycat/b/n/l;
.source "SyncedLockManager.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/l;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 27
    return-void
.end method


# virtual methods
.method final a(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0, p3, p4}, Lcom/sleepycat/b/n/w;->a(J)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-virtual/range {p0 .. p14}, Lcom/sleepycat/b/n/w;->b(ZLcom/sleepycat/b/n/q;JLcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;Lcom/sleepycat/b/n/e;JJJLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/an;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/f;
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/n/w;->c(Ljava/lang/Long;)I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 224
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/n/w;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;I)Lcom/sleepycat/b/n/f;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZZ)Lcom/sleepycat/b/n/f;
    .locals 8

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/n/w;->c(Ljava/lang/Long;)I

    move-result v6

    .line 73
    iget-object v0, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v7, v0, v6

    monitor-enter v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 74
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/n/w;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZZI)Lcom/sleepycat/b/n/f;

    move-result-object v0

    monitor-exit v7

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/o;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/n/w;->c(Ljava/lang/Long;)I

    move-result v0

    .line 38
    iget-object v1, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1448
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v0, v2, v0

    .line 1449
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 1450
    if-nez v0, :cond_0

    .line 1451
    const/4 v0, 0x0

    .line 39
    :goto_0
    monitor-exit v1

    return-object v0

    .line 1453
    :cond_0
    invoke-interface {v0, p2}, Lcom/sleepycat/b/n/e;->a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/o;

    move-result-object v0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(JLcom/sleepycat/b/n/q;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sleepycat/b/n/q;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/q;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/n/w;->a(J)I

    move-result v3

    .line 109
    iget-object v0, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v4, v0, v3

    monitor-enter v4

    .line 1744
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v2, v0, v3

    .line 1745
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 1746
    if-nez v0, :cond_4

    .line 1747
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    move-object v2, v0

    .line 1750
    :goto_0
    if-nez v2, :cond_1

    move-object v0, v1

    .line 110
    :cond_0
    :goto_1
    monitor-exit v4

    return-object v0

    .line 1755
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    invoke-interface {v2, p3, v0, v3}, Lcom/sleepycat/b/n/e;->b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)Ljava/util/Set;

    move-result-object v0

    .line 1757
    if-nez v0, :cond_2

    move-object v0, v1

    .line 1759
    goto :goto_1

    .line 1763
    :cond_2
    invoke-interface {v2}, Lcom/sleepycat/b/n/e;->c()I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Lcom/sleepycat/b/n/e;->d()I

    move-result v1

    if-nez v1, :cond_0

    .line 1765
    iget-object v1, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v1, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    invoke-interface {v2}, Lcom/sleepycat/b/n/e;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1767
    iget-object v1, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    sget-wide v6, Lcom/sleepycat/b/n/l;->d:J

    invoke-virtual {v1, v6, v7, v3}, Lcom/sleepycat/b/c/ao;->a(JI)V

    goto :goto_1

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1770
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/n/l;->j:Lcom/sleepycat/b/c/ao;

    sget-wide v6, Lcom/sleepycat/b/n/l;->c:J

    invoke-virtual {v1, v6, v7, v3}, Lcom/sleepycat/b/c/ao;->a(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Long;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/n/w;->c(Ljava/lang/Long;)I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1430
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v0, v2, v0

    .line 1431
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 1432
    if-nez v0, :cond_0

    .line 1433
    const/4 v0, 0x0

    .line 32
    :goto_0
    monitor-exit v1

    return-object v0

    .line 1435
    :cond_0
    invoke-interface {v0}, Lcom/sleepycat/b/n/e;->b()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/sleepycat/b/p/ai;Z)V
    .locals 10

    .prologue
    .line 233
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/sleepycat/b/n/w;->f:I

    if-ge v1, v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v2, v0, v1

    monitor-enter v2

    .line 3120
    :try_start_0
    new-instance v3, Lcom/sleepycat/b/p/ai;

    const-string v0, "Single lock table"

    const-string v4, "Temporary stat group"

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    new-instance v0, Lcom/sleepycat/b/p/o;

    sget-object v4, Lcom/sleepycat/b/n/n;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 3124
    new-instance v4, Lcom/sleepycat/b/p/o;

    sget-object v5, Lcom/sleepycat/b/n/n;->g:Lcom/sleepycat/b/p/ag;

    invoke-direct {v4, v3, v5}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 3125
    new-instance v5, Lcom/sleepycat/b/p/o;

    sget-object v6, Lcom/sleepycat/b/n/n;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v5, v3, v6}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 3126
    new-instance v6, Lcom/sleepycat/b/p/o;

    sget-object v7, Lcom/sleepycat/b/n/n;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v6, v3, v7}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 3127
    new-instance v7, Lcom/sleepycat/b/p/o;

    sget-object v8, Lcom/sleepycat/b/n/n;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v7, v3, v8}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 3129
    iget-object v8, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v8, v8, v1

    .line 3130
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/sleepycat/b/p/o;->a(I)V

    .line 3132
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 3133
    invoke-interface {v0}, Lcom/sleepycat/b/n/e;->c()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/sleepycat/b/p/o;->a(I)V

    .line 3134
    invoke-interface {v0}, Lcom/sleepycat/b/n/e;->d()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sleepycat/b/p/o;->a(I)V

    .line 3137
    invoke-interface {v0}, Lcom/sleepycat/b/n/e;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 3138
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v0

    .line 3161
    iget-boolean v0, v0, Lcom/sleepycat/b/n/o;->h:Z

    .line 3138
    if-eqz v0, :cond_1

    .line 3139
    invoke-virtual {v7}, Lcom/sleepycat/b/p/o;->f()V

    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3141
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lcom/sleepycat/b/p/o;->f()V

    goto :goto_1

    .line 3145
    :cond_2
    invoke-virtual {p1, v3}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 236
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 238
    :cond_3
    return-void
.end method

.method final a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/ao;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/n/w;->c(Ljava/lang/Long;)I

    move-result v2

    .line 207
    iget-object v0, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v3, v0, v2

    monitor-enter v3

    .line 2844
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v0, v0, v2

    .line 2845
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 2846
    if-nez v0, :cond_0

    move v0, v1

    .line 1963
    :goto_0
    if-eqz v0, :cond_1

    .line 1964
    const/4 v0, 0x1

    .line 208
    :goto_1
    monitor-exit v3

    return v0

    .line 2850
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/sleepycat/b/n/e;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Z

    move-result v0

    goto :goto_0

    .line 1967
    :cond_1
    if-eqz p4, :cond_2

    .line 1968
    iget-object v0, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 1969
    if-eqz v0, :cond_2

    .line 1970
    invoke-interface {v0, p2, p5, v2}, Lcom/sleepycat/b/n/e;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)V

    :cond_2
    move v0, v1

    .line 1973
    goto :goto_1

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b(JLcom/sleepycat/b/n/q;)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/n/w;->a(J)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 1791
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v0, v2, v0

    .line 1792
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 1794
    if-eqz v0, :cond_0

    .line 1795
    invoke-interface {v0, p3}, Lcom/sleepycat/b/n/e;->b(Lcom/sleepycat/b/n/q;)V

    .line 1796
    invoke-virtual {p3, p1, p2}, Lcom/sleepycat/b/n/q;->b(J)V

    .line 123
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/Long;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/n/w;->c(Ljava/lang/Long;)I

    move-result v0

    .line 45
    iget-object v2, p0, Lcom/sleepycat/b/n/w;->g:[Lcom/sleepycat/b/f/a;

    aget-object v2, v2, v0

    monitor-enter v2

    .line 1460
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/n/l;->h:[Ljava/util/Map;

    aget-object v0, v3, v0

    .line 1461
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/e;

    .line 1462
    if-nez v0, :cond_0

    move v0, v1

    .line 46
    :goto_0
    monitor-exit v2

    return v0

    .line 1465
    :cond_0
    invoke-interface {v0}, Lcom/sleepycat/b/n/e;->c()I

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/sleepycat/b/n/e;->d()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
