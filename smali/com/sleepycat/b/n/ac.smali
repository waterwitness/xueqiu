.class public Lcom/sleepycat/b/n/ac;
.super Lcom/sleepycat/b/n/ai;
.source "TxnAbort.java"

# interfaces
.implements Lcom/sleepycat/b/g/ax;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sleepycat/b/n/ai;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/n/ai;-><init>(JJI)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 77
    instance-of v1, p1, Lcom/sleepycat/b/n/ac;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    check-cast p1, Lcom/sleepycat/b/n/ac;

    .line 82
    iget-wide v2, p0, Lcom/sleepycat/b/n/ac;->a:J

    iget-wide v4, p1, Lcom/sleepycat/b/n/ac;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sleepycat/b/n/ac;->c:I

    iget v2, p1, Lcom/sleepycat/b/n/ac;->c:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 69
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "TxnAbort"

    return-object v0
.end method
