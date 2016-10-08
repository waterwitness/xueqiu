.class public final Lcom/snowballfinance/messageplatform/a/a/d;
.super Ljava/io/BufferedInputStream;
.source "PrimitiveInputStream.java"


# instance fields
.field public a:I

.field public b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    return-void
.end method

.method private j()J
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->c()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 93
    return-wide v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 66
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->count:I

    if-ge v0, v1, :cond_0

    .line 67
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 68
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->buf:[B

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->read()I

    move-result v0

    goto :goto_0

    .line 72
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a([B)V
    .locals 3

    .prologue
    .line 27
    array-length v1, p1

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-lez v1, :cond_1

    .line 31
    invoke-virtual {p0, p1, v0, v1}, Lcom/snowballfinance/messageplatform/a/a/d;->read([BII)I

    move-result v2

    .line 32
    if-lez v2, :cond_0

    .line 33
    add-int/2addr v0, v2

    .line 34
    sub-int/2addr v1, v2

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 77
    .line 1173
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 79
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->count:I

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->buf:[B

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->buf:[B

    iget v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 81
    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    .line 82
    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 88
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->read()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .locals 3

    .prologue
    .line 97
    .line 2173
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 99
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->count:I

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->buf:[B

    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->buf:[B

    iget v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->buf:[B

    iget v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->buf:[B

    iget v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 101
    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 102
    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->pos:I

    .line 108
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->read()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()J
    .locals 6

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->j()J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-direct {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->j()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Z
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 116
    .line 3127
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    if-nez v0, :cond_0

    .line 3129
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v0

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->c:I

    .line 3130
    iput v6, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    :cond_0
    move v0, v1

    move v2, v3

    .line 3134
    :goto_0
    iget v4, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    sub-int v4, v2, v4

    .line 3135
    if-lez v4, :cond_1

    .line 3137
    iget v5, p0, Lcom/snowballfinance/messageplatform/a/a/d;->c:I

    shl-int v4, v5, v4

    or-int/2addr v0, v4

    .line 3138
    iget v4, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    sub-int/2addr v2, v4

    .line 3141
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v4

    iput v4, p0, Lcom/snowballfinance/messageplatform/a/a/d;->c:I

    .line 3142
    iput v6, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    goto :goto_0

    .line 3145
    :cond_1
    iget v5, p0, Lcom/snowballfinance/messageplatform/a/a/d;->c:I

    neg-int v4, v4

    shr-int v4, v5, v4

    or-int/2addr v0, v4

    .line 3146
    iget v4, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    sub-int v2, v4, v2

    iput v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 3147
    iget v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->c:I

    const/16 v4, 0xff

    iget v5, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    rsub-int/lit8 v5, v5, 0x8

    shr-int/2addr v4, v5

    and-int/2addr v2, v4

    iput v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->c:I

    .line 116
    if-eqz v0, :cond_2

    :goto_1
    return v3

    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method public final f()D
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->d()J

    move-result-wide v0

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->h()I

    move-result v0

    .line 192
    new-array v1, v0, [B

    .line 193
    invoke-virtual {p0, v1}, Lcom/snowballfinance/messageplatform/a/a/d;->a([B)V

    .line 194
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .locals 6

    .prologue
    .line 198
    .line 3173
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 199
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v2

    .line 200
    and-int/lit8 v0, v2, 0x7f

    int-to-long v0, v0

    .line 201
    :goto_0
    ushr-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->a()I

    move-result v2

    .line 203
    const/4 v3, 0x7

    shl-long/2addr v0, v3

    and-int/lit8 v3, v2, 0x7f

    int-to-long v4, v3

    or-long/2addr v0, v4

    goto :goto_0

    .line 205
    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public final i()[B
    .locals 1

    .prologue
    .line 209
    .line 4173
    const/4 v0, 0x0

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->b:I

    .line 210
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/a/a/d;->h()I

    move-result v0

    .line 211
    new-array v0, v0, [B

    .line 212
    invoke-virtual {p0, v0}, Lcom/snowballfinance/messageplatform/a/a/d;->a([B)V

    .line 213
    return-object v0
.end method

.method public final mark(I)V
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->d:I

    .line 182
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 183
    return-void
.end method

.method public final read()I
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 43
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 47
    return v0
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    .line 52
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 53
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 56
    return v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->d:I

    iput v0, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    .line 187
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    .line 188
    return-void
.end method

.method public final declared-synchronized skip(J)J
    .locals 5

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v0

    .line 61
    iget v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/snowballfinance/messageplatform/a/a/d;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-wide v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
