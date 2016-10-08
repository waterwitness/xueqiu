.class public final Lorg/apache/commons/a/a/a/b;
.super Lorg/apache/commons/a/a/b;
.source "TarArchiveInputStream.java"


# instance fields
.field protected final b:Lorg/apache/commons/a/a/a/d;

.field private final c:[B

.field private final d:[B

.field private e:Z

.field private f:J

.field private g:J

.field private h:[B

.field private i:Lorg/apache/commons/a/a/a/a;

.field private final j:Lorg/apache/commons/a/a/b/b;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/a/a/a/b;-><init>(Ljava/io/InputStream;B)V

    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;B)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/a/a/a/b;-><init>(Ljava/io/InputStream;C)V

    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;C)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/apache/commons/a/a/b;-><init>()V

    .line 51
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/a/a/a/b;->c:[B

    .line 52
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/a/a/a/b;->d:[B

    .line 121
    new-instance v0, Lorg/apache/commons/a/a/a/d;

    invoke-direct {v0, p1}, Lorg/apache/commons/a/a/a/d;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/a/a/a/b;->b:Lorg/apache/commons/a/a/a/d;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/a/a/a/b;->e:Z

    .line 124
    invoke-static {}, Lorg/apache/commons/a/a/b/c;->a()Lorg/apache/commons/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/a/a/a/b;->j:Lorg/apache/commons/a/a/b/b;

    .line 125
    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    .line 331
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move v0, v1

    move v2, v1

    .line 337
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v9, :cond_4

    .line 338
    add-int/lit8 v0, v0, 0x1

    .line 339
    const/16 v5, 0x20

    if-ne v3, v5, :cond_3

    .line 341
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v9, :cond_4

    .line 343
    add-int/lit8 v0, v0, 0x1

    .line 344
    const/16 v6, 0x3d

    if-ne v3, v6, :cond_2

    .line 345
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    sub-int v6, v2, v0

    new-array v6, v6, [B

    .line 348
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 349
    sub-int v8, v2, v0

    if-eq v7, v8, :cond_1

    .line 350
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read Paxheader. Expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes, read "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1
    new-instance v7, Ljava/lang/String;

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    const-string v2, "UTF-8"

    invoke-direct {v7, v6, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 359
    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 369
    :goto_2
    if-ne v0, v9, :cond_0

    .line 373
    return-object v4

    .line 362
    :cond_2
    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 366
    :cond_3
    mul-int/lit8 v2, v2, 0xa

    .line 367
    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method private a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 389
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    const-string v3, "path"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    invoke-virtual {v1, v0}, Lorg/apache/commons/a/a/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_1
    const-string v3, "linkpath"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 8419
    iput-object v0, v1, Lorg/apache/commons/a/a/a/a;->g:Ljava/lang/String;

    goto :goto_0

    .line 395
    :cond_2
    const-string v3, "gid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 8455
    iput v0, v1, Lorg/apache/commons/a/a/a/a;->c:I

    goto :goto_0

    .line 397
    :cond_3
    const-string v3, "gname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 398
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 8491
    iput-object v0, v1, Lorg/apache/commons/a/a/a/a;->i:Ljava/lang/String;

    goto :goto_0

    .line 399
    :cond_4
    const-string v3, "uid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 400
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 9437
    iput v0, v1, Lorg/apache/commons/a/a/a/a;->b:I

    goto :goto_0

    .line 401
    :cond_5
    const-string v3, "uname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 402
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 9473
    iput-object v0, v1, Lorg/apache/commons/a/a/a/a;->h:Ljava/lang/String;

    goto :goto_0

    .line 403
    :cond_6
    const-string v3, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 404
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 9594
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_7

    .line 9595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size is out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9597
    :cond_7
    iput-wide v4, v1, Lorg/apache/commons/a/a/a/a;->d:J

    goto/16 :goto_0

    .line 405
    :cond_8
    const-string v3, "mtime"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 406
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    .line 10523
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v1, Lorg/apache/commons/a/a/a/a;->e:J

    goto/16 :goto_0

    .line 407
    :cond_9
    const-string v3, "SCHILY.devminor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 408
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 10643
    if-gez v0, :cond_a

    .line 10644
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Minor device number is out of range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10647
    :cond_a
    iput v0, v1, Lorg/apache/commons/a/a/a/a;->k:I

    goto/16 :goto_0

    .line 409
    :cond_b
    const-string v3, "SCHILY.devmajor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 11618
    if-gez v0, :cond_c

    .line 11619
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Major device number is out of range: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11622
    :cond_c
    iput v0, v1, Lorg/apache/commons/a/a/a/a;->j:I

    goto/16 :goto_0

    .line 413
    :cond_d
    return-void
.end method

.method private b()[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 308
    iget-boolean v2, p0, Lorg/apache/commons/a/a/a/b;->e:Z

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 321
    :goto_0
    return-object v0

    .line 312
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/a/a/a/b;->b:Lorg/apache/commons/a/a/a/d;

    invoke-virtual {v2}, Lorg/apache/commons/a/a/a/d;->a()[B

    move-result-object v2

    .line 314
    if-nez v2, :cond_2

    .line 315
    iput-boolean v0, p0, Lorg/apache/commons/a/a/a/b;->e:Z

    .line 321
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/apache/commons/a/a/a/b;->e:Z

    if-eqz v0, :cond_6

    move-object v0, v1

    goto :goto_0

    .line 316
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/a/a/a/b;->b:Lorg/apache/commons/a/a/a/d;

    invoke-virtual {v3, v2}, Lorg/apache/commons/a/a/a/d;->a([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 317
    iput-boolean v0, p0, Lorg/apache/commons/a/a/a/b;->e:Z

    .line 318
    iget-object v3, p0, Lorg/apache/commons/a/a/a/b;->b:Lorg/apache/commons/a/a/a/d;

    .line 7421
    iget-object v4, v3, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    .line 7422
    if-eqz v4, :cond_3

    .line 7423
    iget-object v5, v3, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    iget v6, v3, Lorg/apache/commons/a/a/a/d;->d:I

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->mark(I)V

    .line 7426
    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/commons/a/a/a/d;->a()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/a/a/a/d;->a([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_4

    .line 7428
    :goto_2
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 7429
    iget-object v0, v3, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    .line 7426
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 7428
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_5

    .line 7429
    iget-object v1, v3, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    :cond_5
    throw v0

    :cond_6
    move-object v0, v2

    .line 321
    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 11657
    iget-boolean v0, v0, Lorg/apache/commons/a/a/a/a;->l:Z

    .line 428
    if-eqz v0, :cond_1

    .line 431
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/a/a/a/b;->b()[B

    move-result-object v0

    .line 432
    iget-boolean v1, p0, Lorg/apache/commons/a/a/a/b;->e:Z

    if-eqz v1, :cond_2

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    new-instance v1, Lorg/apache/commons/a/a/a/c;

    invoke-direct {v1, v0}, Lorg/apache/commons/a/a/a/c;-><init>([B)V

    .line 12061
    iget-boolean v0, v1, Lorg/apache/commons/a/a/a/c;->a:Z

    .line 440
    if-nez v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/apache/commons/a/a/a/a;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 215
    iget-boolean v1, p0, Lorg/apache/commons/a/a/a/b;->e:Z

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-object v0

    .line 219
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    if-eqz v1, :cond_4

    .line 220
    iget-wide v4, p0, Lorg/apache/commons/a/a/a/b;->f:J

    iget-wide v6, p0, Lorg/apache/commons/a/a/a/b;->g:J

    sub-long/2addr v4, v6

    .line 222
    :goto_1
    cmp-long v1, v4, v8

    if-lez v1, :cond_3

    .line 223
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/a/a/a/b;->skip(J)J

    move-result-wide v6

    .line 224
    cmp-long v1, v6, v8

    if-gtz v1, :cond_2

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to skip current tar entry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_2
    sub-long/2addr v4, v6

    .line 229
    goto :goto_1

    .line 231
    :cond_3
    iput-object v0, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    .line 234
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/a/a/a/b;->b()[B

    move-result-object v1

    .line 236
    iget-boolean v4, p0, Lorg/apache/commons/a/a/a/b;->e:Z

    if-eqz v4, :cond_5

    .line 237
    iput-object v0, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    goto :goto_0

    .line 242
    :cond_5
    :try_start_0
    new-instance v4, Lorg/apache/commons/a/a/a/a;

    iget-object v5, p0, Lorg/apache/commons/a/a/a/b;->j:Lorg/apache/commons/a/a/b/b;

    invoke-direct {v4, v1, v5}, Lorg/apache/commons/a/a/a/a;-><init>([BLorg/apache/commons/a/a/b/b;)V

    iput-object v4, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    iput-wide v8, p0, Lorg/apache/commons/a/a/a/b;->g:J

    .line 249
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 3584
    iget-wide v4, v1, Lorg/apache/commons/a/a/a/a;->d:J

    .line 249
    iput-wide v4, p0, Lorg/apache/commons/a/a/a/b;->f:J

    .line 251
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 3684
    iget-byte v4, v1, Lorg/apache/commons/a/a/a/a;->f:B

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_6

    iget-object v1, v1, Lorg/apache/commons/a/a/a/a;->a:Ljava/lang/String;

    const-string v4, "././@LongLink"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 251
    :goto_2
    if-eqz v1, :cond_9

    .line 253
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 255
    :goto_3
    iget-object v4, p0, Lorg/apache/commons/a/a/a/b;->d:[B

    invoke-virtual {p0, v4}, Lorg/apache/commons/a/a/a/b;->read([B)I

    move-result v4

    if-ltz v4, :cond_7

    .line 256
    iget-object v5, p0, Lorg/apache/commons/a/a/a/b;->d:[B

    invoke-virtual {v1, v5, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error detected parsing the header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 246
    throw v1

    :cond_6
    move v1, v3

    .line 3684
    goto :goto_2

    .line 4446
    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/a/a/a/b;->a()Lorg/apache/commons/a/a/a/a;

    .line 259
    iget-object v4, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    if-eqz v4, :cond_0

    .line 264
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 266
    array-length v0, v1

    move v4, v0

    .line 267
    :goto_4
    if-lez v4, :cond_8

    add-int/lit8 v0, v4, -0x1

    aget-byte v0, v1, v0

    if-nez v0, :cond_8

    .line 268
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_4

    .line 270
    :cond_8
    array-length v0, v1

    if-eq v4, v0, :cond_f

    .line 271
    new-array v0, v4, [B

    .line 272
    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    :goto_5
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    iget-object v4, p0, Lorg/apache/commons/a/a/a/b;->j:Lorg/apache/commons/a/a/b/b;

    invoke-interface {v4, v0}, Lorg/apache/commons/a/a/b/b;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/a/a/a/a;->a(Ljava/lang/String;)V

    .line 279
    :cond_9
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 4697
    iget-byte v1, v0, Lorg/apache/commons/a/a/a/a;->f:B

    const/16 v4, 0x78

    if-eq v1, v4, :cond_a

    iget-byte v0, v0, Lorg/apache/commons/a/a/a/a;->f:B

    const/16 v1, 0x58

    if-ne v0, v1, :cond_d

    :cond_a
    move v0, v2

    .line 279
    :goto_6
    if-eqz v0, :cond_b

    .line 5325
    invoke-static {p0}, Lorg/apache/commons/a/a/a/b;->a(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0

    .line 5446
    invoke-virtual {p0}, Lorg/apache/commons/a/a/a/b;->a()Lorg/apache/commons/a/a/a/a;

    .line 5327
    invoke-direct {p0, v0}, Lorg/apache/commons/a/a/a/b;->a(Ljava/util/Map;)V

    .line 283
    :cond_b
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 5675
    iget-byte v0, v0, Lorg/apache/commons/a/a/a/a;->f:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_e

    move v0, v2

    .line 283
    :goto_7
    if-eqz v0, :cond_c

    .line 284
    invoke-direct {p0}, Lorg/apache/commons/a/a/a/b;->c()V

    .line 291
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    .line 6584
    iget-wide v0, v0, Lorg/apache/commons/a/a/a/a;->d:J

    .line 291
    iput-wide v0, p0, Lorg/apache/commons/a/a/a/b;->f:J

    .line 292
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->i:Lorg/apache/commons/a/a/a/a;

    goto/16 :goto_0

    :cond_d
    move v0, v3

    .line 4697
    goto :goto_6

    :cond_e
    move v0, v3

    .line 5675
    goto :goto_7

    :cond_f
    move-object v0, v1

    goto :goto_5
.end method

.method public final available()I
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lorg/apache/commons/a/a/a/b;->f:J

    iget-wide v2, p0, Lorg/apache/commons/a/a/a/b;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 160
    const v0, 0x7fffffff

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/a/a/a/b;->f:J

    iget-wide v2, p0, Lorg/apache/commons/a/a/a/b;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->b:Lorg/apache/commons/a/a/a/d;

    .line 1392
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    if-eqz v1, :cond_4

    .line 2377
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 2378
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2381
    :cond_0
    iget v1, v0, Lorg/apache/commons/a/a/a/d;->g:I

    if-lez v1, :cond_2

    .line 3361
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    if-nez v1, :cond_1

    .line 3362
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3365
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    iget-object v2, v0, Lorg/apache/commons/a/a/a/d;->e:[B

    iget v3, v0, Lorg/apache/commons/a/a/a/d;->c:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 3366
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 3368
    iput v4, v0, Lorg/apache/commons/a/a/a/d;->g:I

    .line 3369
    iget v1, v0, Lorg/apache/commons/a/a/a/d;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/commons/a/a/a/d;->f:I

    .line 3370
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->e:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 1395
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v1, v2, :cond_3

    .line 1397
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1399
    iput-object v5, v0, Lorg/apache/commons/a/a/a/d;->b:Ljava/io/OutputStream;

    :cond_3
    :goto_0
    return-void

    .line 1401
    :cond_4
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 1402
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v1, v2, :cond_5

    .line 1403
    iget-object v1, v0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1405
    :cond_5
    iput-object v5, v0, Lorg/apache/commons/a/a/a/d;->a:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 464
    .line 466
    iget-wide v0, p0, Lorg/apache/commons/a/a/a/b;->g:J

    iget-wide v4, p0, Lorg/apache/commons/a/a/a/b;->f:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 467
    const/4 v0, -0x1

    .line 527
    :goto_0
    return v0

    .line 470
    :cond_0
    int-to-long v0, p3

    iget-wide v4, p0, Lorg/apache/commons/a/a/a/b;->g:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Lorg/apache/commons/a/a/a/b;->f:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 471
    iget-wide v0, p0, Lorg/apache/commons/a/a/a/b;->f:J

    iget-wide v4, p0, Lorg/apache/commons/a/a/a/b;->g:J

    sub-long/2addr v0, v4

    long-to-int p3, v0

    .line 474
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    if-eqz v0, :cond_8

    .line 475
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    array-length v0, v0

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    array-length v0, v0

    .line 478
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 481
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    .line 491
    :goto_2
    add-int/lit8 v2, v0, 0x0

    .line 492
    sub-int v1, p3, v0

    .line 493
    add-int/2addr p2, v0

    .line 496
    :goto_3
    if-lez v1, :cond_7

    .line 497
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->b:Lorg/apache/commons/a/a/a/d;

    invoke-virtual {v0}, Lorg/apache/commons/a/a/a/d;->a()[B

    move-result-object v4

    .line 499
    if-nez v4, :cond_4

    .line 501
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected EOF with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes unread. Occured at byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12135
    iget-wide v2, p0, Lorg/apache/commons/a/a/b;->a:J

    .line 501
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, p3

    .line 475
    goto :goto_1

    .line 483
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 484
    new-array v2, v1, [B

    .line 486
    iget-object v4, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    invoke-static {v4, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iput-object v2, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    goto :goto_2

    .line 504
    :cond_4
    array-length v0, v4

    .line 13092
    int-to-long v6, v0

    .line 13103
    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-eqz v0, :cond_5

    .line 13104
    iget-wide v8, p0, Lorg/apache/commons/a/a/b;->a:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/a/a/b;->a:J

    .line 506
    :cond_5
    array-length v0, v4

    .line 508
    if-le v0, v1, :cond_6

    .line 509
    invoke-static {v4, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    sub-int v5, v0, v1

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    .line 513
    iget-object v5, p0, Lorg/apache/commons/a/a/a/b;->h:[B

    sub-int/2addr v0, v1

    invoke-static {v4, v1, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 520
    :goto_4
    add-int/2addr v2, v0

    .line 521
    sub-int/2addr v1, v0

    .line 522
    add-int/2addr p2, v0

    .line 523
    goto :goto_3

    .line 517
    :cond_6
    invoke-static {v4, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 525
    :cond_7
    iget-wide v0, p0, Lorg/apache/commons/a/a/a/b;->g:J

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/commons/a/a/a/b;->g:J

    move v0, v2

    .line 527
    goto/16 :goto_0

    :cond_8
    move v2, v3

    move v1, p3

    goto :goto_3
.end method

.method public final declared-synchronized reset()V
    .locals 0

    .prologue
    .line 199
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final skip(J)J
    .locals 5

    .prologue
    .line 181
    move-wide v2, p1

    .line 182
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->c:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/a/a/a/b;->c:[B

    array-length v0, v0

    int-to-long v0, v0

    :goto_1
    long-to-int v0, v0

    .line 185
    iget-object v1, p0, Lorg/apache/commons/a/a/a/b;->c:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/commons/a/a/a/b;->read([BII)I

    move-result v0

    .line 186
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 189
    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 190
    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 183
    goto :goto_1

    .line 191
    :cond_1
    sub-long v0, p1, v2

    return-wide v0
.end method
