.class public Lcom/sleepycat/b/i/c/a/j;
.super Lcom/sleepycat/b/i/c/a/n;
.source "Protocol.java"


# instance fields
.field final b:[B

.field final synthetic c:Lcom/sleepycat/b/i/c/a/d;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/a/d;Ljava/lang/String;JJ[B)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sleepycat/b/i/c/a/j;->c:Lcom/sleepycat/b/i/c/a/d;

    .line 287
    invoke-direct/range {p0 .. p6}, Lcom/sleepycat/b/i/c/a/n;-><init>(Lcom/sleepycat/b/i/c/a/d;Ljava/lang/String;JJ)V

    .line 288
    iput-object p7, p0, Lcom/sleepycat/b/i/c/a/j;->b:[B

    .line 289
    return-void
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/j;->c:Lcom/sleepycat/b/i/c/a/d;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/d;->i:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 303
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/j;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/a/j;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/a/j;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/j;->b:[B

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/a/j;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
