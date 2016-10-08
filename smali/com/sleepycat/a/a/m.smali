.class public Lcom/sleepycat/a/a/m;
.super Lcom/sleepycat/c/d;
.source "TupleOutput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sleepycat/c/d;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sleepycat/c/d;-><init>([B)V

    .line 58
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/sleepycat/a/a/m;
    .locals 1

    .prologue
    .line 170
    xor-int/lit16 v0, p1, 0x80

    .line 2381
    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 171
    return-object p0
.end method

.method public final a(J)Lcom/sleepycat/a/a/m;
    .locals 3

    .prologue
    .line 218
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/a/a/m;->c(J)Lcom/sleepycat/a/a/m;

    .line 219
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;
    .locals 5

    .prologue
    .line 115
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1357
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 1359
    invoke-static {v0}, Lcom/sleepycat/c/f;->a([C)I

    move-result v1

    .line 1361
    invoke-virtual {p0, v1}, Lcom/sleepycat/a/a/m;->e(I)V

    .line 2259
    iget-object v2, p0, Lcom/sleepycat/c/d;->b:[B

    .line 2280
    iget v3, p0, Lcom/sleepycat/c/d;->a:I

    .line 1362
    array-length v4, v0

    invoke-static {v0, v2, v3, v4}, Lcom/sleepycat/c/f;->a([C[BII)V

    .line 1364
    invoke-virtual {p0, v1}, Lcom/sleepycat/a/a/m;->f(I)V

    .line 120
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 121
    return-object p0

    .line 118
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    goto :goto_0
.end method

.method public final a(Z)Lcom/sleepycat/a/a/m;
    .locals 1

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 155
    return-object p0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)Lcom/sleepycat/a/a/m;
    .locals 2

    .prologue
    .line 202
    const/high16 v0, -0x80000000

    xor-int/2addr v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/a/a/m;->b(J)Lcom/sleepycat/a/a/m;

    .line 203
    return-object p0
.end method

.method public final b(J)Lcom/sleepycat/a/a/m;
    .locals 3

    .prologue
    .line 416
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 417
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 418
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 419
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 420
    return-object p0
.end method

.method public final c(I)Lcom/sleepycat/a/a/m;
    .locals 2

    .prologue
    .line 447
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->e(I)V

    .line 3280
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    .line 4259
    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    .line 450
    invoke-static {v1, v0, p1}, Lcom/sleepycat/c/e;->a([BII)I

    move-result v1

    .line 452
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->f(I)V

    .line 453
    return-object p0
.end method

.method final c(J)Lcom/sleepycat/a/a/m;
    .locals 3

    .prologue
    .line 429
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 430
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 431
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 432
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 433
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 434
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 435
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 436
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->d(I)V

    .line 437
    return-object p0
.end method

.method public final d(J)Lcom/sleepycat/a/a/m;
    .locals 3

    .prologue
    .line 463
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->e(I)V

    .line 4280
    iget v0, p0, Lcom/sleepycat/c/d;->a:I

    .line 5259
    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    .line 466
    invoke-static {v1, v0, p1, p2}, Lcom/sleepycat/c/e;->a([BIJ)I

    move-result v1

    .line 468
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/a/a/m;->f(I)V

    .line 469
    return-object p0
.end method
