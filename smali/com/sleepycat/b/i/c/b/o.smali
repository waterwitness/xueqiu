.class public final Lcom/sleepycat/b/i/c/b/o;
.super Ljava/lang/Object;
.source "GlobalCBVLSN.java"


# instance fields
.field public volatile a:Lcom/sleepycat/b/p/au;

.field private final b:Lcom/sleepycat/b/i/c/aj;

.field private final c:Ljava/util/logging/Logger;

.field private final d:J

.field private final e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    .line 2520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 64
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    .line 65
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    .line 3392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 65
    sget-object v1, Lcom/sleepycat/b/i/c/an;->b:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/o;->d:J

    .line 67
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    .line 4392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 67
    sget-object v1, Lcom/sleepycat/b/i/c/an;->c:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/o;->e:I

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->c:Ljava/util/logging/Logger;

    .line 70
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    .line 79
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->c:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activeSyncups = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/i/c/t;)V
    .locals 12

    .prologue
    .line 131
    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 132
    const-wide/16 v0, 0x0

    .line 133
    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/t;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 5241
    iget-object v0, v0, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 5825
    iget-object v6, v0, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    .line 5829
    iget-wide v4, v0, Lcom/sleepycat/b/i/c/u;->b:J

    .line 145
    invoke-virtual {v1, v6}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gtz v0, :cond_e

    .line 150
    invoke-virtual {v6, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_1
    move-object v2, v6

    :goto_2
    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    .line 155
    goto :goto_0

    :cond_0
    move-wide v0, v4

    .line 150
    goto :goto_1

    .line 157
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 204
    :cond_2
    :goto_3
    return-void

    .line 162
    :cond_3
    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/t;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 6241
    iget-object v5, v0, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 6825
    iget-object v0, v5, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    .line 6829
    iget-wide v6, v5, Lcom/sleepycat/b/i/c/u;->b:J

    .line 178
    sub-long v6, v2, v6

    iget-wide v8, p0, Lcom/sleepycat/b/i/c/b/o;->d:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-lez v5, :cond_4

    move-object v1, v0

    .line 181
    goto :goto_4

    .line 189
    :cond_5
    new-instance v2, Lcom/sleepycat/b/p/au;

    .line 7101
    iget-wide v0, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 189
    iget v3, p0, Lcom/sleepycat/b/i/c/b/o;->e:I

    int-to-long v4, v3

    sub-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/b/p/au;-><init>(J)V

    .line 192
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    .line 7807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 193
    if-eqz v0, :cond_9

    .line 8775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 9110
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 199
    :goto_5
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-lez v1, :cond_d

    .line 9213
    :goto_6
    const/4 v4, 0x0

    .line 9214
    const/4 v3, 0x0

    .line 9215
    const/4 v2, 0x0

    .line 9216
    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    const/4 v1, 0x0

    .line 9218
    monitor-enter p0

    .line 9223
    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v5}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-lez v5, :cond_6

    .line 9224
    iget v5, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    if-nez v5, :cond_c

    .line 9225
    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    .line 9807
    iget-object v5, v5, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 10775
    iget-object v5, v5, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v5}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v6

    .line 11136
    iget-object v5, v6, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    sget-object v7, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v7}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 11140
    iget-object v5, v6, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-gtz v5, :cond_a

    iget-object v5, v6, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v5

    if-ltz v5, :cond_a

    .line 11141
    const/4 v5, 0x1

    .line 9226
    :goto_7
    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/o;->c:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 9228
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "GroupCBVLSN: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is outside VLSN range: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Current group:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9245
    :cond_6
    :goto_8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9247
    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/o;->c:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9248
    if-eqz v2, :cond_7

    .line 9249
    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/o;->c:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v5, v6, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 9252
    :cond_7
    if-eqz v4, :cond_8

    .line 9253
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/o;->c:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Global CBVLSN changed from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 9258
    :cond_8
    if-lez v3, :cond_2

    .line 9259
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->c:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Global CBVLSN update gated by "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " syncups"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 193
    :cond_9
    sget-object v0, Lcom/sleepycat/b/p/au;->b:Lcom/sleepycat/b/p/au;

    goto/16 :goto_5

    .line 11144
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 9233
    :cond_b
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 9234
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 9235
    const/4 v4, 0x1

    .line 9237
    goto :goto_8

    .line 9242
    :cond_c
    iget v3, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    goto :goto_8

    .line 9245
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    move-object v0, v2

    goto/16 :goto_6

    :cond_e
    move-wide v10, v2

    move-object v2, v1

    move-wide v0, v10

    goto/16 :goto_2
.end method

.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    .line 86
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->c:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activeSyncups = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/b/o;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-wide/16 v0, 0x0

    .line 105
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/o;->b:Lcom/sleepycat/b/i/c/aj;

    .line 4807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 105
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    goto :goto_0
.end method
