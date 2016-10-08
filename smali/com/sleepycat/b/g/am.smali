.class public Lcom/sleepycat/b/g/am;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field static final synthetic j:Z

.field private static final k:Ljava/lang/String;


# instance fields
.field protected a:Lcom/sleepycat/b/g/ab;

.field protected b:Lcom/sleepycat/b/f/a;

.field final c:Z

.field final d:Lcom/sleepycat/b/g/m;

.field protected e:Lcom/sleepycat/b/c/ad;

.field final f:Z

.field final g:I

.field public h:J

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sleepycat/b/g/an;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/sleepycat/b/g/h;

.field private final m:Lcom/sleepycat/b/p/ai;

.field private final n:Lcom/sleepycat/b/p/z;

.field private final o:Lcom/sleepycat/b/p/z;

.field private final p:Lcom/sleepycat/b/p/t;

.field private q:Lcom/sleepycat/b/g/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/sleepycat/b/g/am;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/am;->j:Z

    .line 59
    const-class v0, Lcom/sleepycat/b/g/am;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/am;->k:Ljava/lang/String;

    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Z)V
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/g/am;->h:J

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/g/am;->q:Lcom/sleepycat/b/g/aa;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/g/am;->i:Ljava/util/Queue;

    .line 132
    iput-object p1, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 3375
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 133
    iput-object v0, p0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    .line 134
    new-instance v0, Lcom/sleepycat/b/g/h;

    iget-object v1, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/h;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/am;->l:Lcom/sleepycat/b/g/h;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 136
    iput-boolean p2, p0, Lcom/sleepycat/b/g/am;->f:Z

    .line 137
    new-instance v1, Lcom/sleepycat/b/g/ab;

    iget-object v2, p0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    invoke-direct {v1, v2, p1}, Lcom/sleepycat/b/g/ab;-><init>(Lcom/sleepycat/b/g/m;Lcom/sleepycat/b/c/ad;)V

    iput-object v1, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    .line 140
    sget-object v1, Lcom/sleepycat/b/b/d;->P:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/b/g/am;->c:Z

    .line 143
    new-instance v1, Lcom/sleepycat/b/f/a;

    sget-object v2, Lcom/sleepycat/b/g/am;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sleepycat/b/f/a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    .line 144
    sget-object v1, Lcom/sleepycat/b/b/d;->K:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/g/am;->g:I

    .line 148
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "I/O"

    const-string v2, "Log file opens, fsyncs, reads, writes, cache misses."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/am;->m:Lcom/sleepycat/b/p/ai;

    .line 149
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/am;->m:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->z:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/am;->n:Lcom/sleepycat/b/p/z;

    .line 150
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/am;->m:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->A:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/am;->o:Lcom/sleepycat/b/p/z;

    .line 151
    new-instance v0, Lcom/sleepycat/b/p/t;

    iget-object v1, p0, Lcom/sleepycat/b/g/am;->m:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->B:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/t;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/am;->p:Lcom/sleepycat/b/p/t;

    .line 152
    return-void
.end method

