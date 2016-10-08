.class final Lcom/sleepycat/b/i/i/a;
.super Lcom/sleepycat/b/i/i/c;
.source "GhostBucket.java"


# instance fields
.field private f:J

.field private g:J


# direct methods
.method constructor <init>(Lcom/sleepycat/b/p/au;JJ)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 51
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v1, p0

    move v6, v5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/i/i/c;-><init>(JIIILcom/sleepycat/b/p/au;)V

    .line 56
    iput-wide p2, p0, Lcom/sleepycat/b/i/i/a;->f:J

    .line 57
    iput-wide p4, p0, Lcom/sleepycat/b/i/i/a;->g:J

    .line 58
    iput-boolean v5, p0, Lcom/sleepycat/b/i/i/a;->c:Z

    .line 59
    return-void
.end method

.method static a(Lcom/sleepycat/a/a/l;)Lcom/sleepycat/b/i/i/a;
    .locals 6

    .prologue
    .line 66
    new-instance v1, Lcom/sleepycat/b/p/au;

    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    .line 67
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v2

    .line 68
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v4

    .line 69
    new-instance v0, Lcom/sleepycat/b/i/i/a;

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/i/a;-><init>(Lcom/sleepycat/b/p/au;JJ)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/sleepycat/b/p/au;)J
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/a;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sleepycat/b/i/i/a;->a:Lcom/sleepycat/b/p/au;

    .line 1101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 80
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/a;->f:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 81
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/a;->g:J

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/a/a/m;->d(J)Lcom/sleepycat/a/a/m;

    .line 82
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/p/au;J)Z
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    const-string v0, "Shouldn\'t be called"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/a;->f:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final declared-synchronized b(Lcom/sleepycat/b/p/au;)J
    .locals 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/a;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(Lcom/sleepycat/b/p/au;J)V
    .locals 1

    .prologue
    .line 138
    const-string v0, "Shouldn\'t be called"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method final c()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/sleepycat/b/i/i/a;->g:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized c(Lcom/sleepycat/b/p/au;)J
    .locals 2

    .prologue
    .line 105
    monitor-enter p0

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<GhostBucket vlsn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/sleepycat/b/i/i/a;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, " firstLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-wide v2, p0, Lcom/sleepycat/b/i/i/a;->f:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, " lastLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/i/i/a;->g:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
