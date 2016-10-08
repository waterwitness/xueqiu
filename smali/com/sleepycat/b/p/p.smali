.class public final Lcom/sleepycat/b/p/p;
.super Ljava/lang/Number;
.source "IntegralLongAvg.java"


# instance fields
.field a:J

.field b:J

.field private c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 15
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/b/p/p;->c:J

    .line 18
    iput-wide p1, p0, Lcom/sleepycat/b/p/p;->a:J

    .line 19
    iput-wide p3, p0, Lcom/sleepycat/b/p/p;->b:J

    .line 20
    const-wide/32 v0, 0x3b9aca00

    iput-wide v0, p0, Lcom/sleepycat/b/p/p;->c:J

    .line 21
    return-void
.end method

.method public constructor <init>(JJB)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 15
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/b/p/p;->c:J

    .line 24
    iput-wide p1, p0, Lcom/sleepycat/b/p/p;->a:J

    .line 25
    iput-wide p3, p0, Lcom/sleepycat/b/p/p;->b:J

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/p/p;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 15
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sleepycat/b/p/p;->c:J

    .line 29
    iget-wide v0, p1, Lcom/sleepycat/b/p/p;->a:J

    iput-wide v0, p0, Lcom/sleepycat/b/p/p;->a:J

    .line 30
    iget-wide v0, p1, Lcom/sleepycat/b/p/p;->b:J

    iput-wide v0, p0, Lcom/sleepycat/b/p/p;->b:J

    .line 31
    iget-wide v0, p1, Lcom/sleepycat/b/p/p;->c:J

    iput-wide v0, p0, Lcom/sleepycat/b/p/p;->c:J

    .line 32
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    iget-wide v2, p0, Lcom/sleepycat/b/p/p;->b:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/p/p;->a:J

    iget-wide v2, p0, Lcom/sleepycat/b/p/p;->c:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sleepycat/b/p/p;->b:J

    div-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public final doubleValue()D
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sleepycat/b/p/p;->a()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public final floatValue()F
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/sleepycat/b/p/p;->a()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final intValue()I
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/sleepycat/b/p/p;->a()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sleepycat/b/p/p;->a()J

    move-result-wide v0

    return-wide v0
.end method
