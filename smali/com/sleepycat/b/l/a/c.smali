.class public Lcom/sleepycat/b/l/a/c;
.super Ljava/lang/Object;
.source "DupConvert.java"


# static fields
.field public static final synthetic e:Z


# instance fields
.field public final a:Lcom/sleepycat/b/c/ad;

.field public final b:Lcom/sleepycat/b/c/p;

.field public final c:Z

.field public final d:Lcom/sleepycat/b/aw;

.field private f:Lcom/sleepycat/b/a/s;

.field private g:J

.field private h:Lcom/sleepycat/b/l/a;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/sleepycat/b/l/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/a/c;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/p;)V
    .locals 2

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    .line 137
    iput-object p2, p0, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 138
    sget-object v1, Lcom/sleepycat/b/b/d;->l:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/l/a/c;->c:Z

    .line 4373
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->K:Lcom/sleepycat/b/aw;

    .line 140
    if-eqz v0, :cond_0

    .line 5373
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->K:Lcom/sleepycat/b/aw;

    .line 140
    :goto_0
    iput-object v0, p0, Lcom/sleepycat/b/l/a/c;->d:Lcom/sleepycat/b/aw;

    .line 142
    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/sleepycat/b/aw;

    invoke-direct {v0}, Lcom/sleepycat/b/aw;-><init>()V

    goto :goto_0
.end method

