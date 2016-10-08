.class final Lcom/sleepycat/b/c/bf;
.super Ljava/lang/Object;
.source "StartupTracker.java"


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field b:J

.field c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    const-string v0, " Elapsed(ms)"

    sput-object v0, Lcom/sleepycat/b/c/bf;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/sleepycat/b/c/bf;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/c/bf;Lcom/sleepycat/b/c/bf;)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 1506
    if-nez p1, :cond_1

    .line 1516
    :cond_0
    :goto_0
    return v0

    .line 1510
    :cond_1
    iget-wide v2, p1, Lcom/sleepycat/b/c/bf;->c:J

    iget-wide v4, p1, Lcom/sleepycat/b/c/bf;->b:J

    sub-long/2addr v2, v4

    .line 1511
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 1515
    iget-wide v4, p0, Lcom/sleepycat/b/c/bf;->c:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 1518
    iget-wide v0, p0, Lcom/sleepycat/b/c/bf;->c:J

    iget-wide v4, p0, Lcom/sleepycat/b/c/bf;->b:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 479
    goto :goto_0
.end method

.method static synthetic a(Lcom/sleepycat/b/c/bf;)V
    .locals 2

    .prologue
    .line 479
    .line 1497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/bf;->b:J

    .line 479
    return-void
.end method

.method static synthetic b(Lcom/sleepycat/b/c/bf;)V
    .locals 2

    .prologue
    .line 479
    .line 1502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/bf;->c:J

    .line 479
    return-void
.end method

.method static synthetic c(Lcom/sleepycat/b/c/bf;)J
    .locals 2

    .prologue
    .line 479
    iget-wide v0, p0, Lcom/sleepycat/b/c/bf;->b:J

    return-wide v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 525
    iget-wide v2, p0, Lcom/sleepycat/b/c/bf;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 526
    const-string v2, "%,13d"

    new-array v3, v6, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/sleepycat/b/c/bf;->c:J

    iget-wide v6, p0, Lcom/sleepycat/b/c/bf;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 535
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/b/c/bf;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 529
    const-string v2, "%13s  %tD,%tH:%tM:%tS:%tL"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "started at"

    aput-object v4, v3, v8

    iget-wide v4, p0, Lcom/sleepycat/b/c/bf;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-wide v6, p0, Lcom/sleepycat/b/c/bf;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, p0, Lcom/sleepycat/b/c/bf;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v6, p0, Lcom/sleepycat/b/c/bf;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-wide v6, p0, Lcom/sleepycat/b/c/bf;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 532
    :cond_1
    const-string v2, "%13s"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "none"

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0
.end method
