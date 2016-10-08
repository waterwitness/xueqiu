.class public final Lcom/sleepycat/b/i/c/b/b;
.super Ljava/lang/Object;
.source "CommitFreezeLatch.java"


# static fields
.field private static h:J


# instance fields
.field private a:Lcom/sleepycat/b/i/b/s;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/concurrent/CountDownLatch;

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/sleepycat/b/i/c/b/b;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/b;->a:Lcom/sleepycat/b/i/b/s;

    .line 42
    iput v0, p0, Lcom/sleepycat/b/i/c/b/b;->b:I

    .line 43
    iput v0, p0, Lcom/sleepycat/b/i/c/b/b;->c:I

    .line 44
    iput v0, p0, Lcom/sleepycat/b/i/c/b/b;->d:I

    .line 47
    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/b;->f:J

    .line 50
    sget-wide v0, Lcom/sleepycat/b/i/c/b/b;->h:J

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/b;->g:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->a:Lcom/sleepycat/b/i/b/s;

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/b;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/i/b/s;)V
    .locals 4

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->a:Lcom/sleepycat/b/i/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->a:Lcom/sleepycat/b/i/b/s;

    invoke-interface {p1, v0}, Lcom/sleepycat/b/i/b/s;->compareTo(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 89
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 90
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/b;->a:Lcom/sleepycat/b/i/b/s;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/b;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/b;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/sleepycat/b/i/b/s;)V
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->a:Lcom/sleepycat/b/i/b/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->a:Lcom/sleepycat/b/i/b/s;

    invoke-interface {p1, v0}, Lcom/sleepycat/b/i/b/s;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 145
    :goto_0
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/b;->e:Ljava/util/concurrent/CountDownLatch;

    .line 148
    if-nez v1, :cond_0

    .line 149
    monitor-exit p0

    .line 167
    :goto_1
    return v0

    .line 151
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/b;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    iget v4, p0, Lcom/sleepycat/b/i/c/b/b;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sleepycat/b/i/c/b/b;->b:I

    .line 155
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 157
    monitor-enter p0

    .line 158
    if-eqz v1, :cond_1

    .line 159
    :try_start_1
    iget v0, p0, Lcom/sleepycat/b/i/c/b/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/c/b/b;->d:I

    .line 160
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/b;->a()V

    .line 161
    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_1

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 152
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 163
    :cond_1
    :try_start_3
    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/b;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 164
    iget v1, p0, Lcom/sleepycat/b/i/c/b/b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/b/i/c/b/b;->c:I

    .line 166
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/b;->a()V

    .line 167
    monitor-exit p0

    goto :goto_1

    .line 169
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
