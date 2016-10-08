.class public Lcom/sleepycat/b/i/e/ar;
.super Lcom/sleepycat/b/i/e/ad;
.source "Protocol.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field final a:J

.field final c:J

.field d:J

.field e:J

.field final synthetic g:Lcom/sleepycat/b/i/e/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    const-class v0, Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/ar;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/i/e/aq;)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 465
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ar;->g:Lcom/sleepycat/b/i/e/t;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/e/ad;-><init>(Lcom/sleepycat/b/i/e/t;)V

    .line 460
    iput-wide v0, p0, Lcom/sleepycat/b/i/e/ar;->d:J

    .line 463
    iput-wide v0, p0, Lcom/sleepycat/b/i/e/ar;->e:J

    .line 466
    invoke-static {p2}, Lcom/sleepycat/b/i/e/aq;->a(Lcom/sleepycat/b/i/e/aq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/e/ar;->a:J

    .line 467
    invoke-static {p2}, Lcom/sleepycat/b/i/e/aq;->b(Lcom/sleepycat/b/i/e/aq;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/e/ar;->c:J

    .line 468
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/sleepycat/b/i/e/t;->k:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ar;->g:Lcom/sleepycat/b/i/e/t;

    invoke-static {v0}, Lcom/sleepycat/b/i/e/t;->b(Lcom/sleepycat/b/i/e/t;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 1402
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->n:Lcom/sleepycat/b/i/c/b/ab;

    .line 472
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/ab;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/e/ar;->d:J

    .line 473
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ar;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ar;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ar;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/ar;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 6

    .prologue
    .line 507
    sget-boolean v0, Lcom/sleepycat/b/i/e/ar;->f:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/i/e/ar;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 508
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/b/i/e/ar;->e:J

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ar;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/ar;->d:J

    iget-wide v4, p0, Lcom/sleepycat/b/i/e/ar;->c:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method
