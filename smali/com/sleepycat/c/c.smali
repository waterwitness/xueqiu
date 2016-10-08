.class public Lcom/sleepycat/c/c;
.super Ljava/io/InputStream;
.source "FastInputStream.java"


# instance fields
.field protected a:I

.field public b:I

.field protected c:I

.field public d:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sleepycat/c/c;->d:[B

    .line 54
    iput p2, p0, Lcom/sleepycat/c/c;->b:I

    .line 55
    add-int v0, p2, p3

    iput v0, p0, Lcom/sleepycat/c/c;->a:I

    .line 56
    return-void
.end method

.method private a([BII)I
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lcom/sleepycat/c/c;->a:I

    iget v1, p0, Lcom/sleepycat/c/c;->b:I

    sub-int/2addr v0, v1

    .line 152
    if-gtz v0, :cond_0

    .line 153
    const/4 p3, -0x1

    .line 160
    :goto_0
    return p3

    .line 155
    :cond_0
    if-le p3, v0, :cond_1

    move p3, v0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/c/c;->d:[B

    iget v1, p0, Lcom/sleepycat/c/c;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget v0, p0, Lcom/sleepycat/c/c;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sleepycat/c/c;->b:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/sleepycat/c/c;->a:I

    iget v1, p0, Lcom/sleepycat/c/c;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .locals 3

    .prologue
    .line 131
    iget v0, p0, Lcom/sleepycat/c/c;->b:I

    iget v1, p0, Lcom/sleepycat/c/c;->a:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/c/c;->d:[B

    iget v1, p0, Lcom/sleepycat/c/c;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sleepycat/c/c;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/sleepycat/c/c;->a:I

    return v0
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sleepycat/c/c;->b:I

    iput v0, p0, Lcom/sleepycat/c/c;->c:I

    .line 76
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sleepycat/c/c;->k()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/c/c;->a([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/c/c;->a([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sleepycat/c/c;->c:I

    iput v0, p0, Lcom/sleepycat/c/c;->b:I

    .line 82
    return-void
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 87
    long-to-int v0, p1

    .line 88
    iget v1, p0, Lcom/sleepycat/c/c;->b:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/sleepycat/c/c;->a:I

    if-le v1, v2, :cond_0

    .line 89
    iget v0, p0, Lcom/sleepycat/c/c;->a:I

    iget v1, p0, Lcom/sleepycat/c/c;->b:I

    sub-int/2addr v0, v1

    .line 1121
    :cond_0
    iget v1, p0, Lcom/sleepycat/c/c;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sleepycat/c/c;->b:I

    .line 92
    int-to-long v0, v0

    return-wide v0
.end method
