.class public final Lcom/sleepycat/a/a/l;
.super Lcom/sleepycat/c/c;
.source "TupleInput.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/a/a/m;)V
    .locals 3

    .prologue
    .line 74
    .line 1259
    iget-object v0, p1, Lcom/sleepycat/c/d;->b:[B

    .line 74
    const/4 v1, 0x0

    .line 1280
    iget v2, p1, Lcom/sleepycat/c/d;->a:I

    .line 74
    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/c/c;-><init>([BII)V

    .line 76
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/c/c;-><init>([BII)V

    .line 62
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sleepycat/a/a/l;->d:[B

    .line 99
    iget v1, p0, Lcom/sleepycat/a/a/l;->b:I

    .line 100
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->available()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    .line 103
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/a/a/l;->skip(J)J

    .line 104
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-static {v0, v1}, Lcom/sleepycat/c/f;->a([BI)I

    move-result v2

    .line 107
    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/sleepycat/a/a/l;->skip(J)J

    .line 108
    invoke-static {v0, v1, v2}, Lcom/sleepycat/c/f;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v0

    .line 145
    if-gez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()B
    .locals 1

    .prologue
    .line 165
    .line 1312
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v0

    .line 1313
    if-gez v0, :cond_0

    .line 1314
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 165
    :cond_0
    xor-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    return v0
.end method

.method public final d()I
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->g()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final e()J
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->h()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public final f()I
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v1

    .line 336
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 339
    :cond_0
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public final g()J
    .locals 12

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v0

    int-to-long v0, v0

    .line 360
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v2

    int-to-long v2, v2

    .line 361
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v4

    int-to-long v4, v4

    .line 362
    invoke-virtual {p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v6

    int-to-long v6, v6

    .line 363
    or-long v8, v0, v2

    or-long/2addr v8, v4

    or-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 366
    :cond_0
    const/16 v8, 0x18

    shl-long/2addr v0, v8

    const/16 v8, 0x10

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    or-long/2addr v0, v6

    return-wide v0
.end method

.method final h()J
    .locals 20

    .prologue
    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v0

    int-to-long v0, v0

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v2

    int-to-long v2, v2

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v4

    int-to-long v4, v4

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v6

    int-to-long v6, v6

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v8

    int-to-long v8, v8

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v10

    int-to-long v10, v10

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v12

    int-to-long v12, v12

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/a/a/l;->k()I

    move-result v14

    int-to-long v14, v14

    .line 384
    or-long v16, v0, v2

    or-long v16, v16, v4

    or-long v16, v16, v6

    or-long v16, v16, v8

    or-long v16, v16, v10

    or-long v16, v16, v12

    or-long v16, v16, v14

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 387
    :cond_0
    const/16 v16, 0x38

    shl-long v0, v0, v16

    const/16 v16, 0x30

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    or-long/2addr v0, v14

    return-wide v0
.end method

.method public final i()I
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sleepycat/a/a/l;->d:[B

    iget v1, p0, Lcom/sleepycat/a/a/l;->b:I

    invoke-static {v0, v1}, Lcom/sleepycat/c/e;->c([BI)I

    move-result v0

    .line 568
    iget-object v1, p0, Lcom/sleepycat/a/a/l;->d:[B

    iget v2, p0, Lcom/sleepycat/a/a/l;->b:I

    invoke-static {v1, v2}, Lcom/sleepycat/c/e;->a([BI)I

    move-result v1

    .line 570
    iget v2, p0, Lcom/sleepycat/a/a/l;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sleepycat/a/a/l;->b:I

    .line 571
    return v1
.end method

.method public final j()J
    .locals 4

    .prologue
    .line 590
    iget-object v0, p0, Lcom/sleepycat/a/a/l;->d:[B

    iget v1, p0, Lcom/sleepycat/a/a/l;->b:I

    .line 2197
    invoke-static {v0, v1}, Lcom/sleepycat/c/e;->c([BI)I

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/sleepycat/a/a/l;->d:[B

    iget v2, p0, Lcom/sleepycat/a/a/l;->b:I

    invoke-static {v1, v2}, Lcom/sleepycat/c/e;->b([BI)J

    move-result-wide v2

    .line 593
    iget v1, p0, Lcom/sleepycat/a/a/l;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/a/a/l;->b:I

    .line 594
    return-wide v2
.end method
