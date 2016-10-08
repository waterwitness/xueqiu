.class public final Lcom/sleepycat/b/i/c/b/m;
.super Ljava/lang/Object;
.source "FeederManager.java"


# static fields
.field static final synthetic k:Z


# instance fields
.field final a:Lcom/sleepycat/b/i/c/b/aa;

.field final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/sleepycat/b/i/h/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/i/h/af",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/i/c/b/h;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i/c/b/h;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field g:Ljava/lang/RuntimeException;

.field public final h:Lcom/sleepycat/b/p/ai;

.field final i:Lcom/sleepycat/b/i/h/n;

.field final j:Lcom/sleepycat/b/p/an;

.field private final l:Ljava/util/logging/Logger;

.field private final m:Lcom/sleepycat/b/p/o;

.field private final n:Lcom/sleepycat/b/p/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/sleepycat/b/i/c/b/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/m;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->b:Ljava/util/concurrent/BlockingQueue;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    .line 96
    iput v1, p0, Lcom/sleepycat/b/i/c/b/m;->e:I

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/sleepycat/b/i/h/af;

    .line 2520
    iget-object v2, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 132
    invoke-direct {v1, v2, v0}, Lcom/sleepycat/b/i/h/af;-><init>(Lcom/sleepycat/b/c/ad;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    .line 135
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "FeederManager"

    const-string v2, "A feeder is a replication stream connection between a master and replica nodes."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->h:Lcom/sleepycat/b/p/ai;

    .line 137
    new-instance v0, Lcom/sleepycat/b/i/h/m;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->h:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/c/b/n;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/h/m;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->m:Lcom/sleepycat/b/p/o;

    .line 138
    new-instance v0, Lcom/sleepycat/b/i/h/m;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->h:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/c/b/n;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/h/m;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->n:Lcom/sleepycat/b/p/o;

    .line 139
    new-instance v0, Lcom/sleepycat/b/i/h/n;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->h:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/c/b/n;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/h/n;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->i:Lcom/sleepycat/b/i/h/n;

    .line 140
    new-instance v0, Lcom/sleepycat/b/p/an;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->h:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/c/b/n;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/an;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->j:Lcom/sleepycat/b/p/an;

    .line 141
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 477
    if-nez v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 484
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/h/af;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 486
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 488
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 489
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 490
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 492
    :try_start_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/b/h;

    .line 493
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->n:Lcom/sleepycat/b/p/o;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/o;->f()V

    .line 494
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 497
    :catchall_0
    move-exception v0

    if-nez p1, :cond_1

    .line 498
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "FeederManager shutdown"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/i/h/af;->a(Ljava/lang/Exception;)V

    .line 502
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 497
    throw v0

    .line 486
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 490
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 497
    :cond_2
    if-nez p1, :cond_3

    .line 498
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FeederManager shutdown"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 501
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/h/af;->a(Ljava/lang/Exception;)V

    .line 502
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/au;)I
    .locals 4

    .prologue
    .line 561
    const/4 v1, 0x0

    .line 562
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    monitor-enter v2

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/af;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/b/h;

    .line 16275
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    .line 564
    invoke-virtual {p1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 565
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 567
    goto :goto_0

    .line 568
    :cond_0
    monitor-exit v2

    return v1

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 6

    .prologue
    .line 158
    new-instance v1, Lcom/sleepycat/b/p/ai;

    const-string v0, "BinaryProtocol"

    const-string v2, "Network traffic due to the replication stream."

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/af;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/b/h;

    .line 3230
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/h;->c:Lcom/sleepycat/b/i/c/b/l;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    .line 3232
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    .line 163
    :goto_1
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3232
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v4, "BinaryProtocol"

    const-string v5, "Network traffic due to the replication stream."

    invoke-direct {v0, v4, v5}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    return-object v1
.end method

.method public final a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    monitor-enter v1

    .line 256
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/h/af;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b()V
    .locals 10

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "Feeder manager was shutdown"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 359
    :cond_0
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 3520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 360
    const-string v3, "Feeder manager accepting requests."

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 365
    new-instance v3, Lcom/sleepycat/b/i/c/b/r;

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 4454
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 365
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-direct {v3, v0, v1}, Lcom/sleepycat/b/i/c/b/r;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/b/aa;)V

    .line 367
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 5015
    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/aa;->p:Lcom/sleepycat/b/i/c/b/q;

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 5358
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 370
    const-string v1, "Feeder"

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/m;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0, v1, v5}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 377
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 5376
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 377
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/t;->countDown()V

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->b:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x3e8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 384
    sget-object v1, Lcom/sleepycat/b/i/h/q;->a:Ljava/nio/channels/SocketChannel;

    if-ne v0, v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 5520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 385
    const-string v3, "Feeder manager soft shutdown."

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/lang/Exception;)V

    .line 461
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15358
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 461
    const-string v1, "Feeder"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v2}, Lcom/sleepycat/b/i/c/b/m;->a(Ljava/lang/Exception;)V

    .line 463
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Feeder manager exited. CurrentTxnEnd VLSN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 466
    return-void

    .line 390
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 6462
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 390
    invoke-virtual {v1}, Lcom/sleepycat/b/i/e/n;->e()V

    .line 391
    if-nez v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 6520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 394
    const-string v3, "Feeder manager forced shutdown."

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/lang/Exception;)V

    .line 461
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15358
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 461
    const-string v1, "Feeder"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v2}, Lcom/sleepycat/b/i/c/b/m;->a(Ljava/lang/Exception;)V

    .line 463
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Feeder manager exited. CurrentTxnEnd VLSN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8162
    :cond_2
    :try_start_2
    iget-object v0, v4, Lcom/sleepycat/b/i/c/b/q;->b:Lcom/sleepycat/b/p/au;

    .line 7163
    const-string v1, "master"

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/i/c/b/r;->a(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 10520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Master change: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/sleepycat/b/i/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Node "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 11520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 12338
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->af:Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a master anymore"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/af;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/lang/Exception;)V

    .line 461
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15358
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 461
    const-string v2, "Feeder"

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/c/b/m;->a(Ljava/lang/Exception;)V

    .line 463
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Feeder manager exited. CurrentTxnEnd VLSN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 410
    :cond_3
    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->m:Lcom/sleepycat/b/p/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/o;->f()V
    :try_end_4
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 412
    :try_start_5
    new-instance v1, Lcom/sleepycat/b/i/c/b/h;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/i/c/b/h;-><init>(Lcom/sleepycat/b/i/c/b/m;Ljava/nio/channels/SocketChannel;)V

    .line 413
    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8207
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/h;->b:Lcom/sleepycat/b/i/c/b/k;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/k;->start()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 415
    :catch_1
    move-exception v1

    .line 420
    :try_start_6
    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 8520
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Feeder I/O exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 424
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 426
    :catch_2
    move-exception v0

    :try_start_8
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 9520
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception during cleanup."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 440
    :catch_3
    move-exception v0

    .line 441
    :try_start_9
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->g:Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    .line 447
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 12520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 447
    const-string v3, "Feeder manager unexpected interrupt"

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->g:Ljava/lang/RuntimeException;

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 460
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v2, v1}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/lang/Exception;)V

    .line 461
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15358
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 461
    const-string v3, "Feeder"

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/c/b/m;->a(Ljava/lang/Exception;)V

    .line 463
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Feeder manager exited. CurrentTxnEnd VLSN: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 460
    throw v0

    .line 451
    :cond_4
    :try_start_a
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 13119
    iget-object v1, v1, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 451
    if-eqz v1, :cond_5

    .line 452
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 13520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 452
    const-string v3, "Feeder manager interrupted for shutdown"

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 460
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/lang/Exception;)V

    .line 461
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15358
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 461
    const-string v1, "Feeder"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v2}, Lcom/sleepycat/b/i/c/b/m;->a(Ljava/lang/Exception;)V

    .line 463
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Feeder manager exited. CurrentTxnEnd VLSN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 457
    :cond_5
    :try_start_b
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 14520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 457
    const-string v3, "Feeder manager unexpected interrupt"

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 460
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/lang/Exception;)V

    .line 461
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15358
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 461
    const-string v2, "Feeder"

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/c/b/m;->a(Ljava/lang/Exception;)V

    .line 463
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->l:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Feeder manager exited. CurrentTxnEnd VLSN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 460
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_2
.end method

.method public final c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    monitor-enter v3

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/af;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 542
    const-string v0, "No feeders."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 544
    :cond_1
    :try_start_1
    const-string v1, "Current feeds:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 546
    const-string v1, "\n "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/b/h;

    .line 16045
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "feederVLSN="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/h;->d:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " replicaTxnEndVLSN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/h;->e:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
