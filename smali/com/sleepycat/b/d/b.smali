.class public abstract Lcom/sleepycat/b/d/b;
.super Ljava/lang/Object;
.source "Evictor.java"

# interfaces
.implements Lcom/sleepycat/b/c/ab;


# static fields
.field static final synthetic t:Z


# instance fields
.field private final A:Lcom/sleepycat/b/p/z;

.field private final B:Lcom/sleepycat/b/p/z;

.field private final C:Lcom/sleepycat/b/p/d;

.field private final D:[Lcom/sleepycat/b/p/d;

.field private final E:Lcom/sleepycat/b/d/f;

.field private final F:Ljava/util/logging/Logger;

.field final a:Lcom/sleepycat/b/c/ad;

.field public final b:Lcom/sleepycat/b/d/n;

.field public final c:Lcom/sleepycat/b/d/a;

.field public final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field e:I

.field public final f:Lcom/sleepycat/b/p/ai;

.field public final g:Lcom/sleepycat/b/p/d;

.field public final h:Lcom/sleepycat/b/p/d;

.field public final i:Lcom/sleepycat/b/p/d;

.field public final j:Lcom/sleepycat/b/p/d;

.field public final k:Lcom/sleepycat/b/p/d;

.field public final l:Lcom/sleepycat/b/p/d;

.field public final m:Ljava/util/concurrent/atomic/AtomicLong;

.field public final n:Ljava/util/concurrent/atomic/AtomicLong;

.field public final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public final p:[Lcom/sleepycat/b/p/d;

.field public final q:[Lcom/sleepycat/b/p/d;

.field public final r:[Ljava/util/concurrent/atomic/AtomicLong;

.field public final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private u:I

.field private v:Z

.field private final w:Z

.field private final x:Lcom/sleepycat/b/p/z;

.field private final y:Lcom/sleepycat/b/p/z;

.field private final z:Lcom/sleepycat/b/p/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const-class v0, Lcom/sleepycat/b/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/d/b;->t:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/sleepycat/b/d/b;->a:Lcom/sleepycat/b/c/ad;

    .line 255
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Cache"

    const-string v2, "Current size, allocations, and eviction activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    .line 256
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->x:Lcom/sleepycat/b/p/z;

    .line 257
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->y:Lcom/sleepycat/b/p/z;

    .line 258
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->z:Lcom/sleepycat/b/p/z;

    .line 259
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->A:Lcom/sleepycat/b/p/z;

    .line 260
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->B:Lcom/sleepycat/b/p/z;

    .line 262
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->i:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->g:Lcom/sleepycat/b/p/d;

    .line 263
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->k:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->h:Lcom/sleepycat/b/p/d;

    .line 264
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->j:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->i:Lcom/sleepycat/b/p/d;

    .line 265
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->l:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->j:Lcom/sleepycat/b/p/d;

    .line 266
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->n:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->k:Lcom/sleepycat/b/p/d;

    .line 267
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->m:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->l:Lcom/sleepycat/b/p/d;

    .line 268
    new-instance v0, Lcom/sleepycat/b/p/d;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->q:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->C:Lcom/sleepycat/b/p/d;

    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    .line 271
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->n:Ljava/util/concurrent/atomic/AtomicLong;

    .line 272
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 274
    const-class v0, Lcom/sleepycat/b/d/e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v1

    .line 278
    new-array v2, v1, [Lcom/sleepycat/b/p/d;

    iput-object v2, p0, Lcom/sleepycat/b/d/b;->p:[Lcom/sleepycat/b/p/d;

    .line 279
    new-array v2, v1, [Lcom/sleepycat/b/p/d;

    iput-object v2, p0, Lcom/sleepycat/b/d/b;->q:[Lcom/sleepycat/b/p/d;

    .line 280
    new-array v2, v1, [Lcom/sleepycat/b/p/d;

    iput-object v2, p0, Lcom/sleepycat/b/d/b;->D:[Lcom/sleepycat/b/p/d;

    .line 281
    new-array v1, v1, [Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v1, p0, Lcom/sleepycat/b/d/b;->r:[Ljava/util/concurrent/atomic/AtomicLong;

    .line 283
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/e;

    .line 284
    invoke-virtual {v0}, Lcom/sleepycat/b/d/e;->ordinal()I

    move-result v2

    .line 285
    iget-object v3, p0, Lcom/sleepycat/b/d/b;->p:[Lcom/sleepycat/b/p/d;

    new-instance v4, Lcom/sleepycat/b/p/d;

    iget-object v5, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/e;->a()Lcom/sleepycat/b/p/ag;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    aput-object v4, v3, v2

    .line 287
    iget-object v3, p0, Lcom/sleepycat/b/d/b;->q:[Lcom/sleepycat/b/p/d;

    new-instance v4, Lcom/sleepycat/b/p/d;

    iget-object v5, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/e;->b()Lcom/sleepycat/b/p/ag;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    aput-object v4, v3, v2

    .line 289
    iget-object v3, p0, Lcom/sleepycat/b/d/b;->r:[Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    aput-object v4, v3, v2

    .line 290
    iget-object v3, p0, Lcom/sleepycat/b/d/b;->D:[Lcom/sleepycat/b/p/d;

    new-instance v4, Lcom/sleepycat/b/p/d;

    iget-object v5, p0, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/e;->c()Lcom/sleepycat/b/p/ag;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/sleepycat/b/p/d;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    aput-object v4, v3, v2

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/d/b;->a()Lcom/sleepycat/b/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->b:Lcom/sleepycat/b/d/n;

    .line 295
    new-instance v0, Lcom/sleepycat/b/d/a;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/d/a;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->F:Ljava/util/logging/Logger;

    .line 298
    new-instance v0, Lcom/sleepycat/b/d/f;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->F:Ljava/util/logging/Logger;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/d/f;-><init>(Lcom/sleepycat/b/c/ad;Ljava/util/logging/Logger;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->E:Lcom/sleepycat/b/d/f;

    .line 299
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/d/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 303
    sget-object v1, Lcom/sleepycat/b/b/d;->n:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v2

    .line 305
    sget-object v1, Lcom/sleepycat/b/b/d;->o:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v3

    .line 307
    sget-object v1, Lcom/sleepycat/b/b/d;->p:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v1

    int-to-long v4, v1

    .line 309
    sget-object v1, Lcom/sleepycat/b/b/d;->q:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/d/b;->u:I

    .line 311
    sget-object v1, Lcom/sleepycat/b/b/d;->bf:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/d/b;->e:I

    .line 314
    new-instance v9, Lcom/sleepycat/b/d/g;

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->C:Lcom/sleepycat/b/p/d;

    invoke-direct {v9, v1}, Lcom/sleepycat/b/d/g;-><init>(Lcom/sleepycat/b/p/d;)V

    .line 317
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/sleepycat/b/p/al;

    const-string v10, "JEEvictor"

    iget-object v11, p0, Lcom/sleepycat/b/d/b;->F:Ljava/util/logging/Logger;

    invoke-direct {v8, p1, v10, v11}, Lcom/sleepycat/b/p/al;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/util/logging/Logger;)V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/sleepycat/b/d/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 328
    sget-object v1, Lcom/sleepycat/b/b/d;->k:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/b/d/b;->v:Z

    .line 331
    sget-object v1, Lcom/sleepycat/b/b/d;->r:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/d/b;->w:Z

    .line 339
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 340
    return-void
.end method

.method private a(Lcom/sleepycat/b/d/e;ZJ)J
    .locals 13

    .prologue
    .line 580
    const/4 v6, 0x0

    .line 581
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->x:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 593
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->b:Lcom/sleepycat/b/d/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/n;->a()Lcom/sleepycat/b/d/p;

    move-result-object v2

    .line 595
    iget-wide v0, v2, Lcom/sleepycat/b/d/p;->a:J

    .line 596
    iget v7, v2, Lcom/sleepycat/b/d/p;->b:I

    .line 597
    if-nez v7, :cond_0

    .line 685
    :goto_0
    return-wide v0

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/d/b;->d()Lcom/sleepycat/b/d/d;

    move-result-object v10

    move-wide v8, v0

    move v0, v6

    .line 615
    :goto_1
    cmp-long v1, v8, p3

    if-gez v1, :cond_8

    if-gt v0, v7, :cond_8

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    .line 5102
    iget-object v2, v1, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ar;->a()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/sleepycat/b/d/a;->c:J

    add-long/2addr v2, v4

    iget-object v1, v1, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    .line 5321
    iget-wide v4, v1, Lcom/sleepycat/b/c/ar;->a:J

    .line 5102
    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v1, 0x1

    .line 615
    :goto_2
    if-eqz v1, :cond_8

    .line 618
    iget-object v1, p0, Lcom/sleepycat/b/d/b;->b:Lcom/sleepycat/b/d/n;

    invoke-virtual {v1, v7}, Lcom/sleepycat/b/d/n;->b(I)Lcom/sleepycat/b/d/o;

    move-result-object v1

    .line 619
    iget-object v2, v1, Lcom/sleepycat/b/d/o;->a:Lcom/sleepycat/b/l/j;

    .line 620
    iget v1, v1, Lcom/sleepycat/b/d/o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int v6, v0, v1

    .line 622
    if-eqz v2, :cond_7

    .line 626
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->r:[Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/sleepycat/b/d/e;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 5717
    iget-object v0, v2, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 6133
    iget-object v1, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 6496
    iget-object v3, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 640
    invoke-interface {v10, v1, v3}, Lcom/sleepycat/b/d/d;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v1

    .line 643
    if-eqz v1, :cond_4

    if-ne v1, v0, :cond_4

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v3

    if-nez v3, :cond_4

    .line 646
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7717
    iget-object v11, v2, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 8133
    iget-object v3, v11, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 8492
    iget-object v5, v3, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 6768
    new-instance v0, Lcom/sleepycat/b/d/b$a;

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/d/b$a;-><init>(Lcom/sleepycat/b/d/b;Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/c/ad;ZLcom/sleepycat/b/c/al;)V

    .line 9485
    iget-object v1, v11, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 6769
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;

    .line 6772
    iget-boolean v1, v0, Lcom/sleepycat/b/d/b$a;->a:Z

    if-eqz v1, :cond_1

    .line 10379
    iget-object v1, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 6773
    invoke-virtual {v1, v11}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/i;)V

    .line 6776
    :cond_1
    iget-wide v0, v0, Lcom/sleepycat/b/d/b$a;->b:J

    .line 647
    add-long/2addr v8, v0

    move v0, v6

    goto :goto_1

    .line 5102
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 649
    :cond_3
    invoke-direct {p0, v2, p2, p1}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/d/e;)J

    move-result-wide v0

    add-long/2addr v8, v0

    move v0, v6

    goto :goto_1

    .line 663
    :cond_4
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11147
    iget-boolean v0, v2, Lcom/sleepycat/b/l/j;->l:Z

    .line 663
    if-eqz v0, :cond_6

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " IN type="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->y()Lcom/sleepycat/b/g/af;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11342
    iget-wide v2, v2, Lcom/sleepycat/b/l/j;->c:J

    .line 665
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not expected on INList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    if-nez v1, :cond_5

    .line 675
    :goto_3
    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    :catchall_0
    move-exception v0

    :goto_4
    iget-object v1, p0, Lcom/sleepycat/b/d/b;->y:Lcom/sleepycat/b/p/z;

    int-to-long v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 682
    invoke-interface {v10}, Lcom/sleepycat/b/d/d;->a()V

    throw v0

    .line 668
    :cond_5
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Database "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11496
    iget-object v3, v1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 668
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rootLsn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12485
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 668
    invoke-virtual {v1}, Lcom/sleepycat/b/l/ah;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_3

    :cond_6
    move v0, v6

    .line 679
    goto/16 :goto_1

    :cond_7
    move v0, v6

    .line 681
    :cond_8
    iget-object v1, p0, Lcom/sleepycat/b/d/b;->y:Lcom/sleepycat/b/p/z;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 682
    invoke-interface {v10}, Lcom/sleepycat/b/d/d;->a()V

    move-wide v0, v8

    .line 685
    goto/16 :goto_0

    .line 681
    :catchall_1
    move-exception v1

    move v6, v0

    move-object v0, v1

    goto :goto_4
.end method

.method private a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;IZLcom/sleepycat/b/d/e;)J
    .locals 10

    .prologue
    .line 920
    const-wide/16 v8, 0x0

    .line 922
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/d/b;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->F()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1025
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->C()V

    throw v0

    .line 13578
    :cond_0
    :try_start_1
    iget-wide v2, p1, Lcom/sleepycat/b/l/j;->e:J

    .line 931
    invoke-virtual {p2, p3}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    if-nez v0, :cond_1

    .line 1025
    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->C()V

    const-wide/16 v0, 0x0

    .line 1028
    :goto_0
    return-wide v0

    .line 937
    :cond_1
    :try_start_2
    sget-object v1, Lcom/sleepycat/b/d/e;->d:Lcom/sleepycat/b/d/e;

    if-ne p5, v1, :cond_2

    const/4 v1, 0x1

    .line 938
    :goto_1
    if-nez v1, :cond_3

    .line 14578
    iget-wide v4, v0, Lcom/sleepycat/b/l/j;->e:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 938
    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 1025
    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->C()V

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 937
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 946
    :cond_3
    if-eqz v1, :cond_5

    .line 947
    :try_start_3
    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 954
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->Q()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    if-nez v1, :cond_6

    .line 1022
    :try_start_5
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1025
    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->C()V

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 949
    :cond_5
    :try_start_6
    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->c(Lcom/sleepycat/b/a;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 1025
    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->C()V

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 14717
    :cond_6
    :try_start_7
    iget-object v1, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 15133
    iget-object v7, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 966
    const-wide/16 v2, -0x1

    .line 967
    const/4 v1, 0x0

    .line 968
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 15330
    iget-boolean v4, v7, Lcom/sleepycat/b/c/ad;->g:Z

    .line 969
    if-nez v4, :cond_a

    .line 970
    invoke-static {v0, p2}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;)Z

    move-result v4

    .line 15371
    iget-object v1, v7, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 978
    iget-boolean v2, p0, Lcom/sleepycat/b/d/b;->w:Z

    const/4 v3, 0x1

    move v5, p4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;ZZZZLcom/sleepycat/b/l/j;)J

    move-result-wide v2

    .line 985
    const/4 v1, 0x1

    move-wide v4, v2

    .line 991
    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_9

    .line 15492
    iget-object v2, v7, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 993
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/al;->b(Lcom/sleepycat/b/l/j;)V

    .line 995
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->L()J

    move-result-wide v2

    .line 996
    if-eqz v1, :cond_8

    .line 1002
    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, v4, v5}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;J)V

    .line 1018
    :goto_3
    iget-object v1, p0, Lcom/sleepycat/b/d/b;->z:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->f()V

    .line 1019
    invoke-virtual {v0, p5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/d/e;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1022
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1025
    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->C()V

    move-wide v0, v2

    .line 1028
    goto :goto_0

    .line 988
    :cond_7
    :try_start_9
    invoke-virtual {p2, p3}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v2

    move-wide v4, v2

    goto :goto_2

    .line 1012
    :cond_8
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2, p3, v1, v4}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;[B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 1022
    :catchall_1
    move-exception v1

    :try_start_a
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_9
    move-wide v2, v8

    goto :goto_4

    :cond_a
    move-wide v4, v2

    goto :goto_2
.end method

.method private a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/d/e;)J
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    .line 798
    .line 12717
    iget-object v9, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 13133
    iget-object v2, v9, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 831
    sget-object v2, Lcom/sleepycat/b/d/e;->d:Lcom/sleepycat/b/d/e;

    if-ne p3, v2, :cond_2

    move v7, v6

    .line 832
    :goto_0
    if-eqz v7, :cond_3

    .line 833
    sget-object v2, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {p1, v2}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 13147
    :cond_0
    :try_start_0
    iget-boolean v2, p1, Lcom/sleepycat/b/l/j;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    if-nez v2, :cond_4

    .line 905
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->C()V

    move-wide v2, v4

    :cond_1
    :goto_1
    return-wide v2

    :cond_2
    move v7, v8

    .line 831
    goto :goto_0

    .line 835
    :cond_3
    sget-object v2, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {p1, v2}, Lcom/sleepycat/b/l/j;->c(Lcom/sleepycat/b/a;)Z

    move-result v2

    if-nez v2, :cond_0

    move-wide v2, v4

    .line 836
    goto :goto_1

    .line 852
    :cond_4
    :try_start_1
    instance-of v2, p1, Lcom/sleepycat/b/l/a;

    if-eqz v2, :cond_9

    .line 859
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/b/l/a;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->s()J

    move-result-wide v2

    .line 860
    cmp-long v10, v2, v4

    if-lez v10, :cond_5

    .line 861
    iget-object v10, p0, Lcom/sleepycat/b/d/b;->B:Lcom/sleepycat/b/p/z;

    invoke-virtual {v10}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    :cond_5
    :goto_2
    if-nez v7, :cond_6

    cmp-long v4, v2, v4

    if-eqz v4, :cond_6

    .line 905
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_1

    .line 877
    :cond_6
    :try_start_2
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->Q()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_7

    .line 905
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_1

    .line 13485
    :cond_7
    :try_start_3
    iget-object v4, v9, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 894
    :try_start_4
    sget-object v5, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v4, p1, v5}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/ae;

    move-result-object v5

    .line 897
    iget-boolean v4, v5, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v4, :cond_1

    .line 898
    iget-object v4, v5, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v5, v5, Lcom/sleepycat/b/l/ae;->e:I

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;IZLcom/sleepycat/b/d/e;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v2

    goto :goto_1

    .line 904
    :catchall_0
    move-exception v2

    move v3, v6

    :goto_3
    if-eqz v3, :cond_8

    .line 905
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->C()V

    :cond_8
    throw v2

    .line 904
    :catchall_1
    move-exception v2

    move v3, v8

    goto :goto_3

    :cond_9
    move-wide v2, v4

    goto :goto_2
.end method

.method static synthetic a(Lcom/sleepycat/b/d/b;)Lcom/sleepycat/b/p/z;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->A:Lcom/sleepycat/b/p/z;

    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/l/j;)Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;)Z
    .locals 1

    .prologue
    .line 1084
    .line 15717
    iget-object v0, p0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 16133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 16500
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 1091
    if-nez v0, :cond_0

    .line 1092
    const/4 v0, 0x0

    .line 1094
    :goto_0
    return v0

    .line 17415
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/b/h/h;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method abstract a()Lcom/sleepycat/b/d/n;
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->b:Lcom/sleepycat/b/d/n;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/d/n;->a(I)V

    .line 1120
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->b:Lcom/sleepycat/b/d/n;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/d/n;->a(Lcom/sleepycat/b/c/ad;)V

    .line 1099
    return-void
.end method

.method public final a(Lcom/sleepycat/b/d/e;Z)V
    .locals 20

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/d/b;->E:Lcom/sleepycat/b/d/f;

    invoke-virtual {v4}, Lcom/sleepycat/b/d/f;->a()Z

    move-result v4

    if-nez v4, :cond_0

    .line 561
    :goto_0
    return-void

    .line 528
    :cond_0
    const/4 v7, 0x1

    .line 529
    const/4 v6, 0x0

    .line 530
    const-wide/16 v4, 0x0

    .line 531
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/d/b;->D:[Lcom/sleepycat/b/p/d;

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/d/e;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/sleepycat/b/p/d;->g()V

    move-wide v10, v4

    move v12, v6

    move v5, v7

    .line 532
    :goto_1
    if-eqz v5, :cond_4

    const/16 v4, 0x64

    if-ge v12, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/d/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    .line 536
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    .line 4149
    iget-object v4, v13, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v4}, Lcom/sleepycat/b/c/ar;->a()J

    move-result-wide v14

    .line 4150
    iget-object v4, v13, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    .line 4321
    iget-wide v6, v4, Lcom/sleepycat/b/c/ar;->a:J

    .line 4152
    sub-long v16, v14, v6

    .line 4153
    const-wide/16 v8, 0x0

    cmp-long v4, v16, v8

    if-lez v4, :cond_2

    const/4 v4, 0x1

    .line 4155
    :goto_2
    const-wide/16 v8, 0x0

    .line 4158
    if-eqz v4, :cond_1

    .line 4159
    iget-wide v8, v13, Lcom/sleepycat/b/d/a;->c:J

    add-long v8, v8, v16

    .line 4161
    sub-long/2addr v14, v8

    const-wide/16 v18, 0x2

    div-long v18, v6, v18

    cmp-long v4, v14, v18

    if-gez v4, :cond_1

    .line 4162
    const-wide/16 v8, 0x2

    div-long v8, v6, v8

    add-long v8, v8, v16

    .line 4167
    :cond_1
    iget-object v4, v13, Lcom/sleepycat/b/d/a;->b:Lcom/sleepycat/b/p/ao;

    if-eqz v4, :cond_7

    .line 4168
    iget-object v4, v13, Lcom/sleepycat/b/d/a;->b:Lcom/sleepycat/b/p/ao;

    invoke-interface {v4}, Lcom/sleepycat/b/p/ao;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 4169
    if-eqz v4, :cond_3

    .line 539
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_4

    .line 543
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/d/e;ZJ)J

    move-result-wide v6

    .line 544
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_6

    .line 545
    const/4 v4, 0x0

    .line 548
    :goto_4
    add-int/lit8 v5, v12, 0x1

    move-wide v10, v6

    move v12, v5

    move v5, v4

    .line 549
    goto :goto_1

    .line 4153
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 4172
    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 552
    :cond_4
    sget-object v4, Lcom/sleepycat/b/d/e;->a:Lcom/sleepycat/b/d/e;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/d/b;->F:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/d/b;->F:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/d/b;->a:Lcom/sleepycat/b/c/ad;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Thread evicted "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " batches"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/d/b;->E:Lcom/sleepycat/b/d/f;

    invoke-virtual {v4}, Lcom/sleepycat/b/d/f;->b()V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/d/b;->E:Lcom/sleepycat/b/d/f;

    invoke-virtual {v5}, Lcom/sleepycat/b/d/f;->b()V

    throw v4

    :cond_6
    move v4, v5

    goto :goto_4

    :cond_7
    move-wide v6, v8

    goto :goto_3
.end method

.method public final a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/d/e;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->E:Lcom/sleepycat/b/d/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/d/e;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->E:Lcom/sleepycat/b/d/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/f;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/d/b;->E:Lcom/sleepycat/b/d/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/d/f;->b()V

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/sleepycat/b/d/b;->v:Z

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/sleepycat/b/d/c;

    invoke-direct {v1, p0}, Lcom/sleepycat/b/d/c;-><init>(Lcom/sleepycat/b/d/b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->b:Lcom/sleepycat/b/d/n;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/d/n;->b(Lcom/sleepycat/b/c/ad;)V

    .line 1103
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1163
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    iget v1, p0, Lcom/sleepycat/b/d/b;->u:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1179
    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/sleepycat/b/d/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 1179
    :catchall_0
    move-exception v0

    .line 1180
    iget-object v1, p0, Lcom/sleepycat/b/d/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    throw v0
.end method

.method public final c(Lcom/sleepycat/b/c/ad;)Z
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/sleepycat/b/d/b;->b:Lcom/sleepycat/b/d/n;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/d/n;->c(Lcom/sleepycat/b/c/ad;)Z

    move-result v0

    return v0
.end method

.method abstract d()Lcom/sleepycat/b/d/d;
.end method
