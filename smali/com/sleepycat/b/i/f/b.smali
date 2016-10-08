.class public Lcom/sleepycat/b/i/f/b;
.super Lcom/sleepycat/b/n/z;
.source "MasterTxn.java"


# static fields
.field private static final O:Lcom/sleepycat/b/i/f/c;

.field private static P:Lcom/sleepycat/b/i/f/c;

.field static final synthetic h:Z


# instance fields
.field private final N:Lcom/sleepycat/b/i/c/b/x;

.field public a:Lcom/sleepycat/b/p/au;

.field public b:I

.field public final c:J

.field public d:I

.field public e:I

.field public f:Z

.field public volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/sleepycat/b/i/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/f/b;->h:Z

    .line 95
    new-instance v0, Lcom/sleepycat/b/i/f/b$1;

    invoke-direct {v0}, Lcom/sleepycat/b/i/f/b$1;-><init>()V

    .line 107
    sput-object v0, Lcom/sleepycat/b/i/f/b;->O:Lcom/sleepycat/b/i/f/c;

    sput-object v0, Lcom/sleepycat/b/i/f/b;->P:Lcom/sleepycat/b/i/f/c;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget-object v0, Lcom/sleepycat/b/g/av;->f:Lcom/sleepycat/b/g/av;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/n/z;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;)V

    .line 55
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/f/b;->a:Lcom/sleepycat/b/p/au;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/i/f/b;->b:I

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/f/b;->c:J

    .line 70
    iput v2, p0, Lcom/sleepycat/b/i/f/b;->d:I

    .line 76
    iput v2, p0, Lcom/sleepycat/b/i/f/b;->e:I

    .line 115
    iput-object p3, p0, Lcom/sleepycat/b/i/f/b;->N:Lcom/sleepycat/b/i/c/b/x;

    .line 116
    return-void
.end method

.method private B()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 314
    iget-boolean v1, p0, Lcom/sleepycat/b/i/f/b;->f:Z

    if-eqz v1, :cond_0

    .line 315
    iput-boolean v0, p0, Lcom/sleepycat/b/i/f/b;->f:Z

    .line 316
    const/4 v0, 0x1

    .line 318
    :cond_0
    return v0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)Lcom/sleepycat/b/i/f/b;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/sleepycat/b/i/f/b;->P:Lcom/sleepycat/b/i/f/c;

    invoke-interface {v0, p0, p1, p2}, Lcom/sleepycat/b/i/f/c;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)Lcom/sleepycat/b/i/f/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/sleepycat/b/i/u;)V
    .locals 4

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/sleepycat/b/i/u;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v1, Lcom/sleepycat/b/i/s;

    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 37487
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->b()Lcom/sleepycat/b/i/ab;

    move-result-object v0

    .line 244
    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/i/s;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    throw v1

    .line 247
    :cond_0
    new-instance v0, Lcom/sleepycat/b/i/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transaction "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38169
    iget-wide v2, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 247
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot execute write operations because this node is no longer a master"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/af;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final a(Lcom/sleepycat/b/n/aj;J)J
    .locals 2

    .prologue
    .line 143
    sget-boolean v0, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4141
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/n/aj;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v0

    .line 144
    return-wide v0
.end method

