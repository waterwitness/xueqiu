.class public Lcom/sleepycat/b/e/b;
.super Lcom/sleepycat/b/p/h;
.source "INCompressor.java"


# static fields
.field public static final synthetic f:Z


# instance fields
.field private A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/l/d;",
            ">;"
        }
    .end annotation
.end field

.field public a:Lcom/sleepycat/b/p/ai;

.field public b:Lcom/sleepycat/b/p/z;

.field public c:I

.field public d:I

.field public final e:Ljava/lang/Object;

.field private g:Lcom/sleepycat/b/c/ad;

.field private final h:J

.field private i:Lcom/sleepycat/b/p/z;

.field private j:Lcom/sleepycat/b/p/z;

.field private k:Lcom/sleepycat/b/p/z;

.field private t:Lcom/sleepycat/b/p/z;

.field private u:Lcom/sleepycat/b/p/z;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const-class v0, Lcom/sleepycat/b/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/e/b;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;JLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sleepycat/b/p/h;-><init>(JLjava/lang/String;Lcom/sleepycat/b/c/ad;)V

    .line 168
    iput v0, p0, Lcom/sleepycat/b/e/b;->v:I

    .line 169
    iput v0, p0, Lcom/sleepycat/b/e/b;->w:I

    .line 170
    iput v0, p0, Lcom/sleepycat/b/e/b;->x:I

    .line 171
    iput v0, p0, Lcom/sleepycat/b/e/b;->y:I

    .line 172
    iput v0, p0, Lcom/sleepycat/b/e/b;->z:I

    .line 179
    iput v0, p0, Lcom/sleepycat/b/e/b;->c:I

    .line 180
    iput v0, p0, Lcom/sleepycat/b/e/b;->d:I

    .line 194
    iput-object p1, p0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 195
    sget-object v1, Lcom/sleepycat/b/b/d;->al:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/e/b;->h:J

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->e:Ljava/lang/Object;

    .line 201
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Node Compression"

    const-string v2, "Removal and compression of internal btree nodes."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->a:Lcom/sleepycat/b/p/ai;

    .line 202
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/e/b;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/e/a;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->i:Lcom/sleepycat/b/p/z;

    .line 203
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/e/b;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/e/a;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->j:Lcom/sleepycat/b/p/z;

    .line 204
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/e/b;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/e/a;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->k:Lcom/sleepycat/b/p/z;

    .line 205
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/e/b;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/e/a;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->t:Lcom/sleepycat/b/p/z;

    .line 206
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/e/b;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/e/a;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->u:Lcom/sleepycat/b/p/z;

    .line 207
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/e/b;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/e/a;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/e/b;->b:Lcom/sleepycat/b/p/z;

    .line 208
    return-void
.end method

