.class public abstract Lcom/sleepycat/b/i/c/b/ak;
.super Ljava/lang/Object;
.source "Replica.java"


# instance fields
.field final b:Lcom/sleepycat/b/c/ad;

.field final c:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/i/h/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/sleepycat/b/i/c/b/ag;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ak;->d:Lcom/sleepycat/b/i/c/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1447
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ak;->c:Ljava/util/SortedMap;

    .line 1453
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/ak;->b:Lcom/sleepycat/b/c/ad;

    .line 1454
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Long;)Lcom/sleepycat/b/i/h/t;
    .locals 2

    .prologue
    .line 1457
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ak;->c:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/t;

    .line 1458
    if-nez v0, :cond_0

    .line 1459
    new-instance v0, Lcom/sleepycat/b/i/h/t;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ak;->b:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/h/t;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 1460
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ak;->c:Ljava/util/SortedMap;

    invoke-interface {v1, p1, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(JLcom/sleepycat/b/n;)V
    .locals 5

    .prologue
    .line 1474
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ak;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ak;->c:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1476
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/sleepycat/b/i/c/b/ak;->a(JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1484
    :cond_0
    monitor-exit p0

    return-void

    .line 1481
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ak;->c:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/t;

    .line 1482
    invoke-virtual {v0, p3}, Lcom/sleepycat/b/i/h/t;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract a(JJ)Z
.end method
