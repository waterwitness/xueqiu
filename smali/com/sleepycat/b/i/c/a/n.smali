.class public Lcom/sleepycat/b/i/c/a/n;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field protected final d:Ljava/lang/String;

.field protected final e:J

.field protected final f:J

.field final synthetic g:Lcom/sleepycat/b/i/c/a/d;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/a/d;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Lcom/sleepycat/b/i/c/a/n;->g:Lcom/sleepycat/b/i/c/a/d;

    .line 334
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 335
    iput-object p2, p0, Lcom/sleepycat/b/i/c/a/n;->d:Ljava/lang/String;

    .line 336
    iput-wide p3, p0, Lcom/sleepycat/b/i/c/a/n;->e:J

    .line 337
    iput-wide p5, p0, Lcom/sleepycat/b/i/c/a/n;->f:J

    .line 338
    return-void
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/n;->g:Lcom/sleepycat/b/i/c/a/d;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/d;->f:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 353
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/n;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/a/n;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/a/n;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/a/n;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/a/n;->e:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/a/n;->f:J

    return-wide v0
.end method
