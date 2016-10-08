.class public final Lcom/snowballfinance/message/io/b/c;
.super Ljava/lang/Object;
.source "FragmentDecoder.java"


# direct methods
.method public static a([BI)Lcom/snowballfinance/message/io/b;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gtz v0, :cond_0

    .line 20
    new-instance v0, Lcom/snowballfinance/message/io/b/a;

    invoke-direct {v0}, Lcom/snowballfinance/message/io/b/a;-><init>()V

    throw v0

    .line 22
    :cond_0
    aget-byte v0, p0, p1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 23
    new-instance v0, Lcom/snowballfinance/message/io/b/e;

    invoke-direct {v0}, Lcom/snowballfinance/message/io/b/e;-><init>()V

    throw v0

    .line 25
    :cond_1
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lcom/snowballfinance/message/io/d;->a([BI)J

    move-result-wide v4

    .line 26
    array-length v0, p0

    sub-int/2addr v0, p1

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    .line 27
    new-instance v0, Lcom/snowballfinance/message/io/b/a;

    invoke-direct {v0}, Lcom/snowballfinance/message/io/b/a;-><init>()V

    throw v0

    .line 29
    :cond_2
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x4

    .line 30
    add-int v3, p1, v0

    .line 31
    int-to-long v6, v0

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 32
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 33
    invoke-static {p0, v3, v4}, Lcom/snowballfinance/message/io/d;->a([BII)I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 34
    new-instance v0, Lcom/snowballfinance/message/io/b/a;

    invoke-direct {v0}, Lcom/snowballfinance/message/io/b/a;-><init>()V

    throw v0

    .line 36
    :cond_3
    new-instance v5, Lcom/snowballfinance/message/io/b;

    invoke-direct {v5}, Lcom/snowballfinance/message/io/b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1119
    iput-wide v6, v5, Lcom/snowballfinance/message/io/b;->h:J

    .line 37
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    if-lez v0, :cond_4

    move v0, v1

    .line 2102
    :goto_0
    iput-boolean v0, v5, Lcom/snowballfinance/message/io/b;->f:Z

    .line 38
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_5

    move v0, v1

    .line 3094
    :goto_1
    iput-boolean v0, v5, Lcom/snowballfinance/message/io/b;->e:Z

    .line 39
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit16 v0, v0, 0xff

    .line 4068
    iput v0, v5, Lcom/snowballfinance/message/io/b;->b:I

    .line 40
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_6

    .line 4077
    :goto_2
    iput-boolean v1, v5, Lcom/snowballfinance/message/io/b;->c:Z

    .line 41
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    .line 4085
    iput v0, v5, Lcom/snowballfinance/message/io/b;->d:I

    .line 42
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Lcom/snowballfinance/message/io/d;->a([BI)J

    move-result-wide v0

    .line 5059
    iput-wide v0, v5, Lcom/snowballfinance/message/io/b;->a:J

    .line 43
    new-array v0, v4, [B

    .line 44
    invoke-static {p0, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5110
    iput-object v0, v5, Lcom/snowballfinance/message/io/b;->g:[B

    .line 45
    return-object v5

    :cond_4
    move v0, v2

    .line 37
    goto :goto_0

    :cond_5
    move v0, v2

    .line 38
    goto :goto_1

    :cond_6
    move v1, v2

    .line 40
    goto :goto_2
.end method
