.class public final Lcom/sleepycat/b/p/d;
.super Lcom/sleepycat/b/p/af;
.source "AtomicLongStat.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/p/af",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/af;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 25
    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 35
    return-void
.end method

.method private i()Lcom/sleepycat/b/p/d;
    .locals 4

    .prologue
    .line 78
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/d;

    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 57
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 47
    return-void
.end method

.method public final a(Lcom/sleepycat/b/p/af;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 52
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/p/d;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public final b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sleepycat/b/p/af",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sleepycat/b/p/d;->i()Lcom/sleepycat/b/p/d;

    move-result-object v1

    .line 62
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->c:Lcom/sleepycat/b/p/ag;

    .line 1068
    iget v0, v0, Lcom/sleepycat/b/p/ag;->b:I

    .line 62
    sget v2, Lcom/sleepycat/b/p/ah;->a:I

    if-ne v0, v2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/p/d;->a(Ljava/lang/Long;)V

    .line 65
    :cond_0
    return-object v1
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sleepycat/b/p/d;->f()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    sget-object v0, Lcom/sleepycat/b/p/af;->b:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e()Lcom/sleepycat/b/p/af;
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sleepycat/b/p/d;->i()Lcom/sleepycat/b/p/d;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 39
    return-void
.end method

.method public final t_()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->c:Lcom/sleepycat/b/p/ag;

    .line 2068
    iget v0, v0, Lcom/sleepycat/b/p/ag;->b:I

    .line 70
    sget v1, Lcom/sleepycat/b/p/ah;->a:I

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/sleepycat/b/p/d;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 73
    :cond_0
    return-void
.end method
