.class public Lorg/apache/commons/a/b/a/a;
.super Lorg/apache/commons/a/b/a;
.source "GzipCompressorInputStream.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field private final c:Ljava/io/InputStream;

.field private final d:Z

.field private final e:[B

.field private f:I

.field private g:Ljava/util/zip/Inflater;

.field private final h:Ljava/util/zip/CRC32;

.field private i:I

.field private j:Z

.field private final k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/apache/commons/a/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/commons/a/b/a/a;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/a/b/a/a;-><init>(Ljava/io/InputStream;B)V

    .line 98
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/a/b/a;-><init>()V

    .line 63
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/a/b/a/a;->e:[B

    .line 66
    iput v1, p0, Lorg/apache/commons/a/b/a/a;->f:I

    .line 69
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    .line 72
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/a/b/a/a;->h:Ljava/util/zip/CRC32;

    .line 77
    iput-boolean v1, p0, Lorg/apache/commons/a/b/a/a;->j:Z

    .line 80
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/apache/commons/a/b/a/a;->k:[B

    .line 125
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iput-object p1, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    .line 131
    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/a/b/a/a;->d:Z

    .line 132
    invoke-direct {p0, v2}, Lorg/apache/commons/a/b/a/a;->a(Z)Z

    .line 133
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private static a(Ljava/io/DataInputStream;)V
    .locals 1

    .prologue
    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    return-void
.end method

.method private a(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 136
    sget-boolean v1, Lorg/apache/commons/a/b/a/a;->b:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/a/b/a/a;->d:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 140
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 144
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_1

    .line 209
    :goto_0
    return v0

    .line 148
    :cond_1
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_2

    const/16 v1, 0x8b

    if-eq v2, v1, :cond_4

    .line 149
    :cond_2
    new-instance v1, Ljava/io/IOException;

    if-eqz p1, :cond_3

    const-string v0, "Input is not in the .gz format"

    :goto_1
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "Garbage after a valid .gz stream"

    goto :goto_1

    .line 155
    :cond_4
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 157
    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    .line 158
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported compression method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the .gz header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    .line 163
    and-int/lit16 v1, v4, 0xe0

    if-eqz v1, :cond_6

    .line 164
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reserved flags are set in the .gz header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    .line 169
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 170
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 173
    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_7

    .line 174
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    .line 175
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 180
    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_7

    .line 181
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move v1, v2

    goto :goto_2

    .line 186
    :cond_7
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_8

    .line 187
    invoke-static {v3}, Lorg/apache/commons/a/b/a/a;->a(Ljava/io/DataInputStream;)V

    .line 191
    :cond_8
    and-int/lit8 v1, v4, 0x10

    if-eqz v1, :cond_9

    .line 192
    invoke-static {v3}, Lorg/apache/commons/a/b/a/a;->a(Ljava/io/DataInputStream;)V

    .line 200
    :cond_9
    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_a

    .line 201
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    .line 205
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    .line 206
    iget-object v1, p0, Lorg/apache/commons/a/b/a/a;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 207
    iput v0, p0, Lorg/apache/commons/a/b/a/a;->i:I

    .line 209
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    .line 353
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_1

    .line 354
    iget-object v0, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 356
    :cond_1
    return-void
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 219
    iget-object v1, p0, Lorg/apache/commons/a/b/a/a;->k:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/commons/a/b/a/a;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/a/b/a/a;->k:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 229
    iget-boolean v1, p0, Lorg/apache/commons/a/b/a/a;->j:Z

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v3

    .line 235
    :cond_2
    if-lez p3, :cond_c

    .line 236
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 239
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/a/b/a/a;->e:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    .line 241
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/commons/a/b/a/a;->e:[B

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/a/b/a/a;->f:I

    .line 242
    iget v2, p0, Lorg/apache/commons/a/b/a/a;->f:I

    if-ne v2, v0, :cond_3

    .line 243
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 246
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    iget-object v4, p0, Lorg/apache/commons/a/b/a/a;->e:[B

    iget v5, p0, Lorg/apache/commons/a/b/a/a;->f:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 251
    :cond_4
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 256
    iget-object v4, p0, Lorg/apache/commons/a/b/a/a;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 257
    iget v4, p0, Lorg/apache/commons/a/b/a/a;->i:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/apache/commons/a/b/a/a;->i:I

    .line 258
    add-int/2addr p2, v2

    .line 259
    sub-int/2addr p3, v2

    .line 260
    add-int/2addr v1, v2

    .line 1035
    int-to-long v4, v2

    .line 1045
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5

    .line 1046
    iget-wide v6, p0, Lorg/apache/commons/a/b/a;->a:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/a/b/a;->a:J

    .line 263
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 271
    iget v2, p0, Lorg/apache/commons/a/b/a/a;->f:I

    iget-object v4, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    sub-int/2addr v2, v4

    .line 272
    iget-object v4, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    .line 273
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 253
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip-compressed data is corrupt"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_6
    iput v3, p0, Lorg/apache/commons/a/b/a/a;->f:I

    .line 278
    new-instance v6, Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->c:Ljava/io/InputStream;

    invoke-direct {v6, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 281
    const-wide/16 v4, 0x0

    move v2, v3

    .line 282
    :goto_1
    if-ge v2, v10, :cond_7

    .line 283
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v7

    int-to-long v8, v7

    mul-int/lit8 v7, v2, 0x8

    shl-long/2addr v8, v7

    or-long/2addr v4, v8

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->h:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-eqz v2, :cond_8

    .line 287
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip-compressed data is corrupt (CRC32 error)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move v2, v3

    move v4, v3

    .line 293
    :goto_2
    if-ge v2, v10, :cond_9

    .line 294
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    mul-int/lit8 v7, v2, 0x8

    shl-int/2addr v5, v7

    or-int/2addr v4, v5

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 297
    :cond_9
    iget v2, p0, Lorg/apache/commons/a/b/a/a;->i:I

    if-eq v4, v2, :cond_a

    .line 298
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Gzip-compressed data is corrupt(uncompressed size mismatch)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_a
    iget-boolean v2, p0, Lorg/apache/commons/a/b/a/a;->d:Z

    if-eqz v2, :cond_b

    invoke-direct {p0, v3}, Lorg/apache/commons/a/b/a/a;->a(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 304
    :cond_b
    iget-object v2, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    .line 305
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/a/b/a/a;->g:Ljava/util/zip/Inflater;

    .line 306
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/a/b/a/a;->j:Z

    .line 307
    if-eqz v1, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 312
    goto/16 :goto_0
.end method