.method public final a(Ljava/util/logging/Logger;Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/f/e;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 432
    iget-boolean v1, p0, Lcom/sleepycat/b/i/f/b;->g:Z

    if-nez v1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Txn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39169
    iget-wide v2, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 433
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be frozen when converting to replay txn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Transforming txn "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40169
    iget-wide v6, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 443
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from MasterTxn to ReplayTxn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 451
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 453
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/b;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    iget-object v1, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Txn "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41169
    iget-wide v6, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 454
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is closed, no tranform needed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 572
    sget-boolean v1, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v1, :cond_13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50477
    :goto_0
    iput-boolean v2, p0, Lcom/sleepycat/b/i/f/b;->g:Z

    .line 576
    sget-boolean v1, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v1, :cond_1

    add-int/lit8 v1, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v3, v1

    .line 592
    :cond_1
    sget-boolean v1, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 595
    :cond_2
    :goto_2
    return-object v0

    .line 466
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/b;->A()Ljava/util/Set;

    move-result-object v4

    .line 472
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 473
    iget-object v1, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Txn "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42169
    iget-wide v6, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 473
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had no write locks, didn\'t create ReplayTxn"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 572
    sget-boolean v1, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v1, :cond_12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50477
    :goto_3
    iput-boolean v2, p0, Lcom/sleepycat/b/i/f/b;->g:Z

    .line 576
    sget-boolean v1, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v3, v1

    .line 592
    :cond_4
    sget-boolean v1, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v1, :cond_2

    goto :goto_1

    .line 493
    :cond_5
    :try_start_5
    new-instance v0, Lcom/sleepycat/b/i/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    .line 42338
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->af:Ljava/lang/String;

    .line 493
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " is no longer a master"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/af;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/f/b;->a(Lcom/sleepycat/b/au;)V

    .line 43169
    iget-wide v0, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 496
    const/4 v5, 0x0

    invoke-virtual {p2, v0, v1, v5}, Lcom/sleepycat/b/i/c/b/ac;->a(JZ)Lcom/sleepycat/b/i/f/e;

    move-result-object v1

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 504
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 505
    iget-object v5, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Txn "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44169
    iget-wide v8, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 505
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " locks to transform"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v5, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 514
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 516
    iget-object v5, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Txn "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45169
    iget-wide v8, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 516
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is transferring lock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 45637
    iget-object v5, v1, Lcom/sleepycat/b/i/f/e;->j:Lcom/sleepycat/b/n/l;

    sget-object v6, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v5, v0, v1, v6}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/f;

    move-result-object v5

    .line 45644
    iget-boolean v6, v5, Lcom/sleepycat/b/n/f;->a:Z

    if-nez v6, :cond_9

    .line 45645
    iget-object v4, v1, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Transferring from master to replica state, txn "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46169
    iget-wide v8, v1, Lcom/sleepycat/b/n/q;->k:J

    .line 45645
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " was unable to transfer lock for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lock grant type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 569
    :catchall_0
    move-exception v0

    move v1, v3

    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 572
    :catchall_1
    move-exception v0

    :goto_6
    sget-boolean v4, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v4, :cond_14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50477
    :goto_7
    iput-boolean v2, p0, Lcom/sleepycat/b/i/f/b;->g:Z

    .line 576
    sget-boolean v4, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v4, :cond_6

    add-int/lit8 v4, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v3, v4

    .line 585
    :cond_6
    if-eqz v1, :cond_7

    .line 586
    iget-object v1, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "About to close txn "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50479
    iget-wide v6, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 586
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50480
    iget-object v5, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    .line 586
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/i/f/b;->b(Z)V

    .line 589
    iget-object v1, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Closed txn "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50481
    iget-wide v4, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 589
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50482
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    .line 589
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 592
    :cond_7
    sget-boolean v1, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v1, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 572
    :cond_8
    throw v0

    .line 45653
    :cond_9
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    iget-object v5, v5, Lcom/sleepycat/b/n/f;->c:Lcom/sleepycat/b/n/h;

    invoke-virtual {v1, v6, v7, v5}, Lcom/sleepycat/b/i/f/e;->a(Ljava/lang/Long;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;)V

    .line 45654
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sleepycat/b/i/f/e;->e(J)V

    .line 535
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sleepycat/b/i/f/e;->f(J)Lcom/sleepycat/b/n/am;

    move-result-object v5

    .line 536
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sleepycat/b/i/f/b;->f(J)Lcom/sleepycat/b/n/am;

    move-result-object v6

    .line 47118
    iget-wide v8, v6, Lcom/sleepycat/b/n/am;->a:J

    iput-wide v8, v5, Lcom/sleepycat/b/n/am;->a:J

    .line 47119
    iget-boolean v7, v6, Lcom/sleepycat/b/n/am;->b:Z

    iput-boolean v7, v5, Lcom/sleepycat/b/n/am;->b:Z

    .line 47120
    invoke-virtual {v5, v6}, Lcom/sleepycat/b/n/am;->a(Lcom/sleepycat/b/n/am;)V

    .line 47121
    iget-boolean v7, v6, Lcom/sleepycat/b/n/am;->e:Z

    iput-boolean v7, v5, Lcom/sleepycat/b/n/am;->e:Z

    .line 47122
    iget-boolean v6, v6, Lcom/sleepycat/b/n/am;->f:Z

    iput-boolean v6, v5, Lcom/sleepycat/b/n/am;->f:Z

    .line 538
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/sleepycat/b/i/f/b;->a(J)V

    goto/16 :goto_4

    .line 48470
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->w:Ljava/util/Map;

    .line 47613
    if-eqz v0, :cond_c

    .line 47614
    iget-object v0, v1, Lcom/sleepycat/b/i/f/e;->w:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 47615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/sleepycat/b/i/f/e;->w:Ljava/util/Map;

    .line 47617
    :cond_b
    iget-object v0, v1, Lcom/sleepycat/b/i/f/e;->w:Ljava/util/Map;

    .line 49470
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->w:Ljava/util/Map;

    .line 47617
    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 49476
    :cond_c
    iget-object v0, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    .line 47620
    if-eqz v0, :cond_e

    .line 47621
    iget-object v0, v1, Lcom/sleepycat/b/i/f/e;->v:Ljava/util/Set;

    if-nez v0, :cond_d

    .line 47622
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/sleepycat/b/i/f/e;->v:Ljava/util/Set;

    .line 47624
    :cond_d
    iget-object v0, v1, Lcom/sleepycat/b/i/f/e;->v:Ljava/util/Set;

    .line 50476
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->v:Ljava/util/Set;

    .line 47624
    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 556
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/f/b;->v:Ljava/util/Set;

    .line 564
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/sleepycat/b/i/f/b;->z:J

    .line 565
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/sleepycat/b/i/f/b;->y:J

    .line 568
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/b;->y()I

    .line 569
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 572
    sget-boolean v0, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v0, :cond_11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50477
    :goto_8
    iput-boolean v2, p0, Lcom/sleepycat/b/i/f/b;->g:Z

    .line 576
    sget-boolean v0, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v0, :cond_f

    add-int/lit8 v0, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v3, v0

    .line 586
    :cond_f
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "About to close txn "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50479
    iget-wide v6, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 586
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50480
    iget-object v5, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    .line 586
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/i/f/b;->b(Z)V

    .line 589
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Closed txn "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50481
    iget-wide v4, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 589
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 50482
    iget-object v4, p0, Lcom/sleepycat/b/n/z;->u:Lcom/sleepycat/b/bq;

    .line 589
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 592
    sget-boolean v0, Lcom/sleepycat/b/i/f/b;->h:Z

    if-nez v0, :cond_10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :cond_10
    move-object v0, v1

    .line 595
    goto/16 :goto_2

    .line 572
    :catchall_2
    move-exception v0

    move v1, v3

    goto/16 :goto_6

    .line 569
    :catchall_3
    move-exception v0

    move v1, v2

    goto/16 :goto_5

    :catchall_4
    move-exception v0

    goto/16 :goto_5

    :cond_11
    move v3, v2

    goto :goto_8

    :cond_12
    move v3, v2

    goto/16 :goto_3

    :cond_13
    move v3, v2

    goto/16 :goto_0

    :cond_14
    move v3, v2

    goto/16 :goto_7
