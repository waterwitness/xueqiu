.class public Lcom/sleepycat/b/a/aa;
.super Ljava/lang/Object;
.source "UtilizationCalculator.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field public a:F

.field public volatile b:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Z

.field private final j:Lcom/sleepycat/b/c/ad;

.field private final k:Lcom/sleepycat/b/a/c;

.field private final l:Ljava/util/logging/Logger;

.field private final m:Lcom/sleepycat/b/a/p;

.field private final n:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sleepycat/b/a/ab;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:I

.field private q:Lcom/sleepycat/b/p/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/p/ao",
            "<",
            "Lcom/sleepycat/b/a/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const-class v0, Lcom/sleepycat/b/a/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/aa;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;)V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/a/aa;->b:I

    .line 195
    iput-object p1, p0, Lcom/sleepycat/b/a/aa;->j:Lcom/sleepycat/b/c/ad;

    .line 196
    iput-object p2, p0, Lcom/sleepycat/b/a/aa;->k:Lcom/sleepycat/b/a/c;

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/a/aa;->l:Ljava/util/logging/Logger;

    .line 203
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/sleepycat/b/a/aa;->a:F

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/aa;->n:Ljava/util/LinkedList;

    .line 205
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/a/aa;->o:J

    .line 206
    new-instance v0, Lcom/sleepycat/b/a/p;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/a/p;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/aa;->m:Lcom/sleepycat/b/a/p;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 210
    sget-object v1, Lcom/sleepycat/b/b/d;->aD:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/b/a/aa;->i:Z

    .line 212
    sget-object v1, Lcom/sleepycat/b/b/d;->aL:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/a/aa;->d:I

    .line 214
    sget-object v1, Lcom/sleepycat/b/b/d;->aM:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/a/aa;->e:I

    .line 216
    sget-object v1, Lcom/sleepycat/b/b/d;->aN:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/a/aa;->f:I

    .line 218
    sget-object v1, Lcom/sleepycat/b/b/d;->aO:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/a/aa;->g:I

    .line 220
    sget-object v1, Lcom/sleepycat/b/b/d;->aP:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/aa;->h:I

    .line 222
    return-void
.end method

