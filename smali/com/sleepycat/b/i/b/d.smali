.class public Lcom/sleepycat/b/i/b/d;
.super Ljava/lang/Object;
.source "Elections.java"


# static fields
.field static final synthetic m:Z


# instance fields
.field public a:Lcom/sleepycat/b/i/c/t;

.field public final b:Lcom/sleepycat/b/i/c/b/x;

.field public final c:Lcom/sleepycat/b/i/c/b/aa;

.field public final d:Lcom/sleepycat/b/i/c/aj;

.field public e:Lcom/sleepycat/b/i/b/m;

.field public f:Lcom/sleepycat/b/i/b/a;

.field public g:Lcom/sleepycat/b/i/b/j;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Lcom/sleepycat/b/i/b/b;

.field public final j:Lcom/sleepycat/b/i/b/x;

.field public final k:Ljava/util/logging/Logger;

.field public final l:Ljava/util/logging/Formatter;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Lcom/sleepycat/b/i/b/k;

.field private volatile p:Lcom/sleepycat/b/i/b/f;

.field private q:Lcom/sleepycat/b/i/b/e;

.field private final r:Lcom/sleepycat/b/i/b/h;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/sleepycat/b/i/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/b/d;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/b/k;Lcom/sleepycat/b/i/b/b;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    iput-object v1, p0, Lcom/sleepycat/b/i/b/d;->p:Lcom/sleepycat/b/i/b/f;

    .line 143
    iput-object v1, p0, Lcom/sleepycat/b/i/b/d;->q:Lcom/sleepycat/b/i/b/e;

    .line 152
    iput v2, p0, Lcom/sleepycat/b/i/b/d;->s:I

    .line 2520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 174
    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    .line 175
    iput-object p1, p0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 3454
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 176
    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->b:Lcom/sleepycat/b/i/c/b/x;

    .line 179
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    .line 181
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    .line 4392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 182
    sget-object v1, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v3

    .line 183
    sget-object v1, Lcom/sleepycat/b/i/c/an;->I:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    .line 185
    new-instance v1, Lcom/sleepycat/b/i/b/h;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/i/b/h;-><init>(Lcom/sleepycat/b/i/b/d;I)V

    iput-object v1, p0, Lcom/sleepycat/b/i/b/d;->r:Lcom/sleepycat/b/i/b/h;

    .line 191
    :goto_0
    new-instance v0, Lcom/sleepycat/b/i/h/w;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->b:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/h/w;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    .line 193
    new-instance v0, Lcom/sleepycat/b/i/b/x;

    invoke-static {}, Lcom/sleepycat/b/i/b/am;->b()Lcom/sleepycat/b/i/b/t;

    move-result-object v1

    invoke-static {}, Lcom/sleepycat/b/i/b/l;->a()Lcom/sleepycat/b/i/b/aj;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/b/i/b/d;->b:Lcom/sleepycat/b/i/c/b/x;

    .line 4520
    iget-object v5, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 193
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/b/x;-><init>(Lcom/sleepycat/b/i/b/t;Lcom/sleepycat/b/i/b/aj;Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 198
    iput-object p3, p0, Lcom/sleepycat/b/i/b/d;->i:Lcom/sleepycat/b/i/b/b;

    .line 199
    iput-object p2, p0, Lcom/sleepycat/b/i/b/d;->o:Lcom/sleepycat/b/i/b/k;

    .line 201
    new-instance v0, Lcom/sleepycat/b/p/al;

    const-string v1, "JE Elections Factory"

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/al;-><init>(Ljava/lang/String;Ljava/util/logging/Logger;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->h:Ljava/util/concurrent/ExecutorService;

    .line 204
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    .line 188
    const-string v3, "TEST_GROUP"

    .line 189
    iput-object v1, p0, Lcom/sleepycat/b/i/b/d;->r:Lcom/sleepycat/b/i/b/h;

    goto :goto_0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/p;)V
    .locals 10

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/c/t;)V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 340
    iget v0, p0, Lcom/sleepycat/b/i/b/d;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/b/d;->s:I

    .line 341
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Election initiated; election #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sleepycat/b/i/b/d;->s:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->p:Lcom/sleepycat/b/i/b/f;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Election in progress. Waiting...."

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->p:Lcom/sleepycat/b/i/b/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/f;->join()V

    .line 349
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->p:Lcom/sleepycat/b/i/b/f;

    .line 8111
    iget-object v0, v0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 351
    if-eqz v0, :cond_0

    .line 352
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    sget-object v3, Lcom/sleepycat/b/c/ac;->z:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 360
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->q:Lcom/sleepycat/b/i/b/e;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->q:Lcom/sleepycat/b/i/b/e;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/e;->a()Ljava/util/concurrent/CountDownLatch;

    move-result-object v7

    .line 363
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 365
    :try_start_3
    new-instance v3, Lcom/sleepycat/b/i/b/i;

    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    invoke-direct {v3, v0, v7}, Lcom/sleepycat/b/i/b/i;-><init>(Lcom/sleepycat/b/i/c/b/aa;Ljava/util/concurrent/CountDownLatch;)V

    .line 367
    new-instance v0, Lcom/sleepycat/b/i/b/f;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    if-nez v1, :cond_2

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/i/b/f;-><init>(Lcom/sleepycat/b/i/b/d;Lcom/sleepycat/b/i/p;Lcom/sleepycat/b/i/b/i;Lcom/sleepycat/b/c/ad;Ljava/lang/String;B)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->p:Lcom/sleepycat/b/i/b/f;

    .line 372
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->p:Lcom/sleepycat/b/i/b/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/f;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 375
    :try_start_4
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 8584
    iget v0, v3, Lcom/sleepycat/b/i/b/i;->b:I

    .line 376
    if-gtz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Retry count exhausted: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9584
    iget v3, v3, Lcom/sleepycat/b/i/b/i;->a:I

    .line 378
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 392
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Election finished. Elapsed time: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 363
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/aj;->B()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v3, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Election initiation interrupted"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/d;->c()V

    .line 390
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method static synthetic c(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/m;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->e:Lcom/sleepycat/b/i/b/m;

    return-object v0
.end method

.method static synthetic d(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/t;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->a:Lcom/sleepycat/b/i/c/t;

    return-object v0
.end method

.method static synthetic e(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/x;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    return-object v0
.end method

.method static synthetic f(Lcom/sleepycat/b/i/b/d;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    return-object v0
.end method

.method static synthetic h(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/e;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->q:Lcom/sleepycat/b/i/b/e;

    return-object v0
.end method

.method static synthetic i(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/aj;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    return-object v0
.end method

.method static synthetic j(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/b/j;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 239
    new-instance v0, Lcom/sleepycat/b/i/b/j;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/b/j;-><init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    .line 240
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/j;->start()V

    .line 241
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->o:Lcom/sleepycat/b/i/b/k;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/b/j;->a(Lcom/sleepycat/b/i/b/k;)V

    .line 242
    new-instance v0, Lcom/sleepycat/b/i/b/e;

    invoke-direct {v0}, Lcom/sleepycat/b/i/b/e;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/d;->q:Lcom/sleepycat/b/i/b/e;

    .line 243
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->q:Lcom/sleepycat/b/i/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/b/j;->a(Lcom/sleepycat/b/i/b/k;)V

    .line 244
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->r:Lcom/sleepycat/b/i/b/h;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 5354
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->v:Ljava/util/Timer;

    .line 245
    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->r:Lcom/sleepycat/b/i/b/h;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->r:Lcom/sleepycat/b/i/b/h;

    .line 5848
    iget v2, v2, Lcom/sleepycat/b/i/b/h;->a:I

    .line 245
    int-to-long v2, v2

    iget-object v4, p0, Lcom/sleepycat/b/i/b/d;->r:Lcom/sleepycat/b/i/b/h;

    .line 6848
    iget v4, v4, Lcom/sleepycat/b/i/b/h;->a:I

    .line 245
    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 249
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/i/c/t;)V
    .locals 5

    .prologue
    .line 429
    iput-object p1, p0, Lcom/sleepycat/b/i/b/d;->a:Lcom/sleepycat/b/i/c/t;

    .line 430
    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 10548
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 10549
    iget-object v0, p1, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 11178
    iget-boolean v4, v0, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 10550
    if-nez v4, :cond_0

    .line 11201
    iget-object v0, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 12099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 10551
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12203
    :cond_1
    iput-object v2, v1, Lcom/sleepycat/b/i/c/ap;->j:Ljava/util/Set;

    .line 431
    return-void
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/p;)V
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->a:Lcom/sleepycat/b/i/c/t;

    if-nez v0, :cond_0

    .line 280
    const-string v0, "No rep group was configured"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->a:Lcom/sleepycat/b/i/c/t;

    .line 7683
    new-instance v1, Lcom/sleepycat/b/i/c/t$4;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/t$4;-><init>(Lcom/sleepycat/b/i/c/t;)V

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/t;->b(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;

    move-result-object v0

    .line 283
    return-object v0
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 507
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Elections shutdown initiated"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->f:Lcom/sleepycat/b/i/b/a;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->f:Lcom/sleepycat/b/i/b/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/a;->b()V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/j;->b()V

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->p:Lcom/sleepycat/b/i/b/f;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->p:Lcom/sleepycat/b/i/b/f;

    .line 12732
    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/f;->n()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12735
    iget-object v1, v0, Lcom/sleepycat/b/i/b/f;->c:Lcom/sleepycat/b/i/b/d;

    .line 13090
    iget-object v1, v1, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    .line 12735
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/b/f;->a(Ljava/util/logging/Logger;)V

    .line 529
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->r:Lcom/sleepycat/b/i/b/h;

    if-eqz v0, :cond_4

    .line 530
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->r:Lcom/sleepycat/b/i/b/h;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/h;->cancel()Z

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 533
    iget-object v0, p0, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Elections shutdown completed"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method