.end method

.method public final a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 37479
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/sleepycat/b/i/u;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-super/range {p0 .. p6}, Lcom/sleepycat/b/n/z;->a(JLcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/f/b;->a(Lcom/sleepycat/b/i/u;)V

    .line 239
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/sleepycat/b/br;)V
    .locals 8

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 4943
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->n()V

    .line 4944
    iget-object v1, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 5206
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->z:Lcom/sleepycat/b/i/c/b/f;

    .line 4944
    iget v0, v0, Lcom/sleepycat/b/i/c/aj;->as:I

    .line 6057
    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 6887
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 7601
    iget-object v3, v2, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/n;->b()Z

    move-result v3

    .line 6058
    if-eqz v3, :cond_0

    .line 8443
    iget-object v3, p0, Lcom/sleepycat/b/n/z;->C:Lcom/sleepycat/b/u;

    .line 9297
    iget-object v3, v3, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    .line 6064
    invoke-virtual {v1, v3}, Lcom/sleepycat/b/i/c/b/f;->a(Lcom/sleepycat/b/v;)I

    move-result v4

    .line 6065
    iget-object v5, v1, Lcom/sleepycat/b/i/c/b/f;->b:Ljava/util/logging/Logger;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/f;->a:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Txn "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": checking that "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " feeders exist before starting commit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 6070
    if-eqz v4, :cond_0

    .line 9394
    iget-object v1, v2, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 6074
    int-to-long v6, v0

    .line 9528
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v6, v7, v1}, Lcom/sleepycat/b/i/h/af;->a(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 6074
    if-nez v0, :cond_0

    .line 9601
    iget-object v0, v2, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->b()Z

    move-result v0

    .line 6081
    if-eqz v0, :cond_0

    .line 10133
    iget-object v0, v2, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 6091
    invoke-virtual {v0}, Lcom/sleepycat/b/i/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6095
    new-instance v0, Lcom/sleepycat/b/i/g;

    add-int/lit8 v1, v4, 0x1

    .line 10394
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 6095
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/m;->a()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sleepycat/b/i/g;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/v;ILjava/util/Set;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Lcom/sleepycat/b/bo;

    iget-object v2, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V

    throw v1

    .line 161
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/c/i;)V
    .locals 2

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 38479
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/sleepycat/b/i/u;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-super {p0, p1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/f/b;->a(Lcom/sleepycat/b/i/u;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/sleepycat/b/g/al;)V
    .locals 11

    .prologue
    .line 188
    .line 20074
    iget-object v0, p1, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 20295
    iget-object v0, v0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 188
    iput-object v0, p0, Lcom/sleepycat/b/i/f/b;->a:Lcom/sleepycat/b/p/au;

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 21124
    invoke-direct {p0}, Lcom/sleepycat/b/i/f/b;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21125
    iget-object v1, v0, Lcom/sleepycat/b/i/c/aj;->ax:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 21127
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->n()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21130
    :try_start_1
    iget-object v2, v0, Lcom/sleepycat/b/i/c/aj;->al:Lcom/sleepycat/b/i/e/i;

    iget v3, v0, Lcom/sleepycat/b/i/c/aj;->ar:I

    .line 22124
    iget-object v1, v2, Lcom/sleepycat/b/i/e/i;->a:Ljava/util/Map;

    .line 22169
    iget-wide v4, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 22124
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/i/e/j;

    .line 22125
    if-eqz v1, :cond_1

    .line 22128
    invoke-static {v1, v3}, Lcom/sleepycat/b/i/e/j;->a(Lcom/sleepycat/b/i/e/j;I)Z

    .line 22129
    iget-object v4, v2, Lcom/sleepycat/b/i/e/i;->a:Ljava/util/Map;

    .line 23169
    iget-wide v6, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 22129
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22130
    iget-object v2, v2, Lcom/sleepycat/b/i/e/i;->b:Lcom/sleepycat/b/i/c/aj;

    .line 23887
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 24206
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->z:Lcom/sleepycat/b/i/c/b/f;

    .line 25124
    invoke-virtual {v1}, Lcom/sleepycat/b/i/e/j;->a()I

    move-result v4

    .line 25125
    if-eqz v4, :cond_1

    .line 25194
    iget-object v5, v1, Lcom/sleepycat/b/i/e/j;->b:Lcom/sleepycat/b/i/f/b;

    .line 25433
    iget-object v6, v5, Lcom/sleepycat/b/n/z;->D:Lcom/sleepycat/b/u;

    .line 26297
    iget-object v6, v6, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    .line 25130
    invoke-virtual {v2, v6}, Lcom/sleepycat/b/i/c/b/f;->a(Lcom/sleepycat/b/v;)I

    move-result v6

    .line 26322
    iget v7, v5, Lcom/sleepycat/b/i/f/b;->b:I

    .line 25132
    sub-int/2addr v7, v6

    .line 25133
    if-ge v7, v4, :cond_1

    .line 25144
    iget-object v7, v2, Lcom/sleepycat/b/i/c/b/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 26733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 27244
    iget-object v9, v7, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 26733
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 27479
    iget-object v9, v7, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v9}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v9

    .line 26733
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, v7, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 28198
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    invoke-virtual {v7}, Lcom/sleepycat/b/i/c/b/m;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 26733
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 25154
    iget-object v8, v2, Lcom/sleepycat/b/i/c/b/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 28887
    iget-object v8, v8, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 29394
    iget-object v8, v8, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 30133
    iget-object v9, v5, Lcom/sleepycat/b/i/f/b;->a:Lcom/sleepycat/b/p/au;

    .line 25156
    invoke-virtual {v8, v9}, Lcom/sleepycat/b/i/c/b/m;->a(Lcom/sleepycat/b/p/au;)I

    move-result v8

    .line 25158
    if-lt v8, v6, :cond_2

    .line 25159
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "txn "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30169
    iget-wide v4, v5, Lcom/sleepycat/b/n/q;->k:J

    .line 25159
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " commit vlsn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 31157
    iget-object v4, v1, Lcom/sleepycat/b/i/e/j;->b:Lcom/sleepycat/b/i/f/b;

    .line 32133
    iget-object v4, v4, Lcom/sleepycat/b/i/f/b;->a:Lcom/sleepycat/b/p/au;

    .line 25159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " acknowledged after explicit feeder check latch count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sleepycat/b/i/e/j;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " required acks:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25166
    iget-object v3, v2, Lcom/sleepycat/b/i/c/b/f;->b:Ljava/util/logging/Logger;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/f;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v3, v2, v1}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 25167
    :cond_1
    return-void

    .line 25180
    :cond_2
    iget-object v1, v2, Lcom/sleepycat/b/i/c/b/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 32887
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 33133
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 34098
    iget-object v1, v1, Lcom/sleepycat/b/i/a/a;->b:Lcom/sleepycat/b/i/a/b;

    invoke-interface {v1}, Lcom/sleepycat/b/i/a/b;->a()Z

    move-result v1

    .line 25180
    if-nez v1, :cond_1

    .line 25183
    new-instance v1, Lcom/sleepycat/b/i/e;

    invoke-direct {v1, v5, v4, v3, v7}, Lcom/sleepycat/b/i/e;-><init>(Lcom/sleepycat/b/i/f/b;IILjava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/sleepycat/b/i/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 21131
    :catch_0
    move-exception v1

    .line 21132
    :try_start_2
    iget-object v2, v0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/e;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 21133
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    :catch_1
    move-exception v0

    .line 193
    new-instance v1, Lcom/sleepycat/b/bo;

    iget-object v2, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final a(Z)V
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/sleepycat/b/i/f/b;->g:Z

    if-eqz v0, :cond_0

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/n/q;)V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :cond_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    if-eqz p1, :cond_1

    .line 634
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/b;->g()V

    .line 638
    :goto_0
    throw v0

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/f/b;->o_()V

    goto :goto_0
