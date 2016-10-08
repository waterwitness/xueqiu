.class public Lcom/sleepycat/b/p/x;
.super Lcom/sleepycat/b/p/z;
.source "LongMaxStat.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 20
    invoke-virtual {p0}, Lcom/sleepycat/b/p/x;->a()V

    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 32
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/p/x;->a(Ljava/lang/Long;)V

    .line 33
    return-void
.end method

.method public final a(J)Z
    .locals 3

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/sleepycat/b/p/x;->a:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 42
    iput-wide p1, p0, Lcom/sleepycat/b/p/x;->a:J

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 50
    iget-wide v2, p0, Lcom/sleepycat/b/p/x;->a:J

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/p/af;->e()Lcom/sleepycat/b/p/af;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/p/x;->e()Lcom/sleepycat/b/p/af;

    move-result-object v0

    goto :goto_0
.end method

.method protected final d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/sleepycat/b/p/x;->a:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 60
    const-string v0, "NONE"

    .line 63
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/p/af;->b:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lcom/sleepycat/b/p/x;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final t_()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