.method private declared-synchronized g()V
    .locals 20

    .prologue
    .line 404
    monitor-enter p0

    const/4 v2, 0x0

    .line 406
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 408
    if-lez v4, :cond_0

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    .line 410
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    .line 412
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    if-lez v4, :cond_1b

    .line 6582
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sleepycat/b/e/b;->v:I

    .line 6583
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sleepycat/b/e/b;->w:I

    .line 6584
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sleepycat/b/e/b;->x:I

    .line 6585
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sleepycat/b/e/b;->y:I

    .line 6586
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sleepycat/b/e/b;->z:I

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/e/b;->q:Lcom/sleepycat/b/c/ad;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "InCompress.doCompress called, queue size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 420
    sget-boolean v3, Lcom/sleepycat/b/e/b;->f:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 412
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    .line 430
    :cond_1
    new-instance v9, Lcom/sleepycat/b/a/s;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;

    invoke-direct {v9, v3}, Lcom/sleepycat/b/a/s;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 434
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;

    .line 7379
    iget-object v11, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 438
    new-instance v12, Lcom/sleepycat/b/e/c;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Lcom/sleepycat/b/e/c;-><init>(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 440
    :try_start_5
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 441
    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->l()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    :try_start_6
    invoke-virtual {v11, v10}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 472
    sget-boolean v2, Lcom/sleepycat/b/e/b;->f:Z

    if-nez v2, :cond_1a

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 446
    :cond_3
    :try_start_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/b/l/d;

    move-object v8, v0

    .line 8032
    iget-object v2, v8, Lcom/sleepycat/b/l/d;->c:Lcom/sleepycat/b/c/h;

    .line 7653
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/e/b;->h:J

    invoke-virtual {v11, v2, v4, v5, v10}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;

    move-result-object v2

    iput-object v2, v12, Lcom/sleepycat/b/e/c;->a:Lcom/sleepycat/b/c/i;

    .line 7655
    iget-object v2, v12, Lcom/sleepycat/b/e/c;->a:Lcom/sleepycat/b/c/i;

    if-eqz v2, :cond_4

    iget-object v2, v12, Lcom/sleepycat/b/e/c;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7657
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/e/b;->w:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/e/b;->w:I

    .line 7658
    const/4 v2, 0x0

    .line 447
    :goto_1
    if-eqz v2, :cond_2

    .line 457
    iget-object v3, v12, Lcom/sleepycat/b/e/c;->a:Lcom/sleepycat/b/c/i;

    iget-object v4, v12, Lcom/sleepycat/b/e/c;->b:Lcom/sleepycat/b/l/a;

    .line 11685
    iget-object v6, v4, Lcom/sleepycat/b/l/j;->g:[B

    .line 12345
    iget v2, v4, Lcom/sleepycat/b/l/j;->f:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 11491
    if-nez v2, :cond_9

    const/4 v2, 0x1

    .line 11494
    :goto_2
    if-nez v2, :cond_d

    .line 11506
    :try_start_8
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->A()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v2

    if-eqz v2, :cond_a

    .line 11527
    :try_start_9
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_0

    .line 471
    :catchall_2
    move-exception v2

    :try_start_a
    invoke-virtual {v11, v10}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 472
    sget-boolean v3, Lcom/sleepycat/b/e/b;->f:Z

    if-nez v3, :cond_19

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v3

    if-eqz v3, :cond_19

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 7662
    :cond_5
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/ad;->b(Z)V

    .line 7665
    iget-object v2, v12, Lcom/sleepycat/b/e/c;->a:Lcom/sleepycat/b/c/i;

    .line 9485
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 8573
    invoke-virtual {v8}, Lcom/sleepycat/b/l/d;->a()[B

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/l/aj;->a:Lcom/sleepycat/b/l/aj;

    const/4 v5, 0x0

    sget-object v6, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/l/aj;Lcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/a;

    .line 7665
    iput-object v2, v12, Lcom/sleepycat/b/e/c;->b:Lcom/sleepycat/b/l/a;

    .line 7666
    iget-object v2, v12, Lcom/sleepycat/b/e/c;->b:Lcom/sleepycat/b/l/a;

    if-eqz v2, :cond_6

    iget-object v2, v12, Lcom/sleepycat/b/e/c;->b:Lcom/sleepycat/b/l/a;

    .line 10342
    iget-wide v2, v2, Lcom/sleepycat/b/l/j;->c:J

    .line 11028
    iget-wide v4, v8, Lcom/sleepycat/b/l/d;->b:J

    .line 7666
    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 7669
    :cond_6
    iget-object v2, v12, Lcom/sleepycat/b/e/c;->b:Lcom/sleepycat/b/l/a;

    if-eqz v2, :cond_7

    .line 7670
    iget-object v2, v12, Lcom/sleepycat/b/e/c;->b:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->C()V

    .line 7672
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/e/b;->v:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/e/b;->v:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 7673
    const/4 v2, 0x0

    goto :goto_1

    .line 7676
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 11491
    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    .line 11511
    :cond_a
    :try_start_c
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->p()I

    move-result v2

    if-lez v2, :cond_b

    .line 11512
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/e/b;->a(Lcom/sleepycat/b/l/d;)V

    .line 11513
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/e/b;->x:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/e/b;->x:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 11527
    :try_start_d
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_0

    .line 11518
    :cond_b
    :try_start_e
    invoke-virtual {v4, v9}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/a/s;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 11519
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/e/b;->a(Lcom/sleepycat/b/l/d;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 11527
    :try_start_f
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_0

    .line 13345
    :cond_c
    :try_start_10
    iget v2, v4, Lcom/sleepycat/b/l/j;->f:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 11524
    if-nez v2, :cond_10

    const/4 v2, 0x1

    .line 11527
    :cond_d
    :goto_3
    :try_start_11
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 11531
    if-eqz v2, :cond_2

    .line 14485
    :try_start_12
    iget-object v7, v3, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 15461
    iget-object v2, v7, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 16133
    iget-object v14, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 16492
    iget-object v15, v14, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 15463
    const/4 v5, 0x0

    .line 15472
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 15474
    const/4 v3, 0x0

    .line 15475
    const/4 v4, 0x0

    .line 15476
    iget-object v2, v7, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->a()V
    :try_end_12
    .catch Lcom/sleepycat/b/l/ad; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/sleepycat/b/l/f; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 15478
    :try_start_13
    invoke-virtual {v7}, Lcom/sleepycat/b/l/ah;->c()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-result v2

    if-nez v2, :cond_11

    .line 15530
    :try_start_14
    invoke-static/range {v16 .. v16}, Lcom/sleepycat/b/l/ah;->a(Ljava/util/ArrayList;)V

    .line 15532
    if-eqz v3, :cond_e

    .line 15533
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 15536
    :cond_e
    iget-object v2, v7, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 13548
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/e/b;->z:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/e/b;->z:I
    :try_end_14
    .catch Lcom/sleepycat/b/l/ad; {:try_start_14 .. :try_end_14} :catch_0
    .catch Lcom/sleepycat/b/l/f; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto/16 :goto_0

    .line 13556
    :catch_0
    move-exception v2

    :try_start_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/e/b;->y:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/e/b;->y:I

    goto/16 :goto_0

    .line 11524
    :cond_10
    const/4 v2, 0x0

    goto :goto_3

    .line 11527
    :catchall_3
    move-exception v2

    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V

    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 15483
    :cond_11
    :try_start_16
    iget-object v2, v7, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    iget-object v0, v7, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/j;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 15484
    :try_start_17
    sget-object v3, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 15486
    move-object/from16 v0, v16

    invoke-static {v2, v6, v0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;[BLjava/util/ArrayList;)V

    .line 15487
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1d

    .line 15502
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/l/ak;

    .line 15504
    iget-object v4, v3, Lcom/sleepycat/b/l/ak;->a:Lcom/sleepycat/b/l/j;

    iget v5, v3, Lcom/sleepycat/b/l/ak;->c:I

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/l/j;->s(I)Z

    move-result v4

    .line 15507
    sget-boolean v5, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v5, :cond_13

    if-nez v4, :cond_13

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 15530
    :catchall_4
    move-exception v3

    move-object/from16 v19, v3

    move-object v3, v2

    move-object/from16 v2, v19

    :goto_5
    :try_start_18
    invoke-static/range {v16 .. v16}, Lcom/sleepycat/b/l/ah;->a(Ljava/util/ArrayList;)V

    .line 15532
    if-eqz v3, :cond_12

    .line 15533
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 15536
    :cond_12
    iget-object v3, v7, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->d()V

    .line 15530
    throw v2
    :try_end_18
    .catch Lcom/sleepycat/b/l/ad; {:try_start_18 .. :try_end_18} :catch_0
    .catch Lcom/sleepycat/b/l/f; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 13559
    :catch_1
    move-exception v2

    :try_start_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/e/b;->a(Lcom/sleepycat/b/l/d;)V

    .line 13560
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/e/b;->x:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/e/b;->x:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto/16 :goto_0

    .line 15509
    :cond_13
    :try_start_1a
    iget-object v4, v3, Lcom/sleepycat/b/l/ak;->b:Lcom/sleepycat/b/l/j;

    .line 15521
    iget-object v5, v7, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v5}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 15522
    iget-object v3, v3, Lcom/sleepycat/b/l/ak;->a:Lcom/sleepycat/b/l/j;

    invoke-virtual {v4, v15, v3}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/l/j;)V

    .line 15527
    :cond_14
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/sleepycat/b/l/ah;->b(Ljava/util/ArrayList;)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    move-result v3

    .line 15530
    :goto_6
    :try_start_1b
    invoke-static/range {v16 .. v16}, Lcom/sleepycat/b/l/ah;->a(Ljava/util/ArrayList;)V

    .line 15532
    if-eqz v2, :cond_15

    .line 15533
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    .line 15536
    :cond_15
    iget-object v2, v7, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 15539
    if-eqz v4, :cond_f

    .line 15541
    if-eqz v3, :cond_16

    .line 17379
    iget-object v2, v14, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 15547
    iget-object v3, v7, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/i;)V

    .line 17515
    iget-object v2, v14, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 15549
    iget-object v3, v7, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    invoke-static {v2, v3}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;)V

    .line 15553
    :cond_16
    iget-object v2, v7, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v2

    if-nez v2, :cond_17

    .line 15560
    invoke-virtual {v4, v15, v9}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/a/s;)V

    .line 15563
    :cond_17
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "SubtreeRemoval: subtreeRoot = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18342
    iget-wide v4, v4, Lcom/sleepycat/b/l/j;->c:J

    .line 15563
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v14, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Level;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1b
    .catch Lcom/sleepycat/b/l/ad; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Lcom/sleepycat/b/l/f; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_4

    .line 468
    :cond_18
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;

    .line 19095
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 19468
    iget-object v2, v2, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    .line 468
    invoke-virtual {v2, v9}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/a/s;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 471
    :try_start_1d
    invoke-virtual {v11, v10}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 472
    sget-boolean v2, Lcom/sleepycat/b/e/b;->f:Z

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 19590
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->i:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/e/b;->v:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->j:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/e/b;->w:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->k:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/e/b;->x:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->t:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/e/b;->y:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/e/b;->u:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/e/b;->z:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 471
    throw v2

    .line 19590
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->i:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->v:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->j:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->w:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->k:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->x:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->t:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->y:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->u:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->z:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 476
    :cond_1b
    :goto_7
    monitor-exit p0

    return-void

    .line 19590
    :cond_1c
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->i:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->v:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->j:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->w:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->k:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->x:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->t:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->y:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/e/b;->u:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/e/b;->z:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_7

    .line 15530
    :catchall_5
    move-exception v2

    goto/16 :goto_5

    :cond_1d
    move v3, v4

    move-object v4, v5

    goto/16 :goto_6
.end method


# virtual methods
.method protected final a()J
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;

    .line 6392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 376
    sget-object v1, Lcom/sleepycat/b/b/d;->ak:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/l/a;)V
    .locals 4

    .prologue
    .line 283
    iget-object v1, p0, Lcom/sleepycat/b/e/b;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 5342
    :try_start_0
    iget-wide v2, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 4339
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4340
    iget-object v2, p0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4343
    iget-object v2, p0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/b/l/a;->d()Lcom/sleepycat/b/l/d;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/l/d;)V
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/sleepycat/b/e/b;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/e/b;->b(Lcom/sleepycat/b/l/d;)V

    .line 298
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    monitor-exit p0

    return-void

    .line 387
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sleepycat/b/e/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/e/b;->d:I

    .line 388
    invoke-direct {p0}, Lcom/sleepycat/b/e/b;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/sleepycat/b/l/d;)V
    .locals 2

    .prologue
    .line 328
    .line 6028
    iget-wide v0, p1, Lcom/sleepycat/b/l/d;->b:J

    .line 328
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 211
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sleepycat/b/e/b;->g:Lcom/sleepycat/b/c/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sleepycat/b/e/b;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/e/b;->A:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 267
    monitor-exit v1

    .line 269
    return v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