.end method

.method protected final a(Lcom/sleepycat/b/n;)Z
    .locals 1

    .prologue
    .line 364
    instance-of v0, p1, Lcom/sleepycat/b/i/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/n;)Z

    move-result v0

    goto :goto_0
.end method

.method public final d()Lcom/sleepycat/b/d;
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 129
    new-instance v1, Lcom/sleepycat/b/d;

    .line 3211
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->b()Ljava/util/UUID;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/sleepycat/b/i/f/b;->a:Lcom/sleepycat/b/p/au;

    .line 4101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 129
    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/b/d;-><init>(Ljava/util/UUID;J)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected final g()V
    .locals 6

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 34177
    iget-object v1, v0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post log abort hook for txn: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35169
    iget-wide v4, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 34177
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 34179
    invoke-direct {p0}, Lcom/sleepycat/b/i/f/b;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34180
    iget-object v1, v0, Lcom/sleepycat/b/i/c/aj;->ax:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34182
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->al:Lcom/sleepycat/b/i/e/i;

    .line 36089
    iget-object v0, v0, Lcom/sleepycat/b/i/e/i;->a:Ljava/util/Map;

    .line 36169
    iget-wide v2, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 36089
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method public final h_()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->N:Lcom/sleepycat/b/i/c/b/x;

    .line 39099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 332
    return v0
