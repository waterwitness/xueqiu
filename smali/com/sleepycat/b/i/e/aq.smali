.class public Lcom/sleepycat/b/i/e/aq;
.super Lcom/sleepycat/b/i/e/ad;
.source "Protocol.java"


# instance fields
.field a:Z

.field final synthetic c:Lcom/sleepycat/b/i/e/t;

.field private final d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Z)V
    .locals 2

    .prologue
    .line 415
    iput-object p1, p0, Lcom/sleepycat/b/i/e/aq;->c:Lcom/sleepycat/b/i/e/t;

    .line 416
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/e/ad;-><init>(Lcom/sleepycat/b/i/e/t;)V

    .line 407
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/i/e/aq;->e:J

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/e/aq;->a:Z

    .line 417
    iput-boolean p2, p0, Lcom/sleepycat/b/i/e/aq;->a:Z

    .line 418
    invoke-static {p1}, Lcom/sleepycat/b/i/e/t;->b(Lcom/sleepycat/b/i/e/t;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 1402
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->n:Lcom/sleepycat/b/i/c/b/ab;

    .line 418
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/ab;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/e/aq;->d:J

    .line 419
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/i/e/aq;)J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/sleepycat/b/i/e/aq;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/e/aq;)J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/sleepycat/b/i/e/aq;->e:J

    return-wide v0
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lcom/sleepycat/b/i/e/t;->j:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 423
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/aq;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sleepycat/b/i/e/aq;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/aq;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
