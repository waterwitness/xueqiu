.class public final Lcom/sleepycat/b/i/g/a/w;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field final a:[B

.field final b:[B

.field final c:Lcom/sleepycat/b/p/au;

.field d:[B


# direct methods
.method public constructor <init>([B[BLcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sleepycat/b/i/g/a/w;->a:[B

    .line 26
    iput-object p2, p0, Lcom/sleepycat/b/i/g/a/w;->b:[B

    .line 27
    iput-object p3, p0, Lcom/sleepycat/b/i/g/a/w;->c:Lcom/sleepycat/b/p/au;

    .line 28
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/b/i/g/a/w;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lcom/sleepycat/b/i/g/a/w;

    .line 1041
    iget-object v1, p1, Lcom/sleepycat/b/i/g/a/w;->a:[B

    .line 2041
    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/w;->a:[B

    .line 63
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2045
    iget-object v1, p1, Lcom/sleepycat/b/i/g/a/w;->b:[B

    .line 3045
    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/w;->b:[B

    .line 63
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/w;->d:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/w;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/w;->b:[B

    if-eqz v0, :cond_0

    .line 4035
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/w;->a:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/w;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/w;->d:[B

    .line 4036
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/w;->a:[B

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/w;->d:[B

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/w;->a:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4037
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/w;->b:[B

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/w;->d:[B

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/w;->a:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/sleepycat/b/i/g/a/w;->b:[B

    array-length v3, v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/w;->d:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