.end method

.method protected final m_()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 168
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 10433
    iget-object v1, p0, Lcom/sleepycat/b/n/z;->D:Lcom/sleepycat/b/u;

    .line 11297
    iget-object v1, v1, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    .line 11887
    iget-object v2, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 12206
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->z:Lcom/sleepycat/b/i/c/b/f;

    .line 170
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/i/c/b/f;->a(Lcom/sleepycat/b/v;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/i/f/b;->b:I

    .line 13031
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->n()V

    .line 13032
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/n/q;)V

    .line 13033
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/f/b;)V

    .line 13036
    iget-object v1, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 13394
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 14240
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/h/af;->size()I

    move-result v1

    .line 14433
    iget-object v2, p0, Lcom/sleepycat/b/n/z;->D:Lcom/sleepycat/b/u;

    .line 15297
    iget-object v2, v2, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    .line 15322
    iget v3, p0, Lcom/sleepycat/b/i/f/b;->b:I

    .line 13041
    iget-object v4, v0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13042
    iget-object v4, v0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Txn "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16169
    iget-wide v6, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 13042
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requires: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " active: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " replica acks. Commit Policy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 13048
    :cond_0
    if-le v3, v1, :cond_1

    .line 13050
    iget-object v1, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 17133
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 13050
    invoke-virtual {v1}, Lcom/sleepycat/b/i/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17326
    iput v8, p0, Lcom/sleepycat/b/i/f/b;->b:I

    .line 13061
    :cond_1
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->al:Lcom/sleepycat/b/i/e/i;

    .line 18322
    iget v1, p0, Lcom/sleepycat/b/i/f/b;->b:I

    .line 18066
    if-eqz v1, :cond_3

    .line 18070
    new-instance v1, Lcom/sleepycat/b/i/e/j;

    invoke-direct {v1, v0, p0, v8}, Lcom/sleepycat/b/i/e/j;-><init>(Lcom/sleepycat/b/i/e/i;Lcom/sleepycat/b/i/f/b;B)V

    .line 18071
    iget-object v0, v0, Lcom/sleepycat/b/i/e/i;->a:Ljava/util/Map;

    .line 19169
    iget-wide v2, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 18071
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/j;

    .line 18072
    sget-boolean v1, Lcom/sleepycat/b/i/e/i;->d:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13053
    :cond_2
    new-instance v1, Lcom/sleepycat/b/i/g;

    iget-object v4, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 17394
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 13053
    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/m;->a()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sleepycat/b/i/g;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/v;ILjava/util/Set;)V

    .line 13057
    iget-object v2, v0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/g;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 13058
    throw v1

    .line 181
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/f/b;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sleepycat/b/i/f/b;->d:I

    .line 182
    return-void
.end method

.method protected final n_()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 34155
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->n()V

    .line 34156
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/n/q;)V

    .line 34157
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/f/b;)V

    .line 203
    return-void
.end method

.method protected final o_()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sleepycat/b/i/f/b;->i:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 37166
    invoke-direct {p0}, Lcom/sleepycat/b/i/f/b;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37167
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ax:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 216
    :cond_0
    return-void
.end method

.method public final q_()Z
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x1

    return v0
.end method
