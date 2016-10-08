.class public Lcom/sleepycat/b/o/b;
.super Ljava/lang/Object;
.source "DbBackup.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field public a:Z

.field public b:J

.field private final d:Lcom/sleepycat/b/c/ad;

.field private final e:Z

.field private final f:J

.field private g:J

.field private h:Z

.field private i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    const-class v0, Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/o/b;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/o/b;-><init>(Lcom/sleepycat/b/c/ad;B)V

    .line 366
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/b/c/ad;B)V
    .locals 2

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/o/b;->g:J

    .line 381
    iput-object p1, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 3375
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/m;->b(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/o/b;->e:Z

    .line 388
    iget-boolean v0, p0, Lcom/sleepycat/b/o/b;->e:Z

    if-nez v0, :cond_0

    .line 4330
    iget-boolean v0, p1, Lcom/sleepycat/b/c/ad;->g:Z

    .line 388
    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Environment handle may not be read-only when directory is read-write"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/o/b;->f:J

    .line 395
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/sleepycat/b/o/b;->h:Z

    if-nez v0, :cond_0

    .line 617
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startBackup was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/o/b;->h:Z

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "startBackup was already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 432
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/o/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    const-string v1, "A replication operation is overwriting log files. The backup can not proceed because files may be invalid. The backup may be attempted at a later time."

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/String;)Lcom/sleepycat/b/au;

    move-result-object v0

    throw v0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 4504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 440
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/a/c;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 5504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 443
    iget-wide v2, p0, Lcom/sleepycat/b/o/b;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/a/c;->a(J)V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/o/b;->h:Z

    .line 455
    iget-boolean v0, p0, Lcom/sleepycat/b/o/b;->e:Z

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 6375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 6506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/m;->a(Z)Ljava/lang/Long;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/o/b;->g:J

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 7375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 463
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/sleepycat/b/o/b;->g:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sleepycat/b/g/m;->a(JJ)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/o/b;->i:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 466
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 7504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 466
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/a/c;->b(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 458
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->t()J

    move-result-wide v0

    .line 459
    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/o/b;->g:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 466
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 7504
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 466
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/a/c;->b(J)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/o/b;->d()V

    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/o/b;->h:Z

    .line 490
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 8504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 490
    iget-wide v2, p0, Lcom/sleepycat/b/o/b;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/a/c;->b(J)V

    .line 492
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/c/ad;->b(Lcom/sleepycat/b/o/b;)V

    .line 495
    iget-boolean v0, p0, Lcom/sleepycat/b/o/b;->a:Z

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/o/b;->a:Z

    .line 497
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A replication operation has overwritten log files from file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/o/b;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Any copied files should be considered invalid and discarded. The backup may be attempted at a later time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/String;)Lcom/sleepycat/b/au;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 503
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/o/b;->d()V

    .line 547
    iget-object v0, p0, Lcom/sleepycat/b/o/b;->d:Lcom/sleepycat/b/c/ad;

    .line 9375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 547
    iget-wide v2, p0, Lcom/sleepycat/b/o/b;->f:J

    iget-wide v4, p0, Lcom/sleepycat/b/o/b;->g:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sleepycat/b/g/m;->a(JJ)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
