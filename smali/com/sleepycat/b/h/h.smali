.class public Lcom/sleepycat/b/h/h;
.super Ljava/lang/Object;
.source "DirtyINMap.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field final a:Lcom/sleepycat/b/c/ad;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/i;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field private final e:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/h/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:I

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sleepycat/b/h/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 77
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/h/h;->f:I

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/h;->g:Ljava/util/Set;

    .line 80
    new-instance v0, Lcom/sleepycat/b/p/n;

    invoke-direct {v0}, Lcom/sleepycat/b/p/n;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    .line 81
    sget v0, Lcom/sleepycat/b/h/i;->a:I

    iput v0, p0, Lcom/sleepycat/b/h/h;->c:I

    .line 82
    return-void
.end method

.method private declared-synchronized f()V
    .locals 4

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 6508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 389
    iget v1, p0, Lcom/sleepycat/b/h/h;->f:I

    sget v2, Lcom/sleepycat/b/c/ao;->N:I

    mul-int/2addr v1, v2

    .line 390
    rsub-int/lit8 v1, v1, 0x0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/sleepycat/b/c/i;)I
    .locals 2

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/h/h;->c:I

    sget v1, Lcom/sleepycat/b/h/i;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 374
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/l/j;Z)Ljava/lang/Integer;
    .locals 9

    .prologue
    .line 407
    monitor-enter p0

    .line 6610
    :try_start_0
    iget v0, p1, Lcom/sleepycat/b/l/j;->j:I

    .line 407
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 409
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 7342
    :goto_0
    iget-wide v0, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 416
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v0, Lcom/sleepycat/b/h/e;

    .line 7717
    iget-object v1, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 8496
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 9342
    iget-wide v2, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 416
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->J()Z

    move-result v4

    .line 9685
    iget-object v5, p1, Lcom/sleepycat/b/l/j;->g:[B

    .line 416
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/h/e;-><init>(Lcom/sleepycat/b/c/h;JZ[B)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget v0, p0, Lcom/sleepycat/b/h/h;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/h/h;->f:I

    .line 423
    if-eqz p2, :cond_0

    .line 424
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 10508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 425
    sget v1, Lcom/sleepycat/b/c/ao;->N:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :cond_0
    monitor-exit p0

    return-object v7

    .line 412
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v1, v7, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a()V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/h/h;->f()V

    .line 172
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/h/h;->f:I

    .line 176
    sget v0, Lcom/sleepycat/b/h/i;->a:I

    iput v0, p0, Lcom/sleepycat/b/h/h;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(J)V
    .locals 5

    .prologue
    .line 522
    monitor-enter p0

    .line 523
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/h/h;->c:I

    sget v1, Lcom/sleepycat/b/h/i;->b:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 530
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 524
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    const/4 v0, 0x0

    .line 530
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    if-eqz v0, :cond_3

    .line 532
    iget-object v1, p0, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 15379
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 533
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 534
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v3

    .line 536
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/sleepycat/b/c/i;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    const/4 v0, 0x1

    invoke-virtual {v1, v3, p1, p2, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/i;JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 544
    :cond_1
    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_1

    .line 527
    :cond_2
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/b/h/h;->g:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 528
    iget-object v1, p0, Lcom/sleepycat/b/h/h;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 544
    :catchall_1
    move-exception v0

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v0

    .line 548
    :cond_3
    return-void
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/l/j;)V
    .locals 4

    .prologue
    .line 274
    monitor-enter p0

    .line 3717
    :try_start_0
    iget-object v3, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 275
    invoke-virtual {v3}, Lcom/sleepycat/b/c/i;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/h/h;->a(Lcom/sleepycat/b/l/j;Z)Ljava/lang/Integer;

    move-result-object v1

    .line 292
    iget-boolean v0, p0, Lcom/sleepycat/b/h/h;->h:Z

    if-nez v0, :cond_2

    .line 4553
    iget-boolean v0, v3, Lcom/sleepycat/b/c/i;->e:Z

    .line 292
    if-eqz v0, :cond_3

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 303
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    iget-boolean v2, p0, Lcom/sleepycat/b/h/h;->i:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 305
    :cond_4
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->I()Z

    move-result v2

    if-nez v2, :cond_6

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 314
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_6
    move-object v2, v1

    move v1, v0

    goto :goto_1
.end method

.method final declared-synchronized a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(ZZ)V
    .locals 2

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/h/h;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_1
    sget-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 159
    :cond_2
    sget-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sleepycat/b/h/h;->f:I

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_3
    sget-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sleepycat/b/h/h;->c:I

    sget v1, Lcom/sleepycat/b/h/i;->a:I

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :cond_4
    sget v0, Lcom/sleepycat/b/h/i;->b:I

    iput v0, p0, Lcom/sleepycat/b/h/h;->c:I

    .line 162
    iput-boolean p1, p0, Lcom/sleepycat/b/h/h;->h:Z

    .line 163
    iput-boolean p2, p0, Lcom/sleepycat/b/h/h;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 92
    monitor-enter p0

    .line 2717
    :try_start_0
    iget-object v1, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 109
    iget v2, p0, Lcom/sleepycat/b/h/h;->c:I

    sget v3, Lcom/sleepycat/b/h/i;->b:I

    if-ne v2, v3, :cond_0

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/h/h;->a(Lcom/sleepycat/b/l/j;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/h/h;->b(Lcom/sleepycat/b/l/j;)V

    .line 122
    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 132
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/sleepycat/b/h/h;->c:I

    sget v3, Lcom/sleepycat/b/h/i;->b:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_1

    .line 141
    :cond_3
    iget v2, p0, Lcom/sleepycat/b/h/h;->c:I

    sget v3, Lcom/sleepycat/b/h/i;->c:I

    if-ne v2, v3, :cond_4

    .line 3610
    iget v2, p1, Lcom/sleepycat/b/l/j;->j:I

    .line 141
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/h/h;->a(Lcom/sleepycat/b/c/i;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lt v2, v1, :cond_1

    .line 147
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/Integer;Ljava/lang/Long;)Z
    .locals 1

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 448
    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 451
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()I
    .locals 1

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/Integer;)Lcom/sleepycat/b/h/e;
    .locals 2

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 464
    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 467
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/e;

    .line 469
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Ljava/lang/Integer;Ljava/lang/Long;)Lcom/sleepycat/b/h/e;
    .locals 1

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 456
    if-eqz v0, :cond_0

    .line 457
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lcom/sleepycat/b/l/j;)V
    .locals 3

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_1

    .line 10717
    iget-object v0, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 11496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 481
    sget-object v1, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    const/4 v0, 0x0

    move v1, v0

    .line 12345
    :goto_0
    iget v0, p1, Lcom/sleepycat/b/l/j;->f:I

    .line 483
    if-ge v1, v0, :cond_1

    .line 484
    invoke-virtual {p1, v1}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/aa;

    .line 485
    if-eqz v0, :cond_0

    .line 13143
    iget-object v2, v0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 485
    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/sleepycat/b/h/h;->g:Ljava/util/Set;

    .line 14143
    iget-object v0, v0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 14496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 486
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 490
    :cond_1
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 4

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 5508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 383
    iget v1, p0, Lcom/sleepycat/b/h/h;->f:I

    sget v2, Lcom/sleepycat/b/c/ao;->N:I

    mul-int/2addr v1, v2

    .line 384
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->e(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/h;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()I
    .locals 1

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sleepycat/b/h/h;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