.method private a(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;ZZLcom/sleepycat/b/a/ae;)Lcom/sleepycat/b/g/ao;
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v1

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/g/am;->b(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;ZZLcom/sleepycat/b/a/ae;)Lcom/sleepycat/b/g/ao;
    :try_end_1
    .catch Lcom/sleepycat/b/aa; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    monitor-exit v1

    return-object v0

    .line 560
    :catch_0
    move-exception v0

    .line 566
    iget-object v2, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sleepycat/b/g/m;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    :cond_0
    throw v0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 571
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-static {v2, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 573
    :catch_1
    move-exception v0

    .line 574
    iget-object v2, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-static {v2, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 576
    :catch_2
    move-exception v0

    .line 578
    iget-object v2, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 579
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method static a(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v0

    .line 25291
    iget v1, p0, Lcom/sleepycat/b/g/ae;->d:I

    .line 835
    add-int/2addr v0, v1

    .line 837
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 25361
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25362
    iget-byte v0, p0, Lcom/sleepycat/b/g/ae;->b:B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 25365
    const/4 v0, 0x0

    .line 25366
    iget-object v2, p0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    sget-object v3, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    if-ne v2, v3, :cond_4

    .line 25367
    const/16 v0, -0x80

    .line 25371
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sleepycat/b/g/ae;->h:Z

    if-eqz v2, :cond_1

    .line 25372
    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 25374
    :cond_1
    iget-boolean v2, p0, Lcom/sleepycat/b/g/ae;->j:Z

    if-eqz v2, :cond_2

    .line 25375
    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 25377
    :cond_2
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 25383
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 25384
    iget v0, p0, Lcom/sleepycat/b/g/ae;->d:I

    invoke-static {v1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 25390
    iget-boolean v0, p0, Lcom/sleepycat/b/g/ae;->j:Z

    if-eqz v0, :cond_3

    .line 25391
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 841
    :cond_3
    invoke-interface {p1, v1}, Lcom/sleepycat/b/g/a/m;->a(Ljava/nio/ByteBuffer;)V

    .line 844
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 846
    return-object v1

    .line 25368
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    sget-object v3, Lcom/sleepycat/b/g/au;->c:Lcom/sleepycat/b/g/au;

    if-ne v2, v3, :cond_0

    .line 25369
    const/16 v0, 0x40

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v1

    .line 1296
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/g/ab;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/sleepycat/b/g/ab;->b(IZ)V

    .line 1298
    monitor-exit v1

    .line 1307
    :goto_0
    return-void

    .line 1300
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/g/ab;->a(Z)V

    goto :goto_0

    .line 1300
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;ZZLcom/sleepycat/b/a/ae;)Lcom/sleepycat/b/g/ao;
    .locals 18

    .prologue
    .line 616
    const/16 v17, 0x0

    .line 617
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v15, v2

    .line 626
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v2}, Lcom/sleepycat/b/g/a/m;->d()Lcom/sleepycat/b/g/af;

    move-result-object v6

    .line 627
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/sleepycat/b/g/al;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->c(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 628
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/g/ad;->h:Z

    if-eqz v2, :cond_3

    .line 629
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sleepycat/b/g/al;->b:J

    move-object/from16 v0, p1

    iget v7, v0, Lcom/sleepycat/b/g/al;->i:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v3, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/a/ae;->c(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 638
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/sleepycat/b/g/al;->c:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->c(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 639
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/g/ad;->h:Z

    if-eqz v2, :cond_4

    .line 640
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sleepycat/b/g/al;->c:J

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v3, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/a/ae;->c(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 655
    :cond_1
    :goto_2
    if-eqz v15, :cond_5

    .line 656
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    .line 657
    sget-boolean v2, Lcom/sleepycat/b/g/am;->j:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 617
    :cond_2
    const/4 v2, 0x0

    move v15, v2

    goto :goto_0

    .line 632
    :cond_3
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sleepycat/b/g/al;->b:J

    move-object/from16 v0, p1

    iget v7, v0, Lcom/sleepycat/b/g/al;->i:I

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v3, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/a/ae;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    goto :goto_1

    .line 643
    :cond_4
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sleepycat/b/g/al;->c:J

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v3, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/a/ae;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    goto :goto_2

    .line 659
    :cond_5
    sget-boolean v2, Lcom/sleepycat/b/g/am;->j:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 660
    :cond_6
    new-instance v2, Lcom/sleepycat/b/g/ae;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sleepycat/b/g/al;->e:Lcom/sleepycat/b/g/au;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/b/g/ae;-><init>(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;Lcom/sleepycat/b/g/av;)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 662
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 18291
    iget v3, v3, Lcom/sleepycat/b/g/ae;->d:I

    .line 662
    add-int v7, v2, v3

    .line 672
    :cond_7
    if-eqz p3, :cond_8

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    .line 18446
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sleepycat/b/g/m;->s:Z

    .line 676
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    int-to-long v4, v7

    .line 18542
    invoke-virtual {v3}, Lcom/sleepycat/b/g/m;->b()V

    .line 18544
    const/4 v2, 0x0

    .line 18546
    iget-boolean v8, v3, Lcom/sleepycat/b/g/m;->s:Z

    if-nez v8, :cond_9

    iget-wide v8, v3, Lcom/sleepycat/b/g/m;->p:J

    invoke-static {v8, v9}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v8

    add-long/2addr v8, v4

    iget-wide v10, v3, Lcom/sleepycat/b/g/m;->l:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_e

    .line 18549
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/sleepycat/b/g/m;->s:Z

    .line 18552
    iget-wide v8, v3, Lcom/sleepycat/b/g/m;->o:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/sleepycat/b/g/m;->o:J

    .line 18555
    iget-wide v8, v3, Lcom/sleepycat/b/g/m;->q:J

    const-wide/16 v10, -0x1

    cmp-long v2, v8, v10

    if-eqz v2, :cond_a

    .line 18556
    iget-object v2, v3, Lcom/sleepycat/b/g/m;->z:Ljava/util/Map;

    iget-wide v8, v3, Lcom/sleepycat/b/g/m;->q:J

    invoke-static {v8, v9}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v10, v3, Lcom/sleepycat/b/g/m;->q:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18560
    :cond_a
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/sleepycat/b/g/m;->r:J

    .line 18561
    iget-wide v8, v3, Lcom/sleepycat/b/g/m;->o:J

    invoke-static {}, Lcom/sleepycat/b/g/m;->h()I

    move-result v2

    invoke-static {v8, v9, v2}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/sleepycat/b/g/m;->q:J

    .line 18563
    const/4 v2, 0x1

    move v8, v2

    .line 18572
    :goto_3
    iget-wide v10, v3, Lcom/sleepycat/b/g/m;->q:J

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v10

    iget-wide v12, v3, Lcom/sleepycat/b/g/m;->q:J

    invoke-static {v12, v13}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v12

    add-long/2addr v4, v12

    invoke-static {v10, v11, v4, v5}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sleepycat/b/g/m;->p:J

    .line 678
    const/16 v16, 0x0

    .line 681
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    .line 19474
    iget-wide v3, v2, Lcom/sleepycat/b/g/m;->q:J

    .line 688
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v2, p5

    .line 20128
    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/a/ae;->a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;I)Z

    move-result v2

    .line 688
    if-eqz v2, :cond_b

    .line 690
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/sleepycat/b/g/ad;->i:Z

    .line 698
    :cond_b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v2}, Lcom/sleepycat/b/g/a/m;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 699
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v9, p5

    move-wide v10, v3

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/b/a/ae;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 706
    :cond_c
    if-nez v15, :cond_11

    .line 707
    sget-boolean v2, Lcom/sleepycat/b/g/am;->j:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    :catchall_0
    move-exception v2

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    .line 23470
    iget-wide v4, v3, Lcom/sleepycat/b/g/m;->u:J

    iput-wide v4, v3, Lcom/sleepycat/b/g/m;->p:J

    .line 23471
    iget-wide v4, v3, Lcom/sleepycat/b/g/m;->v:J

    iput-wide v4, v3, Lcom/sleepycat/b/g/m;->q:J

    .line 23472
    iget-wide v4, v3, Lcom/sleepycat/b/g/m;->w:J

    iput-wide v4, v3, Lcom/sleepycat/b/g/m;->r:J

    .line 23473
    iget-boolean v4, v3, Lcom/sleepycat/b/g/m;->x:Z

    iput-boolean v4, v3, Lcom/sleepycat/b/g/m;->s:Z

    .line 23474
    iget-wide v4, v3, Lcom/sleepycat/b/g/m;->t:J

    iput-wide v4, v3, Lcom/sleepycat/b/g/m;->o:J

    .line 802
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 24295
    iget-object v3, v3, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 802
    if-eqz v3, :cond_d

    .line 803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->P()V

    .line 776
    :cond_d
    throw v2

    .line 18565
    :cond_e
    iget-wide v8, v3, Lcom/sleepycat/b/g/m;->q:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_f

    .line 18566
    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/sleepycat/b/g/m;->r:J

    .line 18570
    :goto_4
    iget-wide v8, v3, Lcom/sleepycat/b/g/m;->p:J

    iput-wide v8, v3, Lcom/sleepycat/b/g/m;->q:J

    move v8, v2

    goto/16 :goto_3

    .line 18568
    :cond_f
    iget-wide v8, v3, Lcom/sleepycat/b/g/m;->q:J

    invoke-static {v8, v9}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/sleepycat/b/g/m;->r:J

    goto :goto_4

    .line 708
    :cond_10
    :try_start_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    invoke-static {v2, v5}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    .line 712
    :cond_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-eq v7, v2, :cond_12

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Logged entry entrySize= "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " but marshalledSize="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " type="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " currentLsn="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3, v4}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 726
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    invoke-virtual {v2, v7, v8}, Lcom/sleepycat/b/g/ab;->a(IZ)Lcom/sleepycat/b/g/aa;

    move-result-object v8

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/am;->q:Lcom/sleepycat/b/g/aa;

    if-eq v8, v2, :cond_13

    .line 730
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/sleepycat/b/g/ad;->k:Z

    .line 732
    :cond_13
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sleepycat/b/g/am;->q:Lcom/sleepycat/b/g/aa;

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    .line 20529
    iget-wide v10, v2, Lcom/sleepycat/b/g/m;->r:J

    .line 736
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    .line 21099
    iget-object v2, v2, Lcom/sleepycat/b/g/av;->i:Lcom/sleepycat/b/p/au;

    .line 736
    if-nez v2, :cond_14

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/av;->d()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 739
    :cond_14
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/av;->d()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->O()Lcom/sleepycat/b/p/au;

    move-result-object v5

    .line 22209
    :goto_5
    iget-object v2, v8, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22239
    :try_start_2
    invoke-virtual {v8, v7}, Lcom/sleepycat/b/g/aa;->a(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 22240
    iget-object v2, v8, Lcom/sleepycat/b/g/aa;->g:[B

    iget-object v6, v8, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-static {v2, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 22242
    iget-object v2, v8, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    iget-object v9, v8, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22243
    iget-object v2, v8, Lcom/sleepycat/b/g/aa;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 22244
    new-instance v2, Lcom/sleepycat/b/g/ac;

    invoke-direct {v2, v8, v6}, Lcom/sleepycat/b/g/ac;-><init>(Lcom/sleepycat/b/g/aa;Ljava/nio/ByteBuffer;)V

    move-object v6, v2

    .line 757
    :goto_6
    if-nez v6, :cond_1c

    .line 759
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v9, v10, v11, v5}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;JLcom/sleepycat/b/p/au;)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    new-instance v9, Lcom/sleepycat/b/g/aa;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    invoke-direct {v9, v12, v3, v4}, Lcom/sleepycat/b/g/aa;-><init>(Ljava/nio/ByteBuffer;J)V

    move/from16 v0, p4

    invoke-virtual {v2, v9, v0}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/aa;Z)V

    .line 767
    const/4 v2, 0x1

    .line 768
    sget-boolean v9, Lcom/sleepycat/b/g/am;->j:Z

    if-nez v9, :cond_17

    .line 23138
    iget-object v9, v8, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    .line 768
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    if-eqz v9, :cond_17

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 772
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v8}, Lcom/sleepycat/b/g/aa;->a()V

    throw v2

    .line 742
    :cond_15
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    .line 22099
    iget-object v5, v2, Lcom/sleepycat/b/g/av;->i:Lcom/sleepycat/b/p/au;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 22246
    :cond_16
    const/4 v2, 0x0

    move-object v6, v2

    goto :goto_6

    .line 769
    :cond_17
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sleepycat/b/g/am;->o:Lcom/sleepycat/b/p/z;

    invoke-virtual {v9}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 772
    :goto_7
    :try_start_5
    invoke-virtual {v8}, Lcom/sleepycat/b/g/aa;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 812
    if-nez v2, :cond_1a

    .line 25111
    iget-object v2, v8, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/a;->a()V

    .line 25113
    :try_start_6
    iget-wide v12, v8, Lcom/sleepycat/b/g/aa;->c:J

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-eqz v2, :cond_18

    .line 25115
    sget-boolean v2, Lcom/sleepycat/b/g/aa;->h:Z

    if-nez v2, :cond_18

    iget-wide v12, v8, Lcom/sleepycat/b/g/aa;->c:J

    invoke-static {v3, v4, v12, v13}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    if-gtz v2, :cond_18

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lsn="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lastlsn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v8, Lcom/sleepycat/b/g/aa;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 25122
    :catchall_2
    move-exception v2

    iget-object v3, v8, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v3}, Lcom/sleepycat/b/f/a;->c()V

    throw v2

    .line 25117
    :cond_18
    :try_start_7
    iput-wide v3, v8, Lcom/sleepycat/b/g/aa;->c:J

    .line 25118
    iget-wide v12, v8, Lcom/sleepycat/b/g/aa;->b:J

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-nez v2, :cond_19

    .line 25119
    iput-wide v3, v8, Lcom/sleepycat/b/g/aa;->b:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 25122
    :cond_19
    iget-object v2, v8, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/a;->c()V

    .line 821
    :cond_1a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    invoke-interface {v2, v8, v3, v4, v5}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/g/ae;JLcom/sleepycat/b/p/au;)V

    .line 823
    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/sleepycat/b/g/al;->d:J

    .line 824
    move-object/from16 v0, p2

    iget v2, v0, Lcom/sleepycat/b/g/ad;->j:I

    add-int/2addr v2, v7

    move-object/from16 v0, p2

    iput v2, v0, Lcom/sleepycat/b/g/ad;->j:I

    .line 826
    if-nez v6, :cond_1b

    const/4 v2, 0x0

    :goto_8
    return-object v2

    :cond_1b
    new-instance v2, Lcom/sleepycat/b/g/ao;

    move-object/from16 v3, p0

    move-object v4, v6

    move-wide v6, v10

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/b/g/ao;-><init>(Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/g/ac;Lcom/sleepycat/b/p/au;J)V

    goto :goto_8

    :cond_1c
    move/from16 v2, v16

    goto :goto_7

    :cond_1d
    move-object/from16 v5, v17

    goto/16 :goto_5
.end method

.method private b([Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V
    .locals 16

    .prologue
    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 15088
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 15464
    iget-object v7, v2, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 498
    const/4 v2, 0x0

    aget-object v9, p1, v2

    .line 499
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v10, p1, v2

    .line 501
    move-object/from16 v0, p1

    array-length v11, v0

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v11, :cond_3

    aget-object v3, p1, v8

    .line 503
    if-ne v3, v10, :cond_1

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/g/ad;->b:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/g/ad;->d:Z

    if-nez v2, :cond_1

    const/4 v6, 0x1

    .line 507
    :goto_1
    if-ne v3, v9, :cond_2

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/g/ad;->c:Z

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    .line 508
    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;ZZLcom/sleepycat/b/a/ae;)Lcom/sleepycat/b/g/ao;

    move-result-object v2

    .line 514
    if-eqz v2, :cond_0

    .line 520
    iget-object v4, v3, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    iget-object v5, v3, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    iget-wide v12, v2, Lcom/sleepycat/b/g/ao;->c:J

    iget-object v6, v2, Lcom/sleepycat/b/g/ao;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v4, v5, v12, v13, v6}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;JLcom/sleepycat/b/p/au;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v3, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    .line 524
    iget-object v2, v2, Lcom/sleepycat/b/g/ao;->a:Lcom/sleepycat/b/g/ac;

    iget-object v3, v3, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    .line 16033
    iget-object v4, v2, Lcom/sleepycat/b/g/ac;->a:Lcom/sleepycat/b/g/aa;

    .line 16209
    iget-object v4, v4, Lcom/sleepycat/b/g/aa;->d:Lcom/sleepycat/b/f/a;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/a;->a()V

    .line 16034
    iget-object v4, v2, Lcom/sleepycat/b/g/ac;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 16035
    iget-object v3, v2, Lcom/sleepycat/b/g/ac;->a:Lcom/sleepycat/b/g/aa;

    invoke-virtual {v3}, Lcom/sleepycat/b/g/aa;->a()V

    .line 16036
    iget-object v2, v2, Lcom/sleepycat/b/g/ac;->a:Lcom/sleepycat/b/g/aa;

    .line 16253
    iget-object v2, v2, Lcom/sleepycat/b/g/aa;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 501
    :cond_0
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    .line 503
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 507
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 16364
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v3

    .line 16366
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/g/ad;->g:Lcom/sleepycat/b/a/v;

    if-eqz v2, :cond_5

    .line 16367
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/g/ad;->g:Lcom/sleepycat/b/a/v;

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    .line 17055
    new-instance v4, Lcom/sleepycat/a/a/l;

    invoke-direct {v4, v2}, Lcom/sleepycat/a/a/l;-><init>(Lcom/sleepycat/a/a/m;)V

    .line 17056
    :goto_3
    invoke-virtual {v4}, Lcom/sleepycat/a/a/l;->available()I

    move-result v2

    if-lez v2, :cond_5

    .line 17057
    invoke-virtual {v4}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v8

    .line 17058
    invoke-virtual {v4}, Lcom/sleepycat/a/a/l;->j()J

    move-result-wide v14

    .line 17059
    invoke-virtual {v4}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v2

    .line 17060
    invoke-virtual {v4}, Lcom/sleepycat/a/a/l;->i()I

    move-result v11

    .line 17061
    invoke-static {v8, v9, v14, v15}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v8

    if-eqz v2, :cond_4

    sget-object v10, Lcom/sleepycat/b/g/af;->H:Lcom/sleepycat/b/g/af;

    :goto_4
    invoke-virtual/range {v7 .. v12}, Lcom/sleepycat/b/a/ae;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    goto :goto_3

    .line 16378
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 17061
    :cond_4
    :try_start_1
    sget-object v10, Lcom/sleepycat/b/g/af;->l:Lcom/sleepycat/b/g/af;

    goto :goto_4

    .line 16370
    :cond_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/g/ad;->f:Ljava/util/Collection;

    if-eqz v2, :cond_6

    .line 16371
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/g/ad;->f:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/n/am;

    .line 17073
    iget-wide v8, v2, Lcom/sleepycat/b/n/am;->a:J

    .line 16372
    const/4 v10, 0x0

    .line 17085
    iget v11, v2, Lcom/sleepycat/b/n/am;->c:I

    .line 18081
    iget-object v12, v2, Lcom/sleepycat/b/n/am;->d:Lcom/sleepycat/b/c/i;

    .line 16372
    invoke-virtual/range {v7 .. v12}, Lcom/sleepycat/b/a/ae;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    goto :goto_5

    .line 16378
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;ZZZLcom/sleepycat/b/g/av;)J
    .locals 4

    .prologue
    .line 326
    new-instance v0, Lcom/sleepycat/b/g/al;

    invoke-direct {v0}, Lcom/sleepycat/b/g/al;-><init>()V

    .line 327
    iput-object p1, v0, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    .line 328
    iput-object p2, v0, Lcom/sleepycat/b/g/al;->e:Lcom/sleepycat/b/g/au;

    .line 329
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/sleepycat/b/g/al;->b:J

    .line 330
    iput-object p6, v0, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    .line 332
    new-instance v1, Lcom/sleepycat/b/g/ad;

    invoke-direct {v1}, Lcom/sleepycat/b/g/ad;-><init>()V

    .line 333
    iput-boolean p3, v1, Lcom/sleepycat/b/g/ad;->b:Z

    .line 334
    iput-boolean p4, v1, Lcom/sleepycat/b/g/ad;->d:Z

    .line 335
    iput-boolean p5, v1, Lcom/sleepycat/b/g/ad;->c:Z

    .line 336
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sleepycat/b/g/ad;->e:Z

    .line 337
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    .line 339
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V

    .line 341
    iget-wide v0, v0, Lcom/sleepycat/b/g/al;->d:J

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 192
    sget-object v2, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;ZZZLcom/sleepycat/b/g/av;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)Lcom/sleepycat/b/g/a/m;
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/b/g/am;->a(JZ)Lcom/sleepycat/b/g/ay;

    move-result-object v0

    .line 26030
    iget-object v0, v0, Lcom/sleepycat/b/g/ay;->b:Lcom/sleepycat/b/g/a/m;

    .line 882
    return-object v0