.method public static a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)V
    .locals 7

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    instance-of v0, p1, Lcom/sleepycat/b/l/a/b;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sleepycat/b/l/a/a;

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->B()V

    .line 542
    const/4 v2, 0x0

    .line 24345
    :goto_1
    :try_start_0
    iget v0, p1, Lcom/sleepycat/b/l/j;->f:I

    .line 542
    if-ge v2, v0, :cond_2

    .line 543
    invoke-virtual {p1, v2}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v0

    .line 544
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/y;->a([BI)[B

    move-result-object v6

    .line 546
    invoke-virtual {p1, v2}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;J[B)V

    .line 542
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24685
    :cond_2
    iget-object v0, p1, Lcom/sleepycat/b/l/j;->g:[B

    .line 550
    array-length v1, v0

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/y;->a([BI)[B

    move-result-object v0

    .line 551
    invoke-virtual {p1, v0}, Lcom/sleepycat/b/l/j;->a([B)V

    .line 553
    sget-boolean v0, Lcom/sleepycat/b/l/a/c;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->K()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->C()V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/l/a/b;[B)V
    .locals 14

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/sleepycat/b/l/a/b;->B()V

    .line 400
    const/4 v2, 0x0

    move v10, v2

    .line 14345
    :goto_0
    :try_start_0
    iget v2, p1, Lcom/sleepycat/b/l/j;->f:I

    .line 400
    if-ge v10, v2, :cond_8

    .line 401
    invoke-virtual {p1, v10}, Lcom/sleepycat/b/l/a/b;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/j;

    .line 402
    instance-of v3, v2, Lcom/sleepycat/b/l/a/a;

    if-eqz v3, :cond_7

    .line 403
    move-object v0, v2

    check-cast v0, Lcom/sleepycat/b/l/a/a;

    move-object v9, v0

    .line 404
    invoke-virtual {v9}, Lcom/sleepycat/b/l/a/a;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    const/4 v3, 0x0

    move v4, v3

    .line 15345
    :goto_1
    :try_start_1
    iget v3, v9, Lcom/sleepycat/b/l/j;->f:I

    .line 406
    if-ge v4, v3, :cond_4

    .line 407
    invoke-direct {p0, v9, v4}, Lcom/sleepycat/b/l/a/c;->a(Lcom/sleepycat/b/l/a;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 15465
    invoke-virtual {v9, v4}, Lcom/sleepycat/b/l/a/a;->h(I)[B

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/sleepycat/b/c/y;->b([B[B)[B

    move-result-object v5

    .line 15477
    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/a;->P()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3, v5}, Lcom/sleepycat/b/l/a;->b([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 15480
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/a;->N()V

    .line 15483
    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/a;->C()V

    .line 15484
    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sleepycat/b/c/ad;->b(Z)V

    .line 15717
    iget-object v3, v9, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 16485
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 15487
    sget-object v6, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v3, v5, v6}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/l/a;

    iput-object v3, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    .line 15491
    :cond_1
    new-instance v3, Lcom/sleepycat/b/l/e;

    invoke-virtual {v9, v4}, Lcom/sleepycat/b/l/a/a;->k(I)J

    move-result-wide v6

    .line 17032
    iget-object v8, v9, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v8, v8, v4

    .line 15491
    invoke-direct {v3, v5, v6, v7, v8}, Lcom/sleepycat/b/l/e;-><init>([BJB)V

    .line 15495
    iget-object v6, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    invoke-virtual {v6, v3}, Lcom/sleepycat/b/l/a;->b(Lcom/sleepycat/b/l/e;)I

    move-result v3

    .line 15497
    const/high16 v6, 0x20000

    and-int/2addr v6, v3

    if-nez v6, :cond_2

    .line 15498
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key not inserted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v5, v3}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17717
    iget-object v3, v9, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 18496
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 15498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v9}, Lcom/sleepycat/b/l/a/a;->C()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 446
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Lcom/sleepycat/b/l/a/b;->C()V

    throw v2

    .line 15503
    :cond_2
    const v5, -0x20001

    and-int/2addr v3, v5

    :try_start_3
    iput v3, p0, Lcom/sleepycat/b/l/a/c;->i:I

    .line 15509
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v3, v5}, Lcom/sleepycat/b/l/a/a;->a(ILcom/sleepycat/b/l/ac;[B)V

    .line 15511
    iget-wide v6, p0, Lcom/sleepycat/b/l/a/c;->g:J

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    iput-wide v6, p0, Lcom/sleepycat/b/l/a/c;->g:J

    .line 406
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_1

    .line 411
    :cond_4
    sget-boolean v3, Lcom/sleepycat/b/l/a/c;->e:Z

    if-nez v3, :cond_5

    invoke-virtual {v9}, Lcom/sleepycat/b/l/a/a;->K()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 414
    :cond_5
    invoke-virtual {v9}, Lcom/sleepycat/b/l/a/a;->g()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 415
    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->f:Lcom/sleepycat/b/a/s;

    invoke-virtual {v9}, Lcom/sleepycat/b/l/a/a;->g()J

    move-result-wide v4

    .line 19108
    sget-object v6, Lcom/sleepycat/b/g/af;->o:Lcom/sleepycat/b/g/af;

    .line 415
    const/4 v7, 0x0

    .line 19717
    iget-object v8, v9, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 415
    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/a/s;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    :cond_6
    :try_start_4
    invoke-virtual {v9}, Lcom/sleepycat/b/l/a/a;->C()V

    .line 427
    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v10, v3, v4}, Lcom/sleepycat/b/l/a/b;->a(ILcom/sleepycat/b/l/ac;[B)V

    .line 428
    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    .line 20492
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 428
    invoke-virtual {v3, v2}, Lcom/sleepycat/b/c/al;->b(Lcom/sleepycat/b/l/j;)V

    .line 400
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_0

    .line 423
    :cond_7
    move-object v0, v2

    check-cast v0, Lcom/sleepycat/b/l/a/b;

    move-object v3, v0

    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/sleepycat/b/l/a/c;->a(Lcom/sleepycat/b/l/a/b;[B)V

    goto :goto_2

    .line 430
    :cond_8
    sget-boolean v2, Lcom/sleepycat/b/l/a/c;->e:Z

    if-nez v2, :cond_9

    invoke-virtual {p1}, Lcom/sleepycat/b/l/a/b;->K()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 433
    :cond_9
    invoke-virtual {p1}, Lcom/sleepycat/b/l/a/b;->g()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 434
    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->f:Lcom/sleepycat/b/a/s;

    invoke-virtual {p1}, Lcom/sleepycat/b/l/a/b;->g()J

    move-result-wide v4

    .line 21141
    sget-object v6, Lcom/sleepycat/b/g/af;->n:Lcom/sleepycat/b/g/af;

    .line 434
    const/4 v7, 0x0

    .line 21717
    iget-object v8, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 434
    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/a/s;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 22064
    :cond_a
    iget-object v2, p1, Lcom/sleepycat/b/l/a/b;->a:Lcom/sleepycat/b/l/e;

    .line 439
    if-eqz v2, :cond_b

    .line 22213
    iget-wide v4, v2, Lcom/sleepycat/b/l/e;->b:J

    .line 439
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_b

    .line 441
    iget-object v3, p0, Lcom/sleepycat/b/l/a/c;->f:Lcom/sleepycat/b/a/s;

    .line 23213
    iget-wide v4, v2, Lcom/sleepycat/b/l/e;->b:J

    .line 441
    sget-object v6, Lcom/sleepycat/b/g/af;->j:Lcom/sleepycat/b/g/af;

    const/4 v7, 0x0

    .line 23717
    iget-object v8, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 441
    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/a/s;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 446
    :cond_b
    invoke-virtual {p1}, Lcom/sleepycat/b/l/a/b;->C()V

    .line 447
    return-void
.end method

.method public static a(Lcom/sleepycat/b/c/i;)Z
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/l/a;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 348
    invoke-virtual {p1, p2}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    :goto_0
    return v0

    .line 354
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v2

    .line 355
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    move v0, v7

    .line 357
    goto :goto_0

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    invoke-static {v1}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;

    move-result-object v1

    .line 11279
    iput-boolean v0, v1, Lcom/sleepycat/b/n/q;->r:Z

    .line 365
    :try_start_0
    sget-object v4, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    const/4 v5, 0x0

    .line 11717
    iget-object v6, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 365
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/a;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v2

    .line 12027
    iget-object v2, v2, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 368
    sget-object v3, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 12654
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    move v0, v7

    .line 372
    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    .line 12654
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 374
    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/l/a/c;->i:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->s(I)Z

    .line 385
    iget v0, p0, Lcom/sleepycat/b/l/a/c;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    .line 13345
    iget v0, v0, Lcom/sleepycat/b/l/j;->f:I

    .line 385
    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    iget-object v1, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->a([B)V

    .line 388
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/l/a/c;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/l/a/c;->i:I

    .line 389
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    .line 5492
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 170
    invoke-virtual {v0}, Lcom/sleepycat/b/c/al;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 171
    instance-of v2, v0, Lcom/sleepycat/b/l/a/b;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/sleepycat/b/l/a/a;

    if-eqz v2, :cond_0

    .line 172
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/c/i;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    .line 5553
    iget-boolean v3, p1, Lcom/sleepycat/b/c/i;->e:Z

    .line 238
    :try_start_0
    new-instance v0, Lcom/sleepycat/b/a/s;

    iget-object v4, p0, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, v4}, Lcom/sleepycat/b/a/s;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/l/a/c;->f:Lcom/sleepycat/b/a/s;

    .line 5569
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sleepycat/b/c/i;->e:Z

    .line 240
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->m()V

    .line 241
    iget-boolean v0, p0, Lcom/sleepycat/b/l/a/c;->c:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->d:Lcom/sleepycat/b/aw;

    .line 6116
    iget-object v4, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sleepycat/b/c/i;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v5, v0}, Lcom/sleepycat/b/c/ad;->a([Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/aw;)Lcom/sleepycat/b/ay;

    .line 6485
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 244
    sget-object v4, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/a;

    iput-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    .line 245
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 10569
    :goto_0
    iput-boolean v3, p1, Lcom/sleepycat/b/c/i;->e:Z

    .line 257
    return-void

    .line 248
    :cond_1
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/sleepycat/b/l/a/c;->i:I

    .line 7267
    :goto_1
    iget v0, p0, Lcom/sleepycat/b/l/a/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/l/a/c;->i:I

    .line 7268
    iget v0, p0, Lcom/sleepycat/b/l/a/c;->i:I

    iget-object v4, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    .line 7345
    iget v4, v4, Lcom/sleepycat/b/l/j;->f:I

    .line 7268
    if-ge v0, v4, :cond_2

    move v0, v1

    .line 249
    :goto_2
    if-eqz v0, :cond_8

    .line 9307
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    iget v4, p0, Lcom/sleepycat/b/l/a/c;->i:I

    invoke-direct {p0, v0, v4}, Lcom/sleepycat/b/l/a/c;->a(Lcom/sleepycat/b/l/a;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9308
    invoke-direct {p0}, Lcom/sleepycat/b/l/a/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 256
    :catchall_0
    move-exception v0

    .line 10569
    iput-boolean v3, p1, Lcom/sleepycat/b/c/i;->e:Z

    .line 256
    throw v0

    .line 7273
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/a;->N()V

    .line 7275
    sget-boolean v0, Lcom/sleepycat/b/l/a/c;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/a;->K()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7279
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    .line 7717
    iget-object v0, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 8485
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 7279
    iget-object v4, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    sget-object v5, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/a;Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/a;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    .line 7280
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    if-nez v0, :cond_4

    move v0, v2

    .line 7281
    goto :goto_2

    .line 7283
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/l/a/c;->i:I

    move v0, v1

    .line 7284
    goto :goto_2

    .line 9311
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    iget v4, p0, Lcom/sleepycat/b/l/a/c;->i:I

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    .line 9312
    invoke-virtual {v0}, Lcom/sleepycat/b/l/ac;->T()Z

    move-result v4

    if-nez v4, :cond_7

    .line 9318
    sget-boolean v4, Lcom/sleepycat/b/l/a/c;->e:Z

    if-nez v4, :cond_6

    instance-of v0, v0, Lcom/sleepycat/b/l/y;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 9319
    :cond_6
    iget-wide v4, p0, Lcom/sleepycat/b/l/a/c;->g:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sleepycat/b/l/a/c;->g:J

    goto :goto_1

    .line 9332
    :cond_7
    iget-object v4, p0, Lcom/sleepycat/b/l/a/c;->h:Lcom/sleepycat/b/l/a;

    iget v5, p0, Lcom/sleepycat/b/l/a/c;->i:I

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v4

    .line 9333
    invoke-direct {p0}, Lcom/sleepycat/b/l/a/c;->b()V

    .line 9334
    check-cast v0, Lcom/sleepycat/b/l/a/b;

    .line 9335
    iget-object v5, p0, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    .line 9492
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 9335
    invoke-virtual {v5, v0}, Lcom/sleepycat/b/c/al;->b(Lcom/sleepycat/b/l/j;)V

    .line 9336
    invoke-direct {p0, v0, v4}, Lcom/sleepycat/b/l/a/c;->a(Lcom/sleepycat/b/l/a/b;[B)V

    goto/16 :goto_1

    .line 252
    :cond_8
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->j()V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/i;->a(Z)V

    .line 254
    iget-object v0, p0, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    .line 10095
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 10468
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    .line 254
    iget-object v1, p0, Lcom/sleepycat/b/l/a/c;->f:Lcom/sleepycat/b/a/s;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/a/s;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
