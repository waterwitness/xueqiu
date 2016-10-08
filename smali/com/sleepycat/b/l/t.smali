.class public final Lcom/sleepycat/b/l/t;
.super Lcom/sleepycat/b/l/r;
.source "INTargetRep.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/sleepycat/b/l/r;-><init>()V

    .line 285
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/sleepycat/b/l/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6281
    sget-object v0, Lcom/sleepycat/b/l/v;->c:Lcom/sleepycat/b/l/v;

    .line 277
    return-object v0
.end method

.method public final bridge synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic a(IIILcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 277
    return-object p0
.end method

.method public final synthetic a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 277
    check-cast p2, Lcom/sleepycat/b/l/ac;

    .line 5298
    new-instance v0, Lcom/sleepycat/b/l/u;

    .line 5372
    iget-object v1, p3, Lcom/sleepycat/b/l/j;->h:[B

    .line 5298
    invoke-direct {v0}, Lcom/sleepycat/b/l/u;-><init>()V

    .line 5299
    invoke-virtual {p0, v0, p3}, Lcom/sleepycat/b/l/t;->a(Lcom/sleepycat/b/l/k;Lcom/sleepycat/b/l/j;)V

    .line 5300
    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/l/r;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/r;

    .line 277
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 277
    return-object p0
.end method

.method public final a(ZLcom/sleepycat/b/d/b;)V
    .locals 1

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 2068
    iget-object v0, p2, Lcom/sleepycat/b/d/b;->n:Ljava/util/concurrent/atomic/AtomicLong;

    .line 326
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 330
    :goto_0
    return-void

    .line 3068
    :cond_0
    iget-object v0, p2, Lcom/sleepycat/b/d/b;->n:Ljava/util/concurrent/atomic/AtomicLong;

    .line 328
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 315
    const-wide/16 v0, 0x0

    return-wide v0
.end method
