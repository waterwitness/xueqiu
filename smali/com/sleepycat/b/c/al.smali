.class public Lcom/sleepycat/b/c/al;
.super Ljava/lang/Object;
.source "INList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sleepycat/b/l/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic j:Z


# instance fields
.field public a:Lcom/sleepycat/b/c/ad;

.field final b:Z

.field public volatile c:Z

.field public volatile d:Z

.field public e:Z

.field public f:Ljava/util/concurrent/atomic/AtomicLong;

.field g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/sleepycat/b/l/j;",
            "Lcom/sleepycat/b/l/j;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/concurrent/atomic/AtomicLong;

.field i:Ljava/util/concurrent/atomic/AtomicLong;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sleepycat/b/c/al;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/al;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/al;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 3074
    iput-object p1, p0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 3075
    iput-boolean v1, p0, Lcom/sleepycat/b/c/al;->c:Z

    .line 3076
    iput-boolean v1, p0, Lcom/sleepycat/b/c/al;->d:Z

    .line 3077
    iput-boolean v2, p0, Lcom/sleepycat/b/c/al;->e:Z

    .line 3078
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/al;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3080
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/al;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3081
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/al;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/al;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    iput-boolean v2, p0, Lcom/sleepycat/b/c/al;->b:Z

    .line 60
    iput-boolean v1, p0, Lcom/sleepycat/b/c/al;->k:Z

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/c/al;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->g:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/l/j;)Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/al;->c(Lcom/sleepycat/b/l/j;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/sleepycat/b/l/j;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 210
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 9692
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 216
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/d/b;->a(I)V

    .line 218
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 219
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/p/ai;
    .locals 7

    .prologue
    .line 88
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Cache"

    const-string v2, "Current size, allocations, and eviction activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/sleepycat/b/c/al;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 92
    iget-object v1, p0, Lcom/sleepycat/b/c/al;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 93
    new-instance v1, Lcom/sleepycat/b/p/z;

    sget-object v6, Lcom/sleepycat/b/d/h;->o:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v0, v6, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 95
    new-instance v1, Lcom/sleepycat/b/p/z;

    sget-object v4, Lcom/sleepycat/b/d/h;->p:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 100
    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/l/j;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/sleepycat/b/c/al;->k:Z

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 3692
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 148
    invoke-virtual {v0, v3}, Lcom/sleepycat/b/d/b;->a(I)V

    .line 151
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 163
    if-eqz v0, :cond_3

    .line 164
    iget-object v1, p0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed adding new IN node="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4342
    iget-wide v4, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 164
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dbIdentity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4717
    iget-object v3, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 164
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " db="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5717
    iget-object v3, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 164
    invoke-virtual {v3, v6}, Lcom/sleepycat/b/c/i;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nExisting IN node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6342
    iget-wide v4, v0, Lcom/sleepycat/b/l/j;->c:J

    .line 164
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dbIdentity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6717
    iget-object v3, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 164
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " db="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7717
    iget-object v0, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 164
    invoke-virtual {v0, v6}, Lcom/sleepycat/b/c/i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_1

    .line 175
    :cond_3
    iget-boolean v0, p0, Lcom/sleepycat/b/c/al;->b:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->L()J

    move-result-wide v0

    .line 8430
    iget-boolean v2, p0, Lcom/sleepycat/b/c/al;->c:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sleepycat/b/c/al;->e:Z

    if-eqz v2, :cond_4

    .line 8432
    iget-object v2, p0, Lcom/sleepycat/b/c/al;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 8434
    :cond_4
    iget-boolean v2, p0, Lcom/sleepycat/b/c/al;->d:Z

    invoke-virtual {p1, v2}, Lcom/sleepycat/b/l/j;->b(Z)V

    .line 178
    iget-object v2, p0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 8508
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 178
    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/c/ao;->c(J)V

    .line 179
    invoke-virtual {p1, v3}, Lcom/sleepycat/b/l/j;->d(Z)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/sleepycat/b/l/j;J)V
    .locals 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/sleepycat/b/c/al;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/c/al;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/c/al;->d:Z

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->H()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 457
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sleepycat/b/c/al;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/sleepycat/b/l/j;)V
    .locals 4

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sleepycat/b/c/al;->k:Z

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/al;->c(Lcom/sleepycat/b/l/j;)Z

    move-result v0

    .line 192
    sget-boolean v1, Lcom/sleepycat/b/c/al;->j:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_2
    iget-boolean v0, p0, Lcom/sleepycat/b/c/al;->b:Z

    if-eqz v0, :cond_0

    .line 195
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->L()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 9443
    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/l/j;J)V

    .line 197
    iget-object v2, p0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 9508
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 197
    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/c/ao;->c(J)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/l/j;->d(Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/sleepycat/b/c/al;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/al;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/c/al;->j:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/b/c/al;->k:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/c/al;->k:Z

    .line 137
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sleepycat/b/l/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/sleepycat/b/c/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/c/am;-><init>(Lcom/sleepycat/b/c/al;B)V

    return-object v0
.end method
