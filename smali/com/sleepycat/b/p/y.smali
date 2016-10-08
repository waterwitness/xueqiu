.class public final Lcom/sleepycat/b/p/y;
.super Lcom/sleepycat/b/p/z;
.source "LongMinStat.java"


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 32
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/p/y;->a(Ljava/lang/Long;)V

    .line 33
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/sleepycat/b/p/y;->a:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    :goto_0
    iput-wide p1, p0, Lcom/sleepycat/b/p/y;->a:J

    .line 40
    return-void

    .line 39
    :cond_0
    iget-wide p1, p0, Lcom/sleepycat/b/p/y;->a:J

    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/p/af;)Lcom/sleepycat/b/p/af;
    .locals 4
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
    .line 44
    iget-wide v2, p0, Lcom/sleepycat/b/p/y;->a:J

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->e()Lcom/sleepycat/b/p/af;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/p/y;->e()Lcom/sleepycat/b/p/af;

    move-result-object v0

    goto :goto_0
.end method

.method protected final d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/sleepycat/b/p/y;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 54
    const-string v0, "NONE"

    .line 57
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/p/af;->b:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lcom/sleepycat/b/p/y;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final t_()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
