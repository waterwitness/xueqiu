.class public final Lcom/sleepycat/b/i/c/a/c;
.super Lcom/sleepycat/b/p/aj;
.source "LogFileFeeder.java"


# instance fields
.field final a:Ljava/security/MessageDigest;

.field private final b:Lcom/sleepycat/b/i/c/a/a;

.field private final c:Lcom/sleepycat/b/i/h/o;

.field private d:I

.field private e:Lcom/sleepycat/b/o/b;

.field private final f:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/a/a;Ljava/nio/channels/SocketChannel;)V
    .locals 4

    .prologue
    .line 90
    .line 3122
    iget-object v0, p1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 90
    const-string v1, "Log File Feeder"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    .line 92
    iput-object p1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 93
    iget-object v0, p1, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    .line 94
    new-instance v0, Lcom/sleepycat/b/i/h/o;

    iget-object v1, p1, Lcom/sleepycat/b/i/c/a/a;->e:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v0, p2, v1}, Lcom/sleepycat/b/i/h/o;-><init>(Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    .line 97
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    .line 4122
    iget-object v2, p1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 99
    const-string v3, "The SHA1 algorithm was not made available by the security provider"

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method private static a(Ljava/io/File;J)Ljava/security/MessageDigest;
    .locals 7

    .prologue
    .line 321
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 327
    const/16 v2, 0x2000

    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 328
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_1

    .line 329
    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    .line 330
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 332
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 333
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Premature EOF. Was expecting: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0

    .line 323
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 336
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    int-to-long v4, v4

    sub-long/2addr p1, v4

    .line 338
    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 342
    return-object v0
.end method

.method private a(Lcom/sleepycat/b/i/c/a/d;)V
    .locals 12

    .prologue
    .line 239
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/b/i/c/a/m;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/i/c/a/d;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/a/m;

    .line 241
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/a/m;->c()Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 25122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 25375
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 249
    new-instance v8, Ljava/io/File;

    .line 25992
    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 25993
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 25994
    sget-boolean v5, Lcom/sleepycat/b/g/m;->Y:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/sleepycat/b/i/h/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :catch_0
    move-exception v0

    .line 28036
    iget-object v1, v0, Lcom/sleepycat/b/i/h/g;->a:Lcom/sleepycat/b/i/h/d;

    .line 299
    instance-of v1, v1, Lcom/sleepycat/b/i/c/a/e;

    if-eqz v1, :cond_8

    .line 300
    return-void

    .line 25995
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 25997
    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7, v4}, Lcom/sleepycat/b/g/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Log file not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 256
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 257
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 260
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/i/c/a/j;

    .line 262
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/a/j;->c()J

    move-result-wide v10

    cmp-long v2, v10, v4

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/a/j;->d()J

    move-result-wide v10

    cmp-long v2, v10, v6

    if-nez v2, :cond_3

    .line 26314
    iget-object v9, v1, Lcom/sleepycat/b/i/c/a/j;->b:[B

    .line 268
    :goto_1
    instance-of v1, v0, Lcom/sleepycat/b/i/c/a/i;

    if-eqz v1, :cond_6

    .line 269
    if-eqz v9, :cond_4

    move-object v8, v9

    .line 277
    :goto_2
    new-instance v1, Lcom/sleepycat/b/i/c/a/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/b/i/c/a/j;-><init>(Lcom/sleepycat/b/i/c/a/d;Ljava/lang/String;JJ[B)V

    .line 293
    :goto_3
    array-length v0, v8

    if-lez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {p1, v1, v0}, Lcom/sleepycat/b/i/c/a/d;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    goto/16 :goto_0

    .line 262
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 271
    :cond_4
    check-cast v0, Lcom/sleepycat/b/i/c/a/i;

    .line 27273
    iget-boolean v0, v0, Lcom/sleepycat/b/i/c/a/i;->a:Z

    .line 271
    if-eqz v0, :cond_5

    .line 272
    invoke-static {v8, v4, v5}, Lcom/sleepycat/b/i/c/a/c;->a(Ljava/io/File;J)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    goto :goto_2

    .line 275
    :cond_5
    const/4 v0, 0x0

    new-array v8, v0, [B

    goto :goto_2

    .line 280
    :cond_6
    new-instance v1, Lcom/sleepycat/b/i/c/a/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/i/c/a/n;-><init>(Lcom/sleepycat/b/i/c/a/d;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {p1, v1, v0}, Lcom/sleepycat/b/i/c/a/d;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 283
    invoke-direct {p0, v8, v4, v5}, Lcom/sleepycat/b/i/c/a/c;->b(Ljava/io/File;J)[B

    move-result-object v8

    .line 284
    if-eqz v9, :cond_7

    invoke-static {v9, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    .line 286
    const-string v0, "Inconsistent cached and computed digests"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 289
    :cond_7
    new-instance v1, Lcom/sleepycat/b/i/c/a/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/b/i/c/a/h;-><init>(Lcom/sleepycat/b/i/c/a/d;Ljava/lang/String;JJ[B)V
    :try_end_1
    .catch Lcom/sleepycat/b/i/h/g; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 302
    :cond_8
    throw v0
.end method

.method private b(Lcom/sleepycat/b/i/c/a/d;)V
    .locals 5

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/b/i/c/a/k;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/i/c/a/d;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;

    .line 429
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    if-nez v0, :cond_1

    .line 430
    new-instance v0, Lcom/sleepycat/b/o/b;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 31122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 430
    invoke-direct {v0, v1}, Lcom/sleepycat/b/o/b;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    .line 431
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/o/b;->a()V

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/o/b;->c()[Ljava/lang/String;

    move-result-object v1

    .line 442
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 443
    aget-object v2, v1, v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    aget-object v2, v1, v0

    aget-object v3, v1, v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 442
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget v1, v0, Lcom/sleepycat/b/i/c/a/a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/i/c/a/a;->f:I

    goto :goto_0

    .line 449
    :cond_2
    new-instance v0, Lcom/sleepycat/b/i/c/a/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/i/c/a/l;-><init>(Lcom/sleepycat/b/i/c/a/d;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/i/c/a/d;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 450
    return-void
.end method

.method private b(Ljava/io/File;J)[B
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 365
    new-instance v4, Lcom/sleepycat/b/p/u;

    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 28122
    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 365
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/sleepycat/b/p/u;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 367
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 370
    :try_start_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 371
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 372
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 374
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    move v3, v2

    .line 379
    :goto_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 380
    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gez v1, :cond_1

    .line 28176
    iget-object v0, v4, Lcom/sleepycat/b/p/u;->c:Lcom/sleepycat/b/p/v;

    sget-object v1, Lcom/sleepycat/b/p/v;->a:Lcom/sleepycat/b/p/v;

    if-eq v0, v1, :cond_3

    .line 28181
    iget-wide v0, v4, Lcom/sleepycat/b/p/u;->b:J

    iget-object v2, v4, Lcom/sleepycat/b/p/u;->a:Lcom/sleepycat/b/c/ad;

    .line 28375
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 28506
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/sleepycat/b/g/m;->a(Z)Ljava/lang/Long;

    move-result-object v2

    .line 28181
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    .line 28186
    const-string v0, "Entry is incomplete"

    .line 29368
    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/u;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/o/d;

    move-result-object v0

    .line 28186
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v0

    .line 374
    :cond_0
    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 386
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    .line 388
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 395
    :goto_2
    invoke-virtual {v4, v0, v1, v8}, Lcom/sleepycat/b/p/u;->a([BII)V

    .line 396
    iget-object v9, p0, Lcom/sleepycat/b/i/c/a/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v9, v0, v1, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 397
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v1, v3

    move v3, v1

    .line 398
    goto :goto_1

    .line 392
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 393
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move v1, v2

    goto :goto_2

    .line 400
    :cond_3
    int-to-long v0, v3

    cmp-long v0, v0, p2

    if-eqz v0, :cond_4

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File length:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not match the number of bytes that were transmitted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 30122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sent file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 414
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/a/c;->a(Ljava/util/logging/Logger;)V

    .line 112
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->a:Ljava/util/Map;

    iget v1, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 5122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Log file feeder for client:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is shutdown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 125
    const v0, 0x493e0

    return v0
.end method

.method public final run()V
    .locals 7

    .prologue
    .line 135
    new-instance v3, Lcom/sleepycat/b/i/c/a/d;

    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->e:Lcom/sleepycat/b/i/c/b/x;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 6122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 135
    invoke-direct {v3, v0, v1}, Lcom/sleepycat/b/i/c/a/d;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/c/ad;)V

    .line 6493
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 6494
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 7122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 6494
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Log File Feeder accepted connection from "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 6497
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const v1, 0x493e0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6503
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 7459
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/b/i/h/b;

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/i/c/a/d;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/b;

    .line 7462
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/b;->c()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    .line 7463
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->b:Ljava/util/Map;

    iget v2, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/i/c/a/b;

    .line 7464
    if-eqz v1, :cond_0

    .line 7465
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/a/b;->a()Lcom/sleepycat/b/o/b;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    .line 7467
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->a:Ljava/util/Map;

    iget v2, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7468
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/b;->d()I

    move-result v1

    .line 8222
    iget v2, v3, Lcom/sleepycat/b/i/h/a;->B:I

    .line 7468
    if-eq v1, v2, :cond_1

    .line 7469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client requested protocol version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/b;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but the server version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9222
    iget v1, v3, Lcom/sleepycat/b/i/h/a;->B:I

    .line 7469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7477
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 10122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 7477
    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7479
    :cond_1
    new-instance v0, Lcom/sleepycat/b/i/h/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/sleepycat/b/i/h/j;-><init>(Lcom/sleepycat/b/i/h/a;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/i/c/a/d;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 10204
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const-class v1, Lcom/sleepycat/b/i/c/a/f;

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/i/c/a/d;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;

    .line 10205
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 11145
    iget-object v1, v0, Lcom/sleepycat/b/i/c/a/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 12136
    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 11145
    add-int/2addr v0, v1

    .line 10205
    add-int/lit8 v2, v0, -0x1

    .line 10207
    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 10208
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 10209
    iget-object v4, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 13122
    iget-object v4, v4, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 10209
    instance-of v4, v4, Lcom/sleepycat/b/i/c/aj;

    if-eqz v4, :cond_2

    .line 10211
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 14122
    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 10211
    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 14887
    iget-object v1, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 15394
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 16240
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/h/af;->size()I

    move-result v1

    .line 10212
    add-int/2addr v2, v1

    .line 16807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 17775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 18110
    iget-object v1, v0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 18114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 10218
    :cond_2
    new-instance v4, Lcom/sleepycat/b/i/c/a/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/sleepycat/b/i/c/a/g;-><init>(Lcom/sleepycat/b/i/c/a/d;ILcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/b/i/c/a/d;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 142
    invoke-direct {p0, v3}, Lcom/sleepycat/b/i/c/a/c;->b(Lcom/sleepycat/b/i/c/a/d;)V

    .line 143
    invoke-direct {p0, v3}, Lcom/sleepycat/b/i/c/a/c;->a(Lcom/sleepycat/b/i/c/a/d;)V

    .line 146
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/o/b;->b()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/b/i/h/g; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/c;->b()V

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/o/b;->b()V

    .line 189
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 24122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Log file feeder for client: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 192
    return-void

    .line 149
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 18122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 149
    const-string v2, "Ignoring ClosedByInterruptException normal shutdown"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 171
    :goto_3
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/c;->b()V

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/o/b;->b()V

    .line 189
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 24122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Log file feeder for client: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 152
    :catch_1
    move-exception v0

    .line 153
    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 19122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " IO Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    :try_start_5
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 171
    :goto_5
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/c;->b()V

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/o/b;->b()V

    .line 189
    :cond_5
    :goto_6
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 24122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Log file feeder for client: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 155
    :catch_2
    move-exception v0

    .line 156
    :try_start_6
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 20122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Protocol Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    :try_start_7
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 171
    :goto_7
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/c;->b()V

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/o/b;->b()V

    .line 189
    :cond_6
    :goto_8
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 24122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Log file feeder for client: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 158
    :catch_3
    move-exception v0

    .line 159
    :try_start_8
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 21122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 159
    sget-object v3, Lcom/sleepycat/b/c/ac;->y:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    :try_start_9
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->c:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 171
    :goto_9
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/c;->b()V

    .line 173
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    if-eqz v1, :cond_7

    .line 174
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 175
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-virtual {v1}, Lcom/sleepycat/b/o/b;->b()V

    .line 189
    :cond_7
    :goto_a
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 24122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log file feeder for client: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exited"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 164
    throw v0

    .line 166
    :catch_4
    move-exception v1

    .line 167
    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 22122
    iget-object v3, v3, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Log File feeder io exception on channel close: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_9

    .line 182
    :cond_8
    new-instance v1, Lcom/sleepycat/b/i/c/a/b;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    iget-object v4, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-wide v4, v4, Lcom/sleepycat/b/i/c/a/a;->g:J

    iget-object v6, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/i/c/a/b;-><init>(Lcom/sleepycat/b/i/c/a/a;IJLcom/sleepycat/b/o/b;)V

    .line 185
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 23122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Lease created for node: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_a

    .line 166
    :catch_5
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 22122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log File feeder io exception on channel close: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 182
    :cond_9
    new-instance v1, Lcom/sleepycat/b/i/c/a/b;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-wide v4, v0, Lcom/sleepycat/b/i/c/a/a;->g:J

    iget-object v6, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/i/c/a/b;-><init>(Lcom/sleepycat/b/i/c/a/a;IJLcom/sleepycat/b/o/b;)V

    .line 185
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 23122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lease created for node: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 166
    :catch_6
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 22122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log File feeder io exception on channel close: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 182
    :cond_a
    new-instance v1, Lcom/sleepycat/b/i/c/a/b;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-wide v4, v0, Lcom/sleepycat/b/i/c/a/a;->g:J

    iget-object v6, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/i/c/a/b;-><init>(Lcom/sleepycat/b/i/c/a/a;IJLcom/sleepycat/b/o/b;)V

    .line 185
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 23122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lease created for node: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 166
    :catch_7
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 22122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log File feeder io exception on channel close: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 182
    :cond_b
    new-instance v1, Lcom/sleepycat/b/i/c/a/b;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-wide v4, v0, Lcom/sleepycat/b/i/c/a/a;->g:J

    iget-object v6, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/i/c/a/b;-><init>(Lcom/sleepycat/b/i/c/a/a;IJLcom/sleepycat/b/o/b;)V

    .line 185
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 23122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lease created for node: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 166
    :catch_8
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 22122
    iget-object v2, v2, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Log File feeder io exception on channel close: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_c
    new-instance v1, Lcom/sleepycat/b/i/c/a/b;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-wide v4, v0, Lcom/sleepycat/b/i/c/a/a;->g:J

    iget-object v6, p0, Lcom/sleepycat/b/i/c/a/c;->e:Lcom/sleepycat/b/o/b;

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/i/c/a/b;-><init>(Lcom/sleepycat/b/i/c/a/a;IJLcom/sleepycat/b/o/b;)V

    .line 185
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/c;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/c;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 23122
    iget-object v1, v1, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lease created for node: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sleepycat/b/i/c/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
