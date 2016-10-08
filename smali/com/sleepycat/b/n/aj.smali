.class public Lcom/sleepycat/b/n/aj;
.super Ljava/lang/Object;
.source "TxnManager.java"


# static fields
.field public static final synthetic m:Z


# instance fields
.field public a:Lcom/sleepycat/b/n/l;

.field public final b:Lcom/sleepycat/b/c/ad;

.field final c:Lcom/sleepycat/b/f/f;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/n/z;",
            "Lcom/sleepycat/b/n/z;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/q/a;",
            "Lcom/sleepycat/b/n/z;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/sleepycat/b/bp;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field j:Lcom/sleepycat/b/p/z;

.field k:Lcom/sleepycat/b/p/z;

.field public l:Lcom/sleepycat/b/p/z;

.field private n:Lcom/sleepycat/b/p/ai;

.field private o:Lcom/sleepycat/b/p/o;

.field private p:Lcom/sleepycat/b/p/z;

.field private q:Lcom/sleepycat/b/p/z;

.field private r:Lcom/sleepycat/b/p/z;

.field private s:Lcom/sleepycat/b/p/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sleepycat/b/n/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/n/aj;->m:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 4

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/sleepycat/b/n/w;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/n/w;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    .line 3322
    iget-boolean v0, p1, Lcom/sleepycat/b/c/ad;->f:Z

    .line 95
    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/sleepycat/b/n/c;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/n/c;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/l;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/n/aj;->b:Lcom/sleepycat/b/c/ad;

    .line 100
    new-instance v0, Lcom/sleepycat/b/f/f;

    const-string v1, "TxnManager.allTxns"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/f/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->d:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->e:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->f:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0xa

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Transaction"

    const-string v2, "Transaction statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    .line 111
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/bl;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->o:Lcom/sleepycat/b/p/o;

    .line 112
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/bl;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->p:Lcom/sleepycat/b/p/z;

    .line 113
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/bl;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->j:Lcom/sleepycat/b/p/z;

    .line 114
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/bl;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->k:Lcom/sleepycat/b/p/z;

    .line 115
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/bl;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->l:Lcom/sleepycat/b/p/z;

    .line 116
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/bl;->g:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->q:Lcom/sleepycat/b/p/z;

    .line 117
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/bl;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->r:Lcom/sleepycat/b/p/z;

    .line 118
    new-instance v0, Lcom/sleepycat/b/p/a;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/bl;->h:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/a;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/n/aj;->s:Lcom/sleepycat/b/p/a;

    .line 119
    return-void
.end method

.method public static a(J)Z
    .locals 2

    .prologue
    .line 146
    const-wide/16 v0, -0xa

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 343
    .line 344
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->a()V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    .line 347
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/z;

    .line 4442
    iget-wide v0, v0, Lcom/sleepycat/b/n/z;->y:J

    .line 349
    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    move-wide v2, v0

    .line 350
    goto :goto_0

    .line 351
    :cond_0
    cmp-long v7, v0, v4

    if-eqz v7, :cond_2

    .line 352
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-gez v7, :cond_2

    :goto_1
    move-wide v2, v0

    .line 356
    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 361
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/bs;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 373
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->c()V

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->o:Lcom/sleepycat/b/p/o;

    iget-object v2, p0, Lcom/sleepycat/b/n/aj;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/o;->a(Ljava/lang/Integer;)V

    .line 376
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->o:Lcom/sleepycat/b/p/o;

    .line 5031
    iget v1, v1, Lcom/sleepycat/b/p/o;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v2, v1, [Lcom/sleepycat/b/bt;

    .line 378
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 380
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 381
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/q;

    .line 382
    new-instance v4, Lcom/sleepycat/b/bt;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5169
    iget-wide v6, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 382
    invoke-direct {v4, v5, v6, v7}, Lcom/sleepycat/b/bt;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v1

    .line 384
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 385
    goto :goto_0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->s:Lcom/sleepycat/b/p/a;

    .line 6039
    iput-object v2, v0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    .line 387
    new-instance v0, Lcom/sleepycat/b/bs;

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->n:Lcom/sleepycat/b/p/ai;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/bs;-><init>(Lcom/sleepycat/b/p/ai;)V

    .line 6103
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 388
    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->j:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->a()V

    .line 390
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->k:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->a()V

    .line 391
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->q:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->a()V

    .line 392
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->r:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    .line 398
    return-object v0

    .line 395
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/n/z;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->c()V

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    iget-boolean v0, p1, Lcom/sleepycat/b/n/z;->E:Z

    .line 199
    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 205
    return-void

    .line 204
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0
.end method

.method public final b()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 419
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->c()V

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/z;

    .line 423
    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->q_()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/aj;->c:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 430
    return-object v1
.end method
