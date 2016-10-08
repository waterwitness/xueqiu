.class public Lcom/sleepycat/b/i/g/a/j;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/g/a/a;

.field final synthetic b:Lcom/sleepycat/b/i/g/a/i;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/g/a/i;Lcom/sleepycat/b/i/g/a/a;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sleepycat/b/i/g/a/j;->b:Lcom/sleepycat/b/i/g/a/i;

    .line 235
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 236
    iput-object p2, p0, Lcom/sleepycat/b/i/g/a/j;->a:Lcom/sleepycat/b/i/g/a/a;

    .line 237
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/sleepycat/b/i/g/a/i;->d:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 250
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/j;->a:Lcom/sleepycat/b/i/g/a/a;

    .line 1048
    iget v2, v2, Lcom/sleepycat/b/i/g/a/a;->a:I

    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/j;->a:Lcom/sleepycat/b/i/g/a/a;

    .line 1060
    iget-object v2, v2, Lcom/sleepycat/b/i/g/a/a;->c:[B

    .line 250
    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/j;->a:Lcom/sleepycat/b/i/g/a/a;

    .line 1068
    iget-object v2, v2, Lcom/sleepycat/b/i/g/a/a;->d:[B

    .line 250
    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/j;->a:Lcom/sleepycat/b/i/g/a/a;

    .line 1084
    iget-object v2, v2, Lcom/sleepycat/b/i/g/a/a;->f:[B

    .line 250
    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/j;->a:Lcom/sleepycat/b/i/g/a/a;

    .line 2076
    iget-wide v2, v2, Lcom/sleepycat/b/i/g/a/a;->e:J

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/g/a/j;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
