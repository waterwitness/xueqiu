.class public Lcom/sleepycat/b/l/e;
.super Ljava/lang/Object;
.source "ChildReference.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field public a:Lcom/sleepycat/b/l/ac;

.field public b:J

.field public c:[B

.field d:B


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v2, 0x0

    sget-object v3, Lcom/sleepycat/b/l/w;->b:[B

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/l/ac;[BJI)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/l/ac;[BJ)V
    .locals 7

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/l/ac;[BJI)V

    .line 68
    return-void
.end method

.method public constructor <init>([BJB)V
    .locals 8

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v2, 0x0

    or-int/lit8 v6, p4, 0x2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/l/ac;[BJI)V

    .line 78
    return-void
.end method

.method private a(Lcom/sleepycat/b/l/ac;[BJI)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 85
    iput-object p2, p0, Lcom/sleepycat/b/l/e;->c:[B

    .line 86
    iput-wide p3, p0, Lcom/sleepycat/b/l/e;->b:J

    .line 87
    int-to-byte v0, p5

    iput-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    .line 88
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 243
    iget-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    .line 244
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 251
    iget-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 258
    iget-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sleepycat/b/l/e;->c:[B

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v0

    iget-wide v2, p0, Lcom/sleepycat/b/l/e;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    if-nez v0, :cond_1

    .line 127
    iget-wide v0, p0, Lcom/sleepycat/b/l/e;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "NULL_LSN without KnownDeleted"

    iget-wide v2, p0, Lcom/sleepycat/b/l/e;->b:J

    iget-byte v1, p0, Lcom/sleepycat/b/l/e;->d:B

    invoke-static {v0, p2, v2, v3, v1}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 3133
    :cond_0
    iget-object v1, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 3371
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 137
    iget-wide v2, p0, Lcom/sleepycat/b/l/e;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/am;->d(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ac;

    .line 138
    iget-wide v2, p0, Lcom/sleepycat/b/l/e;->b:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/sleepycat/b/l/ac;->a(Lcom/sleepycat/b/c/i;J)V

    .line 139
    iput-object v0, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 140
    if-eqz p2, :cond_1

    .line 141
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    invoke-virtual {p2, v0, v2}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/ac;Lcom/sleepycat/b/l/ac;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/aa; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->f()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    new-instance v2, Lcom/sleepycat/b/aa;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/sleepycat/b/l/e;->b:J

    iget-byte v5, p0, Lcom/sleepycat/b/l/e;->d:B

    invoke-static {v4, p2, v6, v7, v5}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 159
    :catch_1
    move-exception v0

    .line 160
    iget-wide v2, p0, Lcom/sleepycat/b/l/e;->b:J

    iget-byte v1, p0, Lcom/sleepycat/b/l/e;->d:B

    invoke-static {v4, p2, v2, v3, v1}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;)V

    .line 162
    throw v0

    .line 163
    :catch_2
    move-exception v0

    .line 164
    new-instance v2, Lcom/sleepycat/b/aa;

    sget-object v3, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/sleepycat/b/l/e;->b:J

    iget-byte v5, p0, Lcom/sleepycat/b/l/e;->d:B

    invoke-static {v4, p2, v6, v7, v5}, Lcom/sleepycat/b/l/j;->a(Ljava/lang/String;Lcom/sleepycat/b/l/j;JB)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/16 v8, 0xa

    const/4 v1, 0x0

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    iget-wide v4, p0, Lcom/sleepycat/b/l/e;->b:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 4025
    const-string v3, "                                                                                                                                "

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v3, "<lsn/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    iget-object v3, p0, Lcom/sleepycat/b/l/e;->c:[B

    if-nez v3, :cond_1

    .line 5025
    const-string v3, "                                                                                                                                "

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v3, "<key/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    iget-object v3, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    if-nez v3, :cond_2

    .line 6025
    const-string v3, "                                                                                                                                "

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v3, "<target/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7025
    const-string v3, "                                                                                                                                "

    invoke-virtual {v3, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v3, "<knownDeleted val=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v3, "<pendingDeleted val=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->e()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v3, "<dirty val=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7265
    iget-byte v4, p0, Lcom/sleepycat/b/l/e;->d:B

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 379
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    iget-wide v4, p0, Lcom/sleepycat/b/l/e;->b:J

    invoke-static {v4, v5, p1}, Lcom/sleepycat/b/p/j;->b(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 364
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/b/l/e;->c:[B

    invoke-static {v3, p1}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 371
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    invoke-virtual {v3, p1, v0}, Lcom/sleepycat/b/l/ac;->a(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    move v0, v1

    .line 7265
    goto :goto_3
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/sleepycat/b/l/e;->b:J

    .line 223
    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->d()V

    .line 224
    return-void
.end method

.method a(Lcom/sleepycat/b/c/i;J)V
    .locals 2

    .prologue
    .line 230
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->d()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/b/l/e;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/l/ac;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 196
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 325
    const-string v0, "<ref kd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 326
    const-string v0, "\" pd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sleepycat/b/l/e;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v0, p0, Lcom/sleepycat/b/l/e;->c:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-wide v0, p0, Lcom/sleepycat/b/l/e;->b:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v0, "</ref>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sleepycat/b/l/e;->c:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 305
    iget-wide v0, p0, Lcom/sleepycat/b/l/e;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 306
    iget-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 307
    iget-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    .line 308
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 314
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 315
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/l/e;->c:[B

    .line 316
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/l/e;->b:J

    .line 317
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    .line 318
    iget-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/l/e;->d:B

    .line 319
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 337
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
