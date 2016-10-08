.class public final Lcom/sleepycat/b/i/c/b/ai;
.super Ljava/lang/Object;
.source "Replica.java"


# static fields
.field static final synthetic j:Z


# instance fields
.field a:J

.field b:Lcom/sleepycat/b/p/au;

.field c:J

.field public d:J

.field public final e:Lcom/sleepycat/b/p/z;

.field public final f:Lcom/sleepycat/b/p/z;

.field final g:Lcom/sleepycat/b/p/z;

.field final h:Lcom/sleepycat/b/p/z;

.field public final i:Lcom/sleepycat/b/i/c/b/ak;

.field final synthetic k:Lcom/sleepycat/b/i/c/b/ag;

.field private final l:J

.field private m:J

.field private final n:Lcom/sleepycat/b/p/ai;

.field private final o:Lcom/sleepycat/b/i/c/b/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1168
    const-class v0, Lcom/sleepycat/b/i/c/b/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/ai;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/ag;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1168
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 2101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 1169
    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->l:J

    .line 1176
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->l:J

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->a:J

    .line 1177
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->b:Lcom/sleepycat/b/p/au;

    .line 1178
    iput-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->c:J

    .line 1182
    iput-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->m:J

    .line 1184
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "ConsistencyTracker"

    const-string v2, "Statistics on the delays experienced by read requests at the replica in order to conform to the specified ReplicaConsistencyPolicy."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->n:Lcom/sleepycat/b/p/ai;

    .line 1188
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ai;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/c/b/aq;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->e:Lcom/sleepycat/b/p/z;

    .line 1191
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ai;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/c/b/aq;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->f:Lcom/sleepycat/b/p/z;

    .line 1194
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ai;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/c/b/aq;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->g:Lcom/sleepycat/b/p/z;

    .line 1197
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ai;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/c/b/aq;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->h:Lcom/sleepycat/b/p/z;

    .line 1200
    new-instance v0, Lcom/sleepycat/b/i/c/b/ai$1;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    .line 2520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 1200
    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/i/c/b/ai$1;-><init>(Lcom/sleepycat/b/i/c/b/ai;Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->o:Lcom/sleepycat/b/i/c/b/ak;

    .line 1212
    new-instance v0, Lcom/sleepycat/b/i/c/b/ai$2;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    .line 3520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 1212
    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/i/c/b/ai$2;-><init>(Lcom/sleepycat/b/i/c/b/ai;Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->i:Lcom/sleepycat/b/i/c/b/ak;

    return-void
.end method

.method public static synthetic a(Lcom/sleepycat/b/i/c/b/ai;Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 2

    .prologue
    .line 1168
    .line 11402
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->n:Lcom/sleepycat/b/p/ai;

    .line 12103
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 11402
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    .line 1168
    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/ai;)Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->b:Lcom/sleepycat/b/p/au;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 1260
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1267
    const-wide/32 v0, 0x7fffffff

    .line 1284
    :goto_0
    return-wide v0

    .line 1271
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->a:J

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->c:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 1282
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->m:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public final a(JLcom/sleepycat/b/bc;)V
    .locals 7

    .prologue
    .line 1358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1362
    monitor-enter p0

    .line 1363
    :try_start_0
    instance-of v0, p3, Lcom/sleepycat/b/i/b;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->a:J

    .line 1367
    :goto_0
    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1368
    monitor-exit p0

    .line 1376
    :goto_1
    return-void

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->b:Lcom/sleepycat/b/p/au;

    .line 9101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    goto :goto_0

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->o:Lcom/sleepycat/b/i/c/b/ak;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/ak;->a(Ljava/lang/Long;)Lcom/sleepycat/b/i/h/t;

    move-result-object v0

    .line 1371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    invoke-virtual {p0, v0, p3}, Lcom/sleepycat/b/i/c/b/ai;->a(Lcom/sleepycat/b/i/h/t;Lcom/sleepycat/b/bc;)V

    .line 1374
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->g:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 1375
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->h:Lcom/sleepycat/b/p/z;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/p/z;->b(J)V

    goto :goto_1

    .line 1371
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/i/e/ae;)V
    .locals 4

    .prologue
    .line 1324
    monitor-enter p0

    .line 7937
    :try_start_0
    iget-wide v0, p1, Lcom/sleepycat/b/i/e/ae;->b:J

    .line 1324
    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->d:J

    .line 8933
    iget-wide v0, p1, Lcom/sleepycat/b/i/e/ae;->a:J

    .line 1325
    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->m:J

    .line 1327
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->i:Lcom/sleepycat/b/i/c/b/ak;

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ai;->a()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/b/i/c/b/ak;->a(JLcom/sleepycat/b/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    monitor-exit p0

    return-void

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/i/h/t;Lcom/sleepycat/b/bc;)V
    .locals 3

    .prologue
    .line 1390
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0}, Lcom/sleepycat/b/bc;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/b/i/h/t;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 9520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 10479
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v0

    .line 1394
    invoke-virtual {v0}, Lcom/sleepycat/b/i/u;->c()Z

    move-result v0

    .line 1396
    new-instance v1, Lcom/sleepycat/b/i/r;

    invoke-direct {v1, p2, v0}, Lcom/sleepycat/b/i/r;-><init>(Lcom/sleepycat/b/bc;Z)V

    throw v1

    .line 1399
    :cond_0
    return-void
.end method

.method final declared-synchronized a(Lcom/sleepycat/b/n;)V
    .locals 4

    .prologue
    .line 1294
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/ai;->j:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1295
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->o:Lcom/sleepycat/b/i/c/b/ak;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3, p1}, Lcom/sleepycat/b/i/c/b/ak;->a(JLcom/sleepycat/b/n;)V

    .line 1296
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->i:Lcom/sleepycat/b/i/c/b/ak;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, p1}, Lcom/sleepycat/b/i/c/b/ak;->a(JLcom/sleepycat/b/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1297
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized b()V
    .locals 4

    .prologue
    .line 1300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/ag;->f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;

    move-result-object v0

    .line 4350
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ac;->g:Lcom/sleepycat/b/i/c/b/ae;

    .line 5343
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/ae;->a:Lcom/sleepycat/b/p/au;

    .line 6101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 1301
    iput-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->a:J

    .line 6347
    iget-wide v0, v0, Lcom/sleepycat/b/i/c/b/ae;->b:J

    .line 1302
    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->c:J

    .line 1304
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->a:J

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->c:J

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->m:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1306
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->a:J

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->d:J

    .line 1307
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->c:J

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/ai;->m:J

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->o:Lcom/sleepycat/b/i/c/b/ak;

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ai;->a:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/b/i/c/b/ak;->a(JLcom/sleepycat/b/n;)V

    .line 1315
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->i:Lcom/sleepycat/b/i/c/b/ak;

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/ai;->a()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/b/i/c/b/ak;->a(JLcom/sleepycat/b/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    monitor-exit p0

    return-void

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 4

    .prologue
    .line 1319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/ag;->f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;

    move-result-object v0

    .line 6354
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 1319
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->b:Lcom/sleepycat/b/p/au;

    .line 1320
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ai;->o:Lcom/sleepycat/b/i/c/b/ak;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/ai;->b:Lcom/sleepycat/b/p/au;

    .line 7101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 1320
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/b/i/c/b/ak;->a(JLcom/sleepycat/b/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    monitor-exit p0

    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
