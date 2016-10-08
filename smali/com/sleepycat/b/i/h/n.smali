.class public final Lcom/sleepycat/b/i/h/n;
.super Lcom/sleepycat/b/p/x;
.source "LongMaxZeroStat.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/x;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 28
    invoke-super {p0}, Lcom/sleepycat/b/p/x;->b()Ljava/lang/Long;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/n;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
