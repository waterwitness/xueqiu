.class public final Lcom/sleepycat/b/c/be;
.super Ljava/lang/Object;
.source "StartupTracker.java"


# static fields
.field static d:Ljava/lang/String;


# instance fields
.field public a:J

.field b:J

.field c:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 594
    const-string v0, "      nRead nProcessed   nDeleted       nAux  nRepeatRd nCacheMiss"

    sput-object v0, Lcom/sleepycat/b/c/be;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/c/be;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 542
    .line 1553
    iget v0, p0, Lcom/sleepycat/b/c/be;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/c/be;->f:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/c/be;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/c/be;->h:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/c/be;->a:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/c/be;->c:J

    iget-wide v2, p0, Lcom/sleepycat/b/c/be;->b:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 542
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/sleepycat/b/c/be;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/c/be;->e:I

    .line 563
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/sleepycat/b/c/be;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/c/be;->f:I

    .line 567
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Lcom/sleepycat/b/c/be;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/c/be;->g:I

    .line 571
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/sleepycat/b/c/be;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/c/be;->h:I

    .line 580
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 601
    const-string v2, "%,11d%,11d%,11d%,11d%,11d%,11d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sleepycat/b/c/be;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sleepycat/b/c/be;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/sleepycat/b/c/be;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/sleepycat/b/c/be;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v6, p0, Lcom/sleepycat/b/c/be;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-wide v6, p0, Lcom/sleepycat/b/c/be;->c:J

    iget-wide v8, p0, Lcom/sleepycat/b/c/be;->b:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