.end method

.method final a(JLcom/sleepycat/b/g/ap;Z)Lcom/sleepycat/b/g/ay;
    .locals 9

    .prologue
    .line 1001
    :try_start_0
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v2

    .line 1002
    invoke-interface {p3, v2, v3}, Lcom/sleepycat/b/g/ap;->a(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v4, 0xe

    if-ge v1, v4, :cond_1

    .line 1004
    new-instance v1, Lcom/sleepycat/b/g/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incomplete log entry header, size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lsn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :catchall_0
    move-exception v0

    if-eqz p3, :cond_0

    .line 1115
    invoke-interface {p3}, Lcom/sleepycat/b/g/ap;->a()V

    .line 1114
    :cond_0
    throw v0

    .line 1011
    :cond_1
    :try_start_1
    new-instance v4, Lcom/sleepycat/b/g/ae;

    invoke-interface {p3}, Lcom/sleepycat/b/g/ap;->b()I

    move-result v1

    invoke-direct {v4, v0, v1}, Lcom/sleepycat/b/g/ae;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 27582
    iget-boolean v1, v4, Lcom/sleepycat/b/g/ae;->j:Z

    .line 1015
    if-eqz v1, :cond_3

    .line 1016
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {}, Lcom/sleepycat/b/g/ae;->a()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1018
    new-instance v1, Lcom/sleepycat/b/g/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incomplete log entry header, size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " varSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sleepycat/b/g/ae;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " lsn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/g/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1024
    :cond_2
    invoke-virtual {v4, v0}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;)V

    .line 1027
    :cond_3
    const/4 v1, 0x0

    .line 1028
    iget-boolean v5, p0, Lcom/sleepycat/b/g/am;->c:Z

    if-eqz v5, :cond_5

    .line 1029
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 28307
    iget-boolean v1, v4, Lcom/sleepycat/b/g/ae;->i:Z

    .line 1039
    if-eqz v1, :cond_4

    .line 1040
    invoke-virtual {v4}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v1

    sub-int v1, v5, v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;I)V

    .line 1045
    :cond_4
    new-instance v1, Lcom/sleepycat/b/g/d;

    invoke-direct {v1}, Lcom/sleepycat/b/g/d;-><init>()V

    .line 28329
    invoke-virtual {v4}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    .line 1047
    sub-int v7, v5, v6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1049
    invoke-virtual {v1, v0, v6}, Lcom/sleepycat/b/g/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 1050
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29291
    :cond_5
    iget v5, v4, Lcom/sleepycat/b/g/ae;->d:I

    .line 1058
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v5, :cond_6

    .line 1059
    invoke-virtual {v4}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    invoke-interface {p3, v2, v3, v5}, Lcom/sleepycat/b/g/ap;->a(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1061
    iget-object v2, p0, Lcom/sleepycat/b/g/am;->n:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 1068
    :cond_6
    iget-boolean v2, p0, Lcom/sleepycat/b/g/am;->c:Z

    if-eqz v2, :cond_7

    .line 1070
    invoke-virtual {v1, v0, v5}, Lcom/sleepycat/b/g/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 30275
    iget-wide v2, v4, Lcom/sleepycat/b/g/ae;->a:J

    .line 1071
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/sleepycat/b/g/d;->a(JJ)V

    .line 30307
    :cond_7
    iget-boolean v1, v4, Lcom/sleepycat/b/g/ae;->i:Z

    .line 1078
    if-eqz v1, :cond_8

    if-nez p4, :cond_8

    .line 1079
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    sget-object v2, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Read invisible log entry at "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_8
    sget-boolean v1, Lcom/sleepycat/b/g/am;->j:Z

    if-nez v1, :cond_9

    .line 31279
    iget-byte v1, v4, Lcom/sleepycat/b/g/ae;->b:B

    .line 1086
    invoke-static {v1}, Lcom/sleepycat/b/g/af;->b(B)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read non-valid log entry type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32279
    iget-byte v2, v4, Lcom/sleepycat/b/g/ae;->b:B

    .line 1086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 33279
    :cond_9
    iget-byte v1, v4, Lcom/sleepycat/b/g/ae;->b:B

    .line 1089
    invoke-static {v1}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v1

    .line 1091
    iget-object v2, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-interface {v1, v2, v4, v0}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 1112
    new-instance v0, Lcom/sleepycat/b/g/ay;

    invoke-direct {v0, v4, v1}, Lcom/sleepycat/b/g/ay;-><init>(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1114
    if-eqz p3, :cond_a

    .line 1115
    invoke-interface {p3}, Lcom/sleepycat/b/g/ap;->a()V

    .line 1112
    :cond_a
    return-object v0
.end method

.method public final a(JZ)Lcom/sleepycat/b/g/ay;
    .locals 5

    .prologue
    .line 918
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V

    .line 928
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/am;->f(J)Lcom/sleepycat/b/g/ap;

    move-result-object v0

    .line 931
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sleepycat/b/g/am;->a(JLcom/sleepycat/b/g/ap;Z)Lcom/sleepycat/b/g/ay;
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 4

    .prologue
    .line 1312
    .line 34070
    iget-boolean v0, p1, Lcom/sleepycat/b/bn;->b:Z

    .line 1312
    if-nez v0, :cond_0

    .line 34456
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v1

    .line 34457
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->p:Lcom/sleepycat/b/p/t;

    iget-object v2, p0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    .line 34474
    iget-wide v2, v2, Lcom/sleepycat/b/g/m;->q:J

    .line 34457
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/t;->a(Ljava/lang/Long;)V

    .line 34458
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->m:Lcom/sleepycat/b/p/ai;

    .line 35103
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 1316
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    .line 1318
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/g/ab;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 1320
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    .line 35478
    iget-object v2, v1, Lcom/sleepycat/b/g/m;->N:Lcom/sleepycat/b/p/o;

    iget-object v3, v1, Lcom/sleepycat/b/g/m;->m:Lcom/sleepycat/b/g/o;

    .line 35629
    iget-object v3, v3, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 35478
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/o;->a(Ljava/lang/Integer;)V

    .line 35479
    iget-object v1, v1, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    .line 36103
    iget-boolean v2, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 35479
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    .line 1320
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 1322
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->l:Lcom/sleepycat/b/g/h;

    .line 36383
    iget-object v1, v1, Lcom/sleepycat/b/g/h;->k:Lcom/sleepycat/b/p/ai;

    .line 37103
    iget-boolean v2, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 36383
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    .line 1322
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 1324
    return-object v0

    .line 34458
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/sleepycat/b/g/am;->f:Z

    if-nez v0, :cond_0

    .line 1256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/am;->a(Z)V

    .line 1257
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->e()V

    .line 1259
    :cond_0
    return-void
.end method

.method public final a(JILcom/sleepycat/b/c/i;)V
    .locals 9

    .prologue
    .line 1411
    iget-object v7, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v7

    .line 1412
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 41088
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 41464
    iget-object v1, v0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 1413
    const/4 v4, 0x0

    move-wide v2, p1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/ae;->c(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 1414
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;Z)V
    .locals 9

    .prologue
    .line 1391
    iget-object v7, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v7

    .line 1392
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 40088
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 40464
    iget-object v1, v0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 1393
    if-eqz p6, :cond_0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 1394
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/ae;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 1398
    :goto_0
    monitor-exit v7

    return-void

    :cond_0
    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 1396
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/ae;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    goto :goto_0

    .line 1398
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/a/s;)V
    .locals 2

    .prologue
    .line 1423
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v1

    .line 1424
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 42088
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 42464
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 1425
    invoke-virtual {p1, v0}, Lcom/sleepycat/b/a/s;->a(Lcom/sleepycat/b/a/ae;)V

    .line 1426
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/a/z;)V
    .locals 2

    .prologue
    .line 1357
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v1

    .line 1358
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/b/a/z;->i()V

    .line 1359
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/c/i;)V
    .locals 4

    .prologue
    .line 1433
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v1

    .line 1434
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 43088
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 43464
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 1434
    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/a/b;J)V

    .line 1436
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/c/m;)V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/g/ab;->a(Lcom/sleepycat/b/c/m;)V

    .line 174
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V
    .locals 2

    .prologue
    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sleepycat/b/g/al;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/b/g/am;->a([Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V

    .line 351
    return-void
.end method

.method public final a([Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V
    .locals 13

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/sleepycat/b/g/am;->f:Z

    if-nez v0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 14183
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/an;

    .line 370
    :goto_1
    if-eqz v0, :cond_2

    .line 371
    new-instance v1, Lcom/sleepycat/b/g/al;

    invoke-direct {v1}, Lcom/sleepycat/b/g/al;-><init>()V

    .line 4114
    iget-object v2, v0, Lcom/sleepycat/b/g/an;->a:Lcom/sleepycat/b/g/a/m;

    .line 372
    iput-object v2, v1, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    .line 373
    sget-object v2, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    iput-object v2, v1, Lcom/sleepycat/b/g/al;->e:Lcom/sleepycat/b/g/au;

    .line 5114
    iget-object v0, v0, Lcom/sleepycat/b/g/an;->b:Lcom/sleepycat/b/g/av;

    .line 374
    iput-object v0, v1, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    .line 376
    new-instance v0, Lcom/sleepycat/b/g/ad;

    invoke-direct {v0}, Lcom/sleepycat/b/g/ad;-><init>()V

    .line 378
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sleepycat/b/g/al;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {p0, v2, v0}, Lcom/sleepycat/b/g/am;->b([Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V

    .line 379
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/an;

    goto :goto_1

    .line 382
    :cond_2
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    .line 383
    iget-object v3, v2, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    .line 391
    invoke-interface {v3}, Lcom/sleepycat/b/g/a/m;->e()I

    move-result v4

    iput v4, v2, Lcom/sleepycat/b/g/al;->i:I

    .line 399
    invoke-interface {v3}, Lcom/sleepycat/b/g/a/m;->d()Lcom/sleepycat/b/g/af;

    move-result-object v4

    .line 5742
    iget-object v4, v4, Lcom/sleepycat/b/g/af;->O:Lcom/sleepycat/b/g/ag;

    .line 6731
    iget-boolean v4, v4, Lcom/sleepycat/b/g/ag;->c:Z

    .line 399
    if-eqz v4, :cond_3

    .line 400
    new-instance v4, Lcom/sleepycat/b/g/ae;

    iget-object v5, v2, Lcom/sleepycat/b/g/al;->e:Lcom/sleepycat/b/g/au;

    iget-object v6, v2, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    invoke-direct {v4, v3, v5, v6}, Lcom/sleepycat/b/g/ae;-><init>(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;Lcom/sleepycat/b/g/av;)V

    iput-object v4, v2, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 402
    iget-object v4, v2, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    invoke-static {v4, v3}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/sleepycat/b/g/al;->h:Ljava/nio/ByteBuffer;

    .line 382
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 410
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/g/am;->b([Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V

    .line 412
    iget-boolean v0, p2, Lcom/sleepycat/b/g/ad;->d:Z

    if-nez v0, :cond_5

    iget-boolean v0, p2, Lcom/sleepycat/b/g/ad;->b:Z

    if-eqz v0, :cond_18

    .line 414
    :cond_5
    iget-object v5, p0, Lcom/sleepycat/b/g/am;->l:Lcom/sleepycat/b/g/h;

    iget-boolean v6, p2, Lcom/sleepycat/b/g/ad;->d:Z

    .line 7193
    const/4 v4, 0x0

    .line 7194
    const/4 v2, 0x0

    .line 7195
    const/4 v1, 0x0

    .line 7196
    const/4 v0, 0x0

    .line 7199
    iget-object v7, v5, Lcom/sleepycat/b/g/h;->c:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Lcom/sleepycat/b/aa; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    .line 7200
    :try_start_1
    iget-object v3, v5, Lcom/sleepycat/b/g/h;->o:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V

    .line 7201
    if-eqz v6, :cond_6

    .line 7202
    iget-object v3, v5, Lcom/sleepycat/b/g/h;->l:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V

    .line 7204
    :cond_6
    iget-object v3, v5, Lcom/sleepycat/b/g/h;->e:Lcom/sleepycat/b/g/i;

    .line 7205
    invoke-virtual {v3, v6}, Lcom/sleepycat/b/g/i;->a(Z)V

    .line 7208
    iget-boolean v6, v5, Lcom/sleepycat/b/g/h;->d:Z

    if-eqz v6, :cond_d

    .line 7209
    const/4 v1, 0x1

    .line 7210
    iget v6, v5, Lcom/sleepycat/b/g/h;->f:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sleepycat/b/g/h;->f:I

    .line 7211
    iget-boolean v6, v5, Lcom/sleepycat/b/g/h;->j:Z

    if-eqz v6, :cond_10

    iget v6, v5, Lcom/sleepycat/b/g/h;->f:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_10

    .line 7212
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/sleepycat/b/g/h;->g:J

    move v12, v1

    move v1, v2

    move v2, v4

    move v4, v12

    .line 7243
    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7245
    if-eqz v4, :cond_7

    .line 7256
    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/b/g/i;->a()I

    move-result v4

    .line 7258
    sget v6, Lcom/sleepycat/b/g/i;->b:I

    if-ne v4, v6, :cond_16

    .line 7259
    iget-object v4, v5, Lcom/sleepycat/b/g/h;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Lcom/sleepycat/b/aa; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    .line 7268
    :try_start_3
    iget-boolean v2, v5, Lcom/sleepycat/b/g/h;->d:Z

    if-eqz v2, :cond_12

    .line 7274
    const/4 v2, 0x1

    .line 7305
    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7314
    :cond_7
    :goto_5
    if-eqz v2, :cond_b

    .line 7333
    :try_start_4
    invoke-virtual {v3}, Lcom/sleepycat/b/g/i;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 7334
    iget-object v2, v5, Lcom/sleepycat/b/g/h;->a:Lcom/sleepycat/b/c/ad;

    .line 7371
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 7334
    invoke-virtual {v2}, Lcom/sleepycat/b/g/am;->b()V

    .line 7342
    :cond_8
    :goto_6
    invoke-virtual {v3}, Lcom/sleepycat/b/g/i;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9393
    iget-object v2, v5, Lcom/sleepycat/b/g/h;->a:Lcom/sleepycat/b/c/ad;

    .line 10375
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 9393
    invoke-virtual {v2}, Lcom/sleepycat/b/g/m;->e()V

    .line 7344
    iget-object v2, v5, Lcom/sleepycat/b/g/h;->m:Lcom/sleepycat/b/p/d;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/d;->g()V

    .line 7347
    :cond_9
    iget-object v2, v5, Lcom/sleepycat/b/g/h;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Lcom/sleepycat/b/aa; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_4

    .line 7348
    if-eqz v1, :cond_a

    .line 7354
    :try_start_5
    invoke-virtual {v0}, Lcom/sleepycat/b/g/i;->c()V

    .line 7360
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->e:Lcom/sleepycat/b/g/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/i;->d()V

    .line 7361
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/sleepycat/b/g/h;->d:Z

    .line 7363
    :cond_a
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 430
    :cond_b
    :goto_7
    :try_start_6
    array-length v1, p1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_1c

    aget-object v2, p1, v0

    .line 438
    iget-object v3, v2, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    .line 11106
    iget-boolean v3, v3, Lcom/sleepycat/b/g/av;->h:Z

    .line 438
    if-eqz v3, :cond_1a

    .line 440
    sget-boolean v3, Lcom/sleepycat/b/g/am;->j:Z

    if-nez v3, :cond_19

    iget-object v3, v2, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 11295
    iget-object v3, v3, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 440
    if-nez v3, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected null vlsn: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_6
    .catch Lcom/sleepycat/b/aa; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_4

    .line 448
    :catch_0
    move-exception v0

    .line 460
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/sleepycat/b/g/m;->a()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 462
    :cond_c
    throw v0

    .line 7215
    :cond_d
    const/4 v2, 0x1

    .line 7216
    const/4 v4, 0x1

    .line 7217
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, v5, Lcom/sleepycat/b/g/h;->d:Z

    .line 7218
    iget-boolean v0, v5, Lcom/sleepycat/b/g/h;->j:Z

    if-eqz v0, :cond_f

    .line 7219
    iget v0, v5, Lcom/sleepycat/b/g/h;->f:I

    iget v6, v5, Lcom/sleepycat/b/g/h;->h:I

    if-ge v0, v6, :cond_11

    .line 7220
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-wide v10, v5, Lcom/sleepycat/b/g/h;->g:J

    sub-long/2addr v8, v10

    .line 7221
    iget-wide v10, v5, Lcom/sleepycat/b/g/h;->i:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    cmp-long v0, v8, v10

    if-gez v0, :cond_e

    .line 7223
    :try_start_8
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->r:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 7224
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->c:Ljava/lang/Object;

    const-wide/32 v10, 0xf4240

    div-long v10, v8, v10

    long-to-int v6, v8

    const v8, 0xf4240

    rem-int/2addr v6, v8

    invoke-virtual {v0, v10, v11, v6}, Ljava/lang/Object;->wait(JI)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 7234
    :cond_e
    :try_start_9
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->q:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 7239
    :cond_f
    :goto_9
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->e:Lcom/sleepycat/b/g/i;

    .line 7240
    new-instance v6, Lcom/sleepycat/b/g/i;

    iget-wide v8, v5, Lcom/sleepycat/b/g/h;->b:J

    iget-object v10, v5, Lcom/sleepycat/b/g/h;->a:Lcom/sleepycat/b/c/ad;

    invoke-direct {v6, v8, v9, v10}, Lcom/sleepycat/b/g/i;-><init>(JLcom/sleepycat/b/c/ad;)V

    iput-object v6, v5, Lcom/sleepycat/b/g/h;->e:Lcom/sleepycat/b/g/i;

    .line 7241
    const/4 v6, 0x0

    iput v6, v5, Lcom/sleepycat/b/g/h;->f:I

    :cond_10
    move v12, v1

    move v1, v2

    move v2, v4

    move v4, v12

    goto/16 :goto_3

    .line 7226
    :catch_1
    move-exception v0

    .line 7227
    new-instance v1, Lcom/sleepycat/b/bo;

    iget-object v2, v5, Lcom/sleepycat/b/g/h;->a:Lcom/sleepycat/b/c/ad;

    const-string v3, "Unexpected interrupt while waiting for write or fsync"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7243
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catch Lcom/sleepycat/b/aa; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_4

    .line 465
    :catch_2
    move-exception v0

    .line 466
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 7236
    :cond_11
    :try_start_b
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_9

    .line 7276
    :cond_12
    const/4 v1, 0x1

    .line 7277
    const/4 v2, 0x1

    .line 7278
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, v5, Lcom/sleepycat/b/g/h;->d:Z

    .line 7280
    iget-boolean v0, v5, Lcom/sleepycat/b/g/h;->j:Z

    if-eqz v0, :cond_14

    .line 7281
    iget v0, v5, Lcom/sleepycat/b/g/h;->f:I

    iget v6, v5, Lcom/sleepycat/b/g/h;->h:I

    if-ge v0, v6, :cond_15

    .line 7282
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/sleepycat/b/g/h;->g:J

    sub-long/2addr v6, v8

    .line 7283
    iget-wide v8, v5, Lcom/sleepycat/b/g/h;->i:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    cmp-long v0, v6, v8

    if-gez v0, :cond_13

    .line 7285
    :try_start_d
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->r:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 7286
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->c:Ljava/lang/Object;

    const-wide/32 v8, 0xf4240

    div-long v8, v6, v8

    long-to-int v6, v6

    const v7, 0xf4240

    rem-int/2addr v6, v7

    invoke-virtual {v0, v8, v9, v6}, Ljava/lang/Object;->wait(JI)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 7296
    :cond_13
    :try_start_e
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->q:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 7302
    :cond_14
    :goto_a
    new-instance v0, Lcom/sleepycat/b/g/i;

    iget-wide v6, v5, Lcom/sleepycat/b/g/h;->b:J

    iget-object v8, v5, Lcom/sleepycat/b/g/h;->a:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, v6, v7, v8}, Lcom/sleepycat/b/g/i;-><init>(JLcom/sleepycat/b/c/ad;)V

    iput-object v0, v5, Lcom/sleepycat/b/g/h;->e:Lcom/sleepycat/b/g/i;

    .line 7303
    const/4 v0, 0x0

    iput v0, v5, Lcom/sleepycat/b/g/h;->f:I

    move-object v0, v3

    goto/16 :goto_4

    .line 7288
    :catch_3
    move-exception v0

    .line 7289
    new-instance v1, Lcom/sleepycat/b/bo;

    iget-object v2, v5, Lcom/sleepycat/b/g/h;->a:Lcom/sleepycat/b/c/ad;

    const-string v3, "Unexpected interrupt while waiting for write or fsync"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7305
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v0
    :try_end_f
    .catch Lcom/sleepycat/b/aa; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_4

    .line 467
    :catch_4
    move-exception v0

    .line 468
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 469
    throw v0

    .line 7298
    :cond_15
    :try_start_10
    iget-object v0, v5, Lcom/sleepycat/b/g/h;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_a

    .line 7306
    :cond_16
    :try_start_11
    sget v6, Lcom/sleepycat/b/g/i;->a:I

    if-ne v4, v6, :cond_7

    .line 7307
    const/4 v2, 0x1

    .line 7308
    iget-object v4, v5, Lcom/sleepycat/b/g/h;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_11
    .catch Lcom/sleepycat/b/aa; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_4

    .line 7309
    :try_start_12
    iget-object v6, v5, Lcom/sleepycat/b/g/h;->n:Lcom/sleepycat/b/p/z;

    invoke-virtual {v6}, Lcom/sleepycat/b/p/z;->f()V

    .line 7310
    monitor-exit v4

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v0

    .line 7336
    :cond_17
    iget-object v2, v5, Lcom/sleepycat/b/g/h;->a:Lcom/sleepycat/b/c/ad;

    .line 8371
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 9282
    iget-boolean v4, v2, Lcom/sleepycat/b/g/am;->f:Z

    if-nez v4, :cond_8

    .line 9283
    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lcom/sleepycat/b/g/am;->a(Z)V
    :try_end_13
    .catch Lcom/sleepycat/b/aa; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_6

    .line 7363
    :catchall_3
    move-exception v0

    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    throw v0

    .line 415
    :cond_18
    iget-boolean v0, p2, Lcom/sleepycat/b/g/ad;->k:Z

    if-eqz v0, :cond_b

    .line 426
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/ab;->a(Z)V

    goto/16 :goto_7

    .line 444
    :cond_19
    iget-object v3, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/g/al;)V
    :try_end_15
    .catch Lcom/sleepycat/b/aa; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_4

    .line 430
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 464
    :cond_1b
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 476
    :cond_1c
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 11500
    iget-object v6, v0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 11517
    iget-wide v0, v6, Lcom/sleepycat/b/h/d;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 12272
    iget-boolean v0, v6, Lcom/sleepycat/b/p/h;->p:Z

    .line 11517
    if-nez v0, :cond_1d

    .line 11518
    iget-object v0, v6, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 12375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 12465
    iget-wide v0, v0, Lcom/sleepycat/b/g/m;->p:J

    .line 11519
    iget-wide v2, v6, Lcom/sleepycat/b/h/d;->h:J

    iget-wide v4, v6, Lcom/sleepycat/b/h/d;->f:J

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/p/j;->a(JJJ)J

    move-result-wide v0

    iget-wide v2, v6, Lcom/sleepycat/b/h/d;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    .line 11522
    invoke-virtual {v6}, Lcom/sleepycat/b/h/d;->f()V

    .line 477
    :cond_1d
    iget-boolean v0, p2, Lcom/sleepycat/b/g/ad;->i:Z

    if-eqz v0, :cond_1e

    .line 478
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 13088
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 13464
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 478
    invoke-virtual {v0}, Lcom/sleepycat/b/a/ae;->b()V

    .line 482
    :cond_1e
    iget-boolean v0, p2, Lcom/sleepycat/b/g/ad;->e:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    iget v1, p2, Lcom/sleepycat/b/g/ad;->j:I

    iget-object v2, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    .line 14159
    iget v2, v2, Lcom/sleepycat/b/g/ab;->a:I

    .line 14172
    iget v3, v0, Lcom/sleepycat/b/c/ad;->N:I

    .line 14173
    if-lez v3, :cond_0

    .line 14174
    iget-object v4, v0, Lcom/sleepycat/b/c/ad;->Q:Ljava/lang/Object;

    monitor-enter v4

    .line 14175
    :try_start_16
    iget-wide v6, v0, Lcom/sleepycat/b/c/ad;->P:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/sleepycat/b/c/ad;->P:J

    .line 14176
    iget-wide v6, v0, Lcom/sleepycat/b/c/ad;->P:J

    int-to-long v8, v2

    div-long/2addr v6, v8

    long-to-int v1, v6

    .line 14177
    if-lt v1, v3, :cond_1f

    .line 14178
    iget v1, v0, Lcom/sleepycat/b/c/ad;->L:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/c/ad;->L:I

    .line 14180
    iget-wide v6, v0, Lcom/sleepycat/b/c/ad;->P:J

    mul-int v1, v3, v2

    int-to-long v2, v1

    sub-long v2, v6, v2

    iput-wide v2, v0, Lcom/sleepycat/b/c/ad;->P:J

    .line 14181
    sget-boolean v1, Lcom/sleepycat/b/c/ad;->ai:Z

    if-nez v1, :cond_1f

    iget-wide v0, v0, Lcom/sleepycat/b/c/ad;->P:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14183
    :catchall_4
    move-exception v0

    monitor-exit v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v0

    :cond_1f
    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto/16 :goto_0
.end method

.method public final a(Lcom/sleepycat/b/c/i;Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/i;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1441
    iget-object v4, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v4

    .line 44424
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1443
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 44426
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 44427
    iget-object v6, p1, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    .line 45133
    iget-object v7, v6, Lcom/sleepycat/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45134
    iget-object v0, v6, Lcom/sleepycat/b/a/g;->d:Lcom/sleepycat/b/c/ao;

    sget v7, Lcom/sleepycat/b/a/g;->a:I

    rsub-int/lit8 v7, v7, 0x0

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Lcom/sleepycat/b/c/ao;->f(J)V

    .line 45135
    iget v0, v6, Lcom/sleepycat/b/a/g;->c:I

    sget v7, Lcom/sleepycat/b/a/g;->a:I

    sub-int/2addr v0, v7

    iput v0, v6, Lcom/sleepycat/b/a/g;->c:I

    move v0, v1

    .line 44427
    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    .line 44430
    goto :goto_0

    :cond_1
    move v0, v3

    .line 45138
    goto :goto_1

    .line 1442
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final b(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 230
    sget-object v2, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;ZZZLcom/sleepycat/b/g/av;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)Lcom/sleepycat/b/g/a/m;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->k()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/b/g/am;->a(JZ)Lcom/sleepycat/b/g/ay;

    move-result-object v0

    .line 27030
    iget-object v0, v0, Lcom/sleepycat/b/g/ay;->b:Lcom/sleepycat/b/g/a/m;

    .line 892
    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1271
    iget-boolean v0, p0, Lcom/sleepycat/b/g/am;->f:Z

    if-nez v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/am;->a(Z)V

    .line 1274
    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    .line 37604
    iget-object v0, v0, Lcom/sleepycat/b/g/ab;->b:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1333
    return-wide v0
.end method

.method public final c(J)Lcom/sleepycat/b/g/a/m;
    .locals 5

    .prologue
    .line 943
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/am;->a(J)Lcom/sleepycat/b/g/a/m;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 944
    :catch_0
    move-exception v0

    .line 945
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1199
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/am;->a(J)Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    .line 1200
    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1204
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/am;->c(J)Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    .line 1205
    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)Lcom/sleepycat/b/g/ap;
    .locals 5

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/g/ab;->a(J)Lcom/sleepycat/b/g/aa;

    move-result-object v0

    .line 1220
    if-nez v0, :cond_0

    .line 1223
    :try_start_0
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 1224
    new-instance v0, Lcom/sleepycat/b/g/k;

    iget-object v1, p0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/g/am;->g:I

    iget-object v3, p0, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/g/k;-><init>(Lcom/sleepycat/b/g/j;ILcom/sleepycat/b/g/m;)V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :cond_0
    return-object v0

    .line 1227
    :catch_0
    move-exception v0

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lsn= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n;->a(Ljava/lang/String;)V

    .line 1230
    throw v0
.end method

.method public final g(J)Lcom/sleepycat/b/g/aa;
    .locals 5

    .prologue
    .line 1243
    sget-boolean v0, Lcom/sleepycat/b/g/am;->j:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read of lsn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is illegal because file header entry is not in the log buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->a:Lcom/sleepycat/b/g/ab;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/g/ab;->a(J)Lcom/sleepycat/b/g/aa;

    move-result-object v0

    return-object v0
.end method

.method public final h(J)Lcom/sleepycat/b/a/z;
    .locals 3

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/sleepycat/b/g/am;->b:Lcom/sleepycat/b/f/a;

    monitor-enter v1

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/am;->e:Lcom/sleepycat/b/c/ad;

    .line 38088
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 38464
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 39205
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/a/ae;->b(J)Lcom/sleepycat/b/a/z;

    move-result-object v0

    .line 40055
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sleepycat/b/a/z;->q:Z

    .line 1348
    monitor-exit v1

    return-object v0

    .line 1350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
