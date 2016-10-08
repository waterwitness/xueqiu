.class final Lcom/sleepycat/b/g/i;
.super Ljava/lang/Object;
.source "FSyncManager.java"


# static fields
.field static a:I

.field static b:I

.field static c:I


# instance fields
.field private volatile d:Z

.field private volatile e:Z

.field private final f:J

.field private g:Z

.field private final h:Lcom/sleepycat/b/c/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    sput v0, Lcom/sleepycat/b/g/i;->a:I

    .line 408
    const/4 v0, 0x1

    sput v0, Lcom/sleepycat/b/g/i;->b:I

    .line 409
    const/4 v0, 0x2

    sput v0, Lcom/sleepycat/b/g/i;->c:I

    return-void
.end method

.method constructor <init>(JLcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-boolean v0, p0, Lcom/sleepycat/b/g/i;->d:Z

    .line 418
    iput-wide p1, p0, Lcom/sleepycat/b/g/i;->f:J

    .line 419
    iput-boolean v0, p0, Lcom/sleepycat/b/g/i;->e:Z

    .line 420
    iput-boolean v0, p0, Lcom/sleepycat/b/g/i;->g:Z

    .line 421
    iput-object p3, p0, Lcom/sleepycat/b/g/i;->h:Lcom/sleepycat/b/c/ad;

    .line 422
    return-void
.end method


# virtual methods
.method final declared-synchronized a()I
    .locals 6

    .prologue
    .line 448
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/sleepycat/b/g/i;->c:I

    .line 450
    iget-boolean v1, p0, Lcom/sleepycat/b/g/i;->e:Z

    if-nez v1, :cond_1

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 455
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/sleepycat/b/g/i;->f:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    :try_start_2
    iget-boolean v2, p0, Lcom/sleepycat/b/g/i;->e:Z

    if-eqz v2, :cond_2

    .line 468
    sget v0, Lcom/sleepycat/b/g/i;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    :try_start_3
    new-instance v1, Lcom/sleepycat/b/bo;

    iget-object v2, p0, Lcom/sleepycat/b/g/i;->h:Lcom/sleepycat/b/c/ad;

    const-string v3, "Unexpected interrupt while waiting for write or fsync"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 476
    :cond_2
    :try_start_4
    iget-boolean v2, p0, Lcom/sleepycat/b/g/i;->g:Z

    if-nez v2, :cond_3

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/g/i;->g:Z

    .line 478
    sget v0, Lcom/sleepycat/b/g/i;->b:I

    goto :goto_0

    .line 486
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 487
    sub-long/2addr v2, v0

    iget-wide v4, p0, Lcom/sleepycat/b/g/i;->f:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 489
    sget v0, Lcom/sleepycat/b/g/i;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/g/i;->d:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/sleepycat/b/g/i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 505
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/g/i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 1

    .prologue
    .line 509
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sleepycat/b/g/i;->e:Z

    .line 510
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()V
    .locals 1

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