.method private c()V
    .locals 14

    .prologue
    const-wide/16 v0, 0x0

    .line 745
    .line 750
    iget-object v2, p0, Lcom/sleepycat/b/a/aa;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v2, v0

    move-wide v4, v0

    move-wide v6, v0

    move-wide v8, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/ab;

    .line 751
    iget v1, v0, Lcom/sleepycat/b/a/ab;->a:I

    int-to-long v12, v1

    add-long/2addr v8, v12

    .line 752
    iget v1, v0, Lcom/sleepycat/b/a/ab;->b:I

    int-to-long v12, v1

    add-long/2addr v6, v12

    .line 753
    iget v1, v0, Lcom/sleepycat/b/a/ab;->c:I

    int-to-long v12, v1

    add-long/2addr v4, v12

    .line 754
    iget v0, v0, Lcom/sleepycat/b/a/ab;->d:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 755
    goto :goto_0

    .line 763
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/a/aa;->e:I

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_1

    .line 782
    :goto_1
    return-void

    .line 775
    :cond_1
    long-to-double v0, v8

    long-to-double v6, v6

    div-double/2addr v0, v6

    double-to-float v0, v0

    .line 778
    long-to-double v4, v4

    long-to-double v2, v2

    div-double v2, v4, v2

    double-to-float v1, v2

    .line 781
    div-float/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/aa;->a:F

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/sleepycat/b/a/d;
    .locals 5

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sleepycat/b/a/d;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sleepycat/b/a/aa;->n:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v2, p0, Lcom/sleepycat/b/a/aa;->o:J

    iget v4, p0, Lcom/sleepycat/b/a/aa;->p:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/a/d;-><init>(Ljava/util/List;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/util/SortedMap;Ljava/util/Set;ZZLjava/util/Set;)Ljava/lang/Long;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/o;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;ZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 323
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 324
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 328
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/aa;->l:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/aa;->j:Lcom/sleepycat/b/c/ad;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Can\'t clean, map is empty."

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    const/4 v2, 0x0

    .line 505
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v2

    .line 335
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/aa;->l:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v15

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/aa;->k:Lcom/sleepycat/b/a/c;

    iget v0, v2, Lcom/sleepycat/b/a/c;->U:I

    move/from16 v16, v0

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/aa;->k:Lcom/sleepycat/b/a/c;

    iget v0, v2, Lcom/sleepycat/b/a/c;->V:I

    move/from16 v17, v0

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/aa;->k:Lcom/sleepycat/b/a/c;

    iget v6, v2, Lcom/sleepycat/b/a/c;->W:I

    .line 374
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/aa;->j:Lcom/sleepycat/b/c/ad;

    .line 5496
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 375
    invoke-virtual {v2}, Lcom/sleepycat/b/n/aj;->a()J

    move-result-wide v2

    .line 376
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-eqz v7, :cond_12

    .line 377
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 379
    cmp-long v7, v4, v2

    if-lez v7, :cond_12

    .line 388
    :goto_1
    int-to-long v4, v6

    sub-long v18, v2, v4

    .line 391
    const/4 v11, 0x0

    .line 392
    const/16 v10, 0x65

    .line 393
    const-wide/16 v8, 0x0

    .line 394
    const-wide/16 v6, 0x0

    .line 395
    const-wide/16 v4, 0x0

    .line 396
    const-wide/16 v2, 0x0

    .line 399
    invoke-interface/range {p1 .. p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-wide v12, v8

    move v14, v10

    move-wide v8, v4

    move-object v4, v11

    move-wide v10, v6

    move-wide v6, v2

    :cond_3
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 401
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 403
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/a/o;

    .line 404
    if-eqz p4, :cond_4

    invoke-virtual {v2}, Lcom/sleepycat/b/a/o;->g()I

    move-result v5

    .line 408
    :goto_3
    iget v0, v2, Lcom/sleepycat/b/a/o;->b:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v8, v8, v24

    .line 409
    int-to-long v0, v5

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sleepycat/b/a/aa;->k:Lcom/sleepycat/b/a/c;

    move-object/from16 v21, v0

    .line 6476
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-object/from16 v21, v0

    .line 416
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 417
    iget v3, v2, Lcom/sleepycat/b/a/o;->b:I

    sub-int/2addr v3, v5

    .line 418
    int-to-long v0, v3

    move-wide/from16 v24, v0

    add-long v12, v12, v24

    .line 419
    if-eqz v15, :cond_3

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/aa;->l:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sleepycat/b/a/aa;->j:Lcom/sleepycat/b/c/ad;

    move-object/from16 v21, v0

    sget-object v24, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Skip file previously selected for cleaning: 0x"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " utilizedSize: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v5, v0, v1, v2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 323
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 6284
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sleepycat/b/a/aa;->i:Z

    if-eqz v5, :cond_5

    .line 6285
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/aa;->a:F

    invoke-virtual {v2, v5}, Lcom/sleepycat/b/a/o;->a(F)I

    move-result v5

    goto/16 :goto_3

    .line 6287
    :cond_5
    invoke-virtual {v2}, Lcom/sleepycat/b/a/o;->f()I

    move-result v5

    goto/16 :goto_3

    .line 430
    :cond_6
    iget v0, v2, Lcom/sleepycat/b/a/o;->b:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v12, v12, v24

    .line 431
    int-to-long v0, v5

    move-wide/from16 v24, v0

    add-long v10, v10, v24

    .line 434
    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 439
    cmp-long v21, v22, v18

    if-gtz v21, :cond_3

    .line 444
    int-to-long v0, v5

    move-wide/from16 v22, v0

    iget v2, v2, Lcom/sleepycat/b/a/o;->b:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Lcom/sleepycat/b/a/o;->a(JJ)I

    move-result v5

    .line 446
    if-eqz v4, :cond_7

    if-ge v5, v14, :cond_11

    :cond_7
    move v2, v5

    move-object v4, v3

    .line 452
    :goto_4
    if-eqz p2, :cond_8

    move/from16 v0, v16

    if-ge v5, v0, :cond_8

    .line 454
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8
    move v14, v2

    .line 456
    goto/16 :goto_2

    .line 468
    :cond_9
    invoke-static {v10, v11, v12, v13}, Lcom/sleepycat/b/a/o;->a(JJ)I

    move-result v10

    .line 470
    invoke-static {v6, v7, v8, v9}, Lcom/sleepycat/b/a/o;->a(JJ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/aa;->b:I

    .line 473
    move/from16 v0, v16

    if-lt v10, v0, :cond_a

    move/from16 v0, v17

    if-ge v14, v0, :cond_b

    .line 476
    :cond_a
    const-string v2, "Chose lowest utilized file for cleaning."

    move-object v6, v2

    move-object v2, v4

    .line 489
    :goto_5
    if-eqz v2, :cond_e

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    move-object v5, v3

    .line 490
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/aa;->l:Ljava/util/logging/Logger;

    invoke-virtual {v3, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    if-eqz v2, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " fileChosen: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 494
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sleepycat/b/a/aa;->i:Z

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, " lnSizeCorrectionFactor: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sleepycat/b/a/aa;->a:F

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/aa;->l:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/a/aa;->j:Lcom/sleepycat/b/c/ad;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalUtilization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bestFileUtilization: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isProbe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8, v5, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :cond_b
    if-nez p3, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/aa;->m:Lcom/sleepycat/b/a/p;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/a/p;->a(Ljava/util/SortedMap;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/aa;->m:Lcom/sleepycat/b/a/p;

    .line 7134
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/a/p;->a(Ljava/util/SortedMap;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 7135
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sleepycat/b/a/p;->a:Z

    .line 7136
    iget-wide v2, v2, Lcom/sleepycat/b/a/p;->b:J

    .line 479
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 480
    const-string v2, "Chose file from files-to-migrate for cleaning."

    move-object v6, v2

    move-object v2, v3

    goto/16 :goto_5

    .line 7138
    :cond_c
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 485
    :cond_d
    const/4 v3, 0x0

    .line 486
    const-string v2, "No file selected for cleaning."

    move-object v6, v2

    move-object v2, v3

    goto/16 :goto_5

    .line 489
    :cond_e
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object v5, v3

    goto/16 :goto_6

    .line 491
    :cond_f
    const-string v3, ""

    move-object v4, v3

    goto/16 :goto_7

    .line 494
    :cond_10
    const-string v3, " (adjustment disabled)"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_8

    :cond_11
    move v2, v14

    goto/16 :goto_4

    :cond_12
    move-wide v2, v4

    goto/16 :goto_1
.end method

.method final declared-synchronized a(Ljava/util/SortedMap;Ljava/util/SortedSet;)Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/o;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 526
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 530
    :cond_1
    :try_start_1
    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 531
    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    .line 535
    :cond_2
    const/4 v2, 0x0

    .line 537
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 538
    invoke-interface {p1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/a/o;

    .line 546
    if-eqz v1, :cond_0

    .line 7306
    iget v5, v1, Lcom/sleepycat/b/a/o;->e:I

    iget v6, v1, Lcom/sleepycat/b/a/o;->c:I

    add-int/2addr v5, v6

    iget v6, v1, Lcom/sleepycat/b/a/o;->i:I

    sub-int/2addr v5, v6

    iget v1, v1, Lcom/sleepycat/b/a/o;->h:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v1, v5, v1

    .line 554
    if-eqz v3, :cond_3

    if-ge v1, v2, :cond_5

    :cond_3
    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_2
    move v2, v0

    move-object v3, v1

    .line 558
    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 560
    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/a/d;)V
    .locals 2

    .prologue
    .line 237
    monitor-enter p0

    .line 4048
    :try_start_0
    iget-wide v0, p1, Lcom/sleepycat/b/a/d;->b:J

    .line 237
    iput-wide v0, p0, Lcom/sleepycat/b/a/aa;->o:J

    .line 4052
    iget v0, p1, Lcom/sleepycat/b/a/d;->c:I

    .line 239
    iput v0, p0, Lcom/sleepycat/b/a/aa;->p:I

    .line 240
    iget-object v0, p0, Lcom/sleepycat/b/a/aa;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 241
    iget-object v0, p0, Lcom/sleepycat/b/a/aa;->n:Ljava/util/LinkedList;

    .line 5044
    iget-object v1, p1, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-direct {p0}, Lcom/sleepycat/b/a/aa;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 813
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sleepycat/b/a/aa;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 825
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 817
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/a/aa;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sleepycat/b/a/aa;->h:I

    .line 820
    :goto_1
    iget-wide v2, p0, Lcom/sleepycat/b/a/aa;->o:J

    sub-long v2, p1, v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 824
    iput-wide p1, p0, Lcom/sleepycat/b/a/aa;->o:J

    .line 825
    const/4 v0, 0x1

    goto :goto_0

    .line 817
    :cond_2
    iget v1, p0, Lcom/sleepycat/b/a/aa;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(JJLcom/sleepycat/b/a/o;Lcom/sleepycat/b/a/o;)Z
    .locals 13

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    move-wide/from16 v0, p3

    iput-wide v0, p0, Lcom/sleepycat/b/a/aa;->o:J

    .line 634
    move-object/from16 v0, p5

    iget v2, v0, Lcom/sleepycat/b/a/o;->i:I

    move-object/from16 v0, p6

    iget v3, v0, Lcom/sleepycat/b/a/o;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_0

    .line 636
    const/4 v2, 0x0

    .line 736
    :goto_0
    monitor-exit p0

    return v2

    .line 643
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/sleepycat/b/a/aa;->p:I

    iget v3, p0, Lcom/sleepycat/b/a/aa;->f:I

    if-ge v2, v3, :cond_1

    .line 644
    iget v2, p0, Lcom/sleepycat/b/a/aa;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/b/a/aa;->p:I

    .line 648
    :cond_1
    move-object/from16 v0, p5

    iget v2, v0, Lcom/sleepycat/b/a/o;->i:I

    move-object/from16 v0, p5

    iget v3, v0, Lcom/sleepycat/b/a/o;->e:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 651
    move-object/from16 v0, p5

    iget v3, v0, Lcom/sleepycat/b/a/o;->j:I

    move-object/from16 v0, p5

    iget v4, v0, Lcom/sleepycat/b/a/o;->f:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 654
    move-object/from16 v0, p5

    iget v4, v0, Lcom/sleepycat/b/a/o;->k:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 657
    move-object/from16 v0, p6

    iget v5, v0, Lcom/sleepycat/b/a/o;->j:I

    move-object/from16 v0, p6

    iget v6, v0, Lcom/sleepycat/b/a/o;->f:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 662
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/b/a/o;->e()F

    move-result v10

    .line 673
    sub-int/2addr v5, v3

    .line 674
    sub-int/2addr v2, v4

    .line 677
    if-lez v5, :cond_8

    if-lez v2, :cond_8

    .line 680
    move-object/from16 v0, p5

    iget v6, v0, Lcom/sleepycat/b/a/o;->f:I

    sub-int v3, v6, v3

    .line 682
    move-object/from16 v0, p5

    iget v6, v0, Lcom/sleepycat/b/a/o;->e:I

    sub-int v4, v6, v4

    .line 686
    sget-boolean v6, Lcom/sleepycat/b/a/aa;->c:Z

    if-nez v6, :cond_2

    int-to-float v6, v3

    int-to-float v7, v4

    div-float/2addr v6, v7

    cmpl-float v6, v10, v6

    if-eqz v6, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "expected="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "got="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 693
    :cond_2
    int-to-float v6, v5

    int-to-float v7, v2

    div-float v11, v6, v7

    .line 694
    div-float v12, v11, v10

    .line 696
    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v6, v12, v6

    if-ltz v6, :cond_3

    const/high16 v6, 0x42c80000    # 100.0f

    cmpl-float v6, v12, v6

    if-lez v6, :cond_4

    .line 698
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 702
    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/sleepycat/b/a/aa;->n:Ljava/util/LinkedList;

    new-instance v7, Lcom/sleepycat/b/a/ab;

    invoke-direct {v7, v5, v2, v3, v4}, Lcom/sleepycat/b/a/ab;-><init>(IIII)V

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 705
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/b/a/aa;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/sleepycat/b/a/aa;->d:I

    if-le v2, v3, :cond_5

    .line 706
    iget-object v2, p0, Lcom/sleepycat/b/a/aa;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 710
    :cond_5
    invoke-direct {p0}, Lcom/sleepycat/b/a/aa;->c()V

    .line 727
    :goto_2
    const/4 v2, 0x0

    .line 728
    sget-boolean v3, Lcom/sleepycat/b/a/aa;->c:Z

    if-nez v3, :cond_6

    const/4 v2, 0x1

    .line 729
    :cond_6
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sleepycat/b/a/aa;->q:Lcom/sleepycat/b/p/ao;

    if-eqz v2, :cond_7

    .line 730
    new-instance v3, Lcom/sleepycat/b/a/ac;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v12}, Lcom/sleepycat/b/a/ac;-><init>(JJLcom/sleepycat/b/a/o;Lcom/sleepycat/b/a/o;FFF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 712
    :cond_8
    const/high16 v11, 0x7fc00000    # NaNf

    .line 713
    const/high16 v12, 0x7fc00000    # NaNf

    goto :goto_2
.end method

.method final declared-synchronized b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 794
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sleepycat/b/a/aa;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 797
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget v1, p0, Lcom/sleepycat/b/a/aa;->p:I

    iget v2, p0, Lcom/sleepycat/b/a/aa;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
