.class final Lcom/sleepycat/b/i/e/b;
.super Lcom/sleepycat/b/g/u;
.source "FeederReader.java"


# static fields
.field static final synthetic j:Z


# instance fields
.field private final k:Lcom/sleepycat/b/g/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    const-class v0, Lcom/sleepycat/b/i/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/b;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/g/u;-><init>(ILcom/sleepycat/b/c/ad;)V

    .line 3371
    iget-object v0, p2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 329
    iput-object v0, p0, Lcom/sleepycat/b/i/e/b;->k:Lcom/sleepycat/b/g/am;

    .line 330
    return-void
.end method

.method private a(JJ)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 365
    const/4 v1, 0x0

    .line 368
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v2

    .line 369
    iget-object v4, p0, Lcom/sleepycat/b/i/e/b;->k:Lcom/sleepycat/b/g/am;

    invoke-virtual {v4, v2, v3}, Lcom/sleepycat/b/g/am;->g(J)Lcom/sleepycat/b/g/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 370
    if-nez v1, :cond_1

    .line 421
    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Lcom/sleepycat/b/g/aa;->a()V

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 4138
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    .line 393
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 5102
    :cond_2
    iget-wide v2, v1, Lcom/sleepycat/b/g/aa;->b:J

    .line 398
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v2

    .line 400
    sub-long v2, p3, v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 403
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 404
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 405
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 406
    iget-object v4, p0, Lcom/sleepycat/b/i/e/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le v0, v4, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/i/e/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 410
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/b/i/e/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 411
    iget-object v4, p0, Lcom/sleepycat/b/i/e/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v4, v3, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 412
    iget-object v0, p0, Lcom/sleepycat/b/i/e/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 415
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/b/i/e/b;->a(JI)V

    .line 416
    iput-wide p3, p0, Lcom/sleepycat/b/i/e/b;->b:J

    .line 417
    iget-wide v2, p0, Lcom/sleepycat/b/i/e/b;->b:J

    iget-object v0, p0, Lcom/sleepycat/b/i/e/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/b/i/e/b;->c:J

    .line 418
    iget-object v0, p0, Lcom/sleepycat/b/i/e/b;->d:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    if-eqz v1, :cond_4

    .line 422
    invoke-virtual {v1}, Lcom/sleepycat/b/g/aa;->a()V

    .line 419
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 422
    invoke-virtual {v1}, Lcom/sleepycat/b/g/aa;->a()V

    .line 421
    :cond_5
    throw v0
.end method


# virtual methods
.method public final a(JJJZ)V
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/sleepycat/b/i/e/b;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-super/range {p0 .. p7}, Lcom/sleepycat/b/g/u;->a(JJJZ)V

    .line 354
    :cond_0
    return-void
.end method

.method protected final a(ZI)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 449
    sget-boolean v3, Lcom/sleepycat/b/i/e/b;->j:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 451
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/i/e/b;->b(I)V

    .line 6014
    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->a:J

    .line 457
    iget-wide v6, p0, Lcom/sleepycat/b/i/e/b;->c:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sleepycat/b/i/e/b;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 533
    :cond_1
    :goto_0
    return v0

    .line 475
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/i/e/b;->f:Lcom/sleepycat/b/g/m;

    .line 7014
    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->a:J

    .line 475
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 478
    :try_start_1
    iget-wide v4, p0, Lcom/sleepycat/b/i/e/b;->c:J

    iput-wide v4, p0, Lcom/sleepycat/b/i/e/b;->b:J

    .line 479
    iget-wide v4, p0, Lcom/sleepycat/b/i/e/b;->b:J

    invoke-virtual {p0, v3, v4, v5}, Lcom/sleepycat/b/i/e/b;->a(Lcom/sleepycat/b/g/j;J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    if-eqz v3, :cond_1

    .line 542
    invoke-virtual {v3}, Lcom/sleepycat/b/g/j;->a()V

    goto :goto_0

    .line 487
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/b/g/j;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 491
    if-eqz p1, :cond_5

    .line 492
    :try_start_3
    new-instance v0, Lcom/sleepycat/b/g/t;

    invoke-direct {v0}, Lcom/sleepycat/b/g/t;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 534
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 535
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem in ReadWindow.fill, reading from  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10014
    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->a:J

    .line 536
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 541
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 542
    invoke-virtual {v2}, Lcom/sleepycat/b/g/j;->a()V

    .line 541
    :cond_4
    throw v0

    .line 499
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sleepycat/b/i/e/b;->f:Lcom/sleepycat/b/g/m;

    .line 8014
    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->a:J

    .line 499
    const/4 v3, 0x1

    invoke-virtual {v0, v4, v5, v3}, Lcom/sleepycat/b/g/m;->a(JZ)Ljava/lang/Long;

    move-result-object v0

    .line 510
    if-nez v0, :cond_6

    .line 9014
    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->a:J

    .line 511
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 514
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/sleepycat/b/g/m;->h()I

    const-wide/16 v6, 0x26

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sleepycat/b/i/e/b;->a(JJ)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    if-eqz v3, :cond_8

    .line 541
    if-eqz v2, :cond_7

    .line 542
    invoke-virtual {v2}, Lcom/sleepycat/b/g/j;->a()V

    :cond_7
    move v0, v1

    .line 520
    goto :goto_0

    .line 527
    :cond_8
    :try_start_6
    iget-object v3, p0, Lcom/sleepycat/b/i/e/b;->f:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    .line 528
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 9052
    iget v0, v2, Lcom/sleepycat/b/g/j;->c:I

    .line 528
    invoke-virtual {p0, v4, v5, v0}, Lcom/sleepycat/b/i/e/b;->a(JI)V

    .line 529
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sleepycat/b/i/e/b;->b:J

    .line 530
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/sleepycat/b/i/e/b;->a(Lcom/sleepycat/b/g/j;J)Z

    move-result v0

    .line 532
    sget-boolean v3, Lcom/sleepycat/b/i/e/b;->j:Z

    if-nez v3, :cond_9

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FeederReader should find more data in next file"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 534
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 541
    :cond_9
    if-eqz v2, :cond_a

    .line 542
    invoke-virtual {v2}, Lcom/sleepycat/b/g/j;->a()V

    :cond_a
    move v0, v1

    .line 533
    goto/16 :goto_0

    .line 541
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 534
    :catch_2
    move-exception v0

    move-object v1, v3

    goto/16 :goto_1
.end method
