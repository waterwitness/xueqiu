.class final Lorg/apache/commons/a/a/a/d;
.super Ljava/lang/Object;
.source "TarBuffer.java"


# instance fields
.field a:Ljava/io/InputStream;

.field b:Ljava/io/OutputStream;

.field final c:I

.field final d:I

.field final e:[B

.field f:I

.field g:I

.field private final h:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/a/a/a/d;-><init>(Ljava/io/InputStream;B)V

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    .line 118
    const/16 v0, 0x2800

    iput v0, p0, Lorg/apache/commons/a/a/a/d;->c:I

    .line 119
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/commons/a/a/a/d;->d:I

    .line 120
    iget v0, p0, Lorg/apache/commons/a/a/a/d;->c:I

    iget v1, p0, Lorg/apache/commons/a/a/a/d;->d:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/a/a/a/d;->h:I

    .line 121
    iget v0, p0, Lorg/apache/commons/a/a/a/d;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/a/a/a/d;->e:[B

    .line 123
    iget-object v0, p0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/a/a/a/d;->f:I

    .line 125
    iget v0, p0, Lorg/apache/commons/a/a/a/d;->h:I

    iput v0, p0, Lorg/apache/commons/a/a/a/d;->g:I

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iput v2, p0, Lorg/apache/commons/a/a/a/d;->f:I

    .line 128
    iput v2, p0, Lorg/apache/commons/a/a/a/d;->g:I

    goto :goto_0
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 215
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iput v0, p0, Lorg/apache/commons/a/a/a/d;->g:I

    .line 221
    iget v1, p0, Lorg/apache/commons/a/a/a/d;->c:I

    move v2, v0

    .line 223
    :goto_0
    if-lez v1, :cond_2

    .line 224
    iget-object v3, p0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/a/a/a/d;->e:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v4, v3

    .line 240
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 241
    if-nez v2, :cond_1

    .line 268
    :goto_1
    return v0

    .line 253
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/a/a/a/d;->e:[B

    add-int/2addr v1, v2

    invoke-static {v3, v2, v1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 266
    :cond_2
    iget v0, p0, Lorg/apache/commons/a/a/a/d;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/a/a/a/d;->f:I

    .line 268
    const/4 v0, 0x1

    goto :goto_1

    .line 258
    :cond_3
    int-to-long v2, v2

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 259
    int-to-long v6, v1

    sub-long v4, v6, v4

    long-to-int v1, v4

    .line 264
    goto :goto_0
.end method


# virtual methods
.method public final a([B)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    .line 1145
    iget v2, p0, Lorg/apache/commons/a/a/a/d;->d:I

    move v1, v0

    .line 156
    :goto_0
    if-ge v1, v2, :cond_1

    .line 157
    aget-byte v3, p1, v1

    if-eqz v3, :cond_0

    .line 162
    :goto_1
    return v0

    .line 156
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final a()[B
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    iget v0, p0, Lorg/apache/commons/a/a/a/d;->g:I

    iget v1, p0, Lorg/apache/commons/a/a/a/d;->h:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/a/a/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    .line 199
    :cond_2
    iget v0, p0, Lorg/apache/commons/a/a/a/d;->d:I

    new-array v0, v0, [B

    .line 201
    iget-object v1, p0, Lorg/apache/commons/a/a/a/d;->e:[B

    iget v2, p0, Lorg/apache/commons/a/a/a/d;->g:I

    iget v3, p0, Lorg/apache/commons/a/a/a/d;->d:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/commons/a/a/a/d;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget v1, p0, Lorg/apache/commons/a/a/a/d;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/a/a/a/d;->g:I

    goto :goto_0
.end method
