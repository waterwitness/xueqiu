.class public final Lcom/sleepycat/b/i/g/a/a;
.super Ljava/lang/Object;
.source "Block.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:I

.field b:I

.field c:[B

.field d:[B

.field e:J

.field f:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/sleepycat/b/i/g/a/a;->a:I

    .line 45
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/b/i/g/a/a;

    if-eqz v1, :cond_0

    .line 99
    check-cast p1, Lcom/sleepycat/b/i/g/a/a;

    .line 100
    iget v1, p0, Lcom/sleepycat/b/i/g/a/a;->a:I

    iget v2, p1, Lcom/sleepycat/b/i/g/a/a;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sleepycat/b/i/g/a/a;->b:I

    iget v2, p1, Lcom/sleepycat/b/i/g/a/a;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/a;->c:[B

    iget-object v2, p1, Lcom/sleepycat/b/i/g/a/a;->c:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/a;->d:[B

    iget-object v2, p1, Lcom/sleepycat/b/i/g/a/a;->d:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/b/i/g/a/a;->e:J

    iget-wide v4, p1, Lcom/sleepycat/b/i/g/a/a;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/a;->f:[B

    iget-object v2, p1, Lcom/sleepycat/b/i/g/a/a;->f:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 110
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 111
    const-string v1, "Block %d: rollingChksum=%x md5Hash=%s numRecords=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sleepycat/b/i/g/a/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/sleepycat/b/i/g/a/a;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sleepycat/b/i/g/a/a;->f:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/sleepycat/b/i/g/a/a;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 114
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
