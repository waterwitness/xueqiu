.class public Lcom/sleepycat/b/c/ay;
.super Ljava/lang/Object;
.source "SortedLSNTreeWalker.java"


# static fields
.field static final synthetic h:Z


# instance fields
.field private final a:[J

.field protected final b:[Lcom/sleepycat/b/c/i;

.field protected final c:Lcom/sleepycat/b/c/ad;

.field d:J

.field protected e:Z

.field protected f:Z

.field g:J

.field private final i:Z

.field private j:J

.field private final k:Lcom/sleepycat/b/c/bc;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/n;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/sleepycat/b/c/ba;

.field private final n:Lcom/sleepycat/b/m;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/c/bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/sleepycat/b/c/ay;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/ay;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([Lcom/sleepycat/b/c/i;Z[JLcom/sleepycat/b/c/bc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sleepycat/b/c/i;",
            "Z[J",
            "Lcom/sleepycat/b/c/bc;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-wide v2, p0, Lcom/sleepycat/b/c/ay;->d:J

    .line 118
    iput-boolean v0, p0, Lcom/sleepycat/b/c/ay;->e:Z

    .line 125
    iput-boolean v0, p0, Lcom/sleepycat/b/c/ay;->f:Z

    .line 139
    iput-wide v2, p0, Lcom/sleepycat/b/c/ay;->g:J

    .line 142
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/b/c/ay;->n:Lcom/sleepycat/b/m;

    .line 235
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/b/c/ay;->o:Ljava/util/Map;

    .line 264
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 265
    :cond_0
    const-string v0, "DatabaseImpls array is null or 0-length for SortedLSNTreeWalker"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 270
    :cond_1
    iput-object p1, p0, Lcom/sleepycat/b/c/ay;->b:[Lcom/sleepycat/b/c/i;

    .line 271
    aget-object v1, p1, v0

    .line 3133
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 271
    iput-object v1, p0, Lcom/sleepycat/b/c/ay;->c:Lcom/sleepycat/b/c/ad;

    .line 273
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_4

    aget-object v2, p1, v0

    .line 4133
    iget-object v3, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 275
    if-nez v3, :cond_2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "environmentImpl is null for target db "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 281
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/b/c/ay;->c:Lcom/sleepycat/b/c/ad;

    if-eq v3, v4, :cond_3

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Environment.preload() must be called with Databases which are all in the same Environment. ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_4
    iput-boolean p2, p0, Lcom/sleepycat/b/c/ay;->i:Z

    .line 290
    iput-object p3, p0, Lcom/sleepycat/b/c/ay;->a:[J

    .line 291
    iput-object p4, p0, Lcom/sleepycat/b/c/ay;->k:Lcom/sleepycat/b/c/bc;

    .line 292
    iput-object v5, p0, Lcom/sleepycat/b/c/ay;->l:Ljava/util/List;

    .line 293
    iput-object v5, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    .line 294
    return-void
.end method

.method private a(JLcom/sleepycat/b/m;Lcom/sleepycat/b/c/an;)Lcom/sleepycat/b/l/ac;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 550
    .line 553
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/c/ay;->b(JLcom/sleepycat/b/m;Lcom/sleepycat/b/c/an;)Lcom/sleepycat/b/l/ac;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 581
    :cond_0
    :goto_0
    return-object v1

    .line 554
    :catch_0
    move-exception v2

    .line 555
    iget-object v0, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    invoke-interface {v0}, Lcom/sleepycat/b/c/ba;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 557
    :cond_1
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/c/ay;->c:Lcom/sleepycat/b/c/ad;

    sget-object v4, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-direct {v0, v3, v4, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    .line 568
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 569
    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->l:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 575
    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    :catch_1
    move-exception v0

    .line 562
    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    invoke-interface {v2}, Lcom/sleepycat/b/c/ba;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_1

    .line 577
    :cond_3
    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private a(JLcom/sleepycat/b/c/bb;)V
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sleepycat/b/c/ay;->o:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p3}, Lcom/sleepycat/b/c/bb;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/c/ay;->a(J)V

    .line 690
    :cond_0
    return-void
.end method

.method private a(JLcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/ac;[B)V
    .locals 7

    .prologue
    .line 588
    const/4 v0, 0x0

    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/c/ay;->k:Lcom/sleepycat/b/c/bc;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sleepycat/b/c/bc;->a(JLcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/ac;[B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_1

    .line 606
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 607
    iget-object v1, p0, Lcom/sleepycat/b/c/ay;->l:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 613
    iget-object v1, p0, Lcom/sleepycat/b/c/ay;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_1
    return-void

    .line 592
    :catch_0
    move-exception v1

    .line 593
    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    invoke-interface {v2}, Lcom/sleepycat/b/c/ba;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 595
    :cond_2
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->c:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 599
    :catch_1
    move-exception v1

    .line 600
    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->m:Lcom/sleepycat/b/c/ba;

    invoke-interface {v2}, Lcom/sleepycat/b/c/ba;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 602
    goto :goto_0

    .line 615
    :cond_4
    throw v0
.end method

.method private a(Lcom/sleepycat/b/c/an;)V
    .locals 15

    .prologue
    .line 358
    .line 6096
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sleepycat/b/c/an;->b:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 358
    :goto_0
    if-nez v2, :cond_7

    .line 7078
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sleepycat/b/c/an;->b:I

    new-array v11, v2, [J

    .line 7079
    const/4 v2, 0x0

    .line 7082
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sleepycat/b/c/an;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7083
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 7084
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/a/t;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/t;->a()[J

    move-result-object v8

    array-length v9, v8

    const/4 v2, 0x0

    move v3, v2

    move v2, v4

    :goto_2
    if-ge v3, v9, :cond_2

    aget-wide v12, v8, v3

    .line 7085
    invoke-static {v6, v7, v12, v13}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v12

    aput-wide v12, v11, v2

    .line 7086
    add-int/lit8 v2, v2, 0x1

    .line 7084
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6096
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v4, v2

    .line 7088
    goto :goto_1

    .line 7090
    :cond_3
    invoke-static {v11}, Ljava/util/Arrays;->sort([J)V

    .line 7091
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/c/an;->a()V

    .line 360
    invoke-direct {p0}, Lcom/sleepycat/b/c/ay;->d()Lcom/sleepycat/b/c/an;

    move-result-object p1

    .line 361
    array-length v12, v11

    const/4 v2, 0x0

    move v10, v2

    :goto_3
    if-ge v10, v12, :cond_0

    aget-wide v4, v11, v10

    .line 7521
    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->n:Lcom/sleepycat/b/m;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/m;->a([B)V

    .line 7522
    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->n:Lcom/sleepycat/b/m;

    move-object/from16 v0, p1

    invoke-direct {p0, v4, v5, v2, v0}, Lcom/sleepycat/b/c/ay;->a(JLcom/sleepycat/b/m;Lcom/sleepycat/b/c/an;)Lcom/sleepycat/b/l/ac;

    move-result-object v7

    .line 7523
    if-eqz v7, :cond_5

    .line 7526
    instance-of v13, v7, Lcom/sleepycat/b/l/j;

    .line 7527
    const/4 v3, 0x0

    .line 7529
    if-eqz v13, :cond_8

    .line 7530
    :try_start_0
    move-object v0, v7

    check-cast v0, Lcom/sleepycat/b/l/j;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7531
    :try_start_1
    sget-object v3, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v2

    .line 7533
    :goto_4
    :try_start_2
    invoke-virtual {v7}, Lcom/sleepycat/b/l/ac;->S()Lcom/sleepycat/b/g/af;

    move-result-object v6

    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->n:Lcom/sleepycat/b/m;

    .line 8197
    iget-object v8, v2, Lcom/sleepycat/b/m;->a:[B

    move-object v3, p0

    .line 7533
    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/b/c/ay;->a(JLcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/ac;[B)V

    .line 7536
    if-eqz v13, :cond_4

    .line 7537
    move-object/from16 v0, p1

    invoke-direct {p0, v9, v0}, Lcom/sleepycat/b/c/ay;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/c/an;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7540
    :cond_4
    if-eqz v13, :cond_5

    .line 7541
    invoke-virtual {v9}, Lcom/sleepycat/b/l/j;->C()V

    .line 361
    :cond_5
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_3

    .line 7540
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v13, :cond_6

    .line 7541
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 7540
    :cond_6
    throw v2

    .line 365
    :cond_7
    return-void

    .line 7540
    :catchall_1
    move-exception v3

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v3, v9

    goto :goto_5

    :cond_8
    move-object v9, v3

    goto :goto_4
.end method

.method private a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/c/an;)V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 391
    .line 8717
    iget-object v0, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 399
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v1

    .line 411
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v0

    .line 422
    :goto_0
    if-eqz v0, :cond_12

    .line 423
    if-eqz v1, :cond_7

    iget-boolean v0, p0, Lcom/sleepycat/b/c/ay;->f:Z

    :goto_1
    move v9, v8

    .line 9345
    :goto_2
    iget v1, p1, Lcom/sleepycat/b/l/j;->f:I

    .line 430
    if-ge v9, v1, :cond_11

    .line 432
    invoke-virtual {p1, v9}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v2

    .line 433
    invoke-virtual {p1, v9}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v5

    .line 434
    if-eqz v5, :cond_8

    move v1, v7

    .line 436
    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lcom/sleepycat/b/l/ac;->u_()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_1
    invoke-virtual {p1, v9}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v6

    .line 439
    :goto_4
    invoke-virtual {p1, v9}, Lcom/sleepycat/b/l/j;->l(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v9}, Lcom/sleepycat/b/l/j;->o(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 9479
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sleepycat/b/l/ac;->u_()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9480
    check-cast v5, Lcom/sleepycat/b/l/y;

    .line 9481
    invoke-virtual {v5}, Lcom/sleepycat/b/l/y;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9482
    iget-object v1, p0, Lcom/sleepycat/b/c/ay;->k:Lcom/sleepycat/b/c/bc;

    invoke-interface {v1, v2, v3, v5}, Lcom/sleepycat/b/c/bc;->a(JLcom/sleepycat/b/l/y;)V

    .line 430
    :cond_3
    :goto_5
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_2

    .line 414
    :cond_4
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->T()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v7

    goto :goto_0

    :cond_6
    move v0, v8

    goto :goto_0

    .line 423
    :cond_7
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ay;->e:Z

    goto :goto_1

    :cond_8
    move v1, v8

    .line 434
    goto :goto_3

    .line 436
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 446
    :cond_a
    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    const-wide/16 v10, -0x1

    cmp-long v1, v2, v10

    if-eqz v1, :cond_e

    .line 451
    invoke-virtual {p2, v2, v3}, Lcom/sleepycat/b/c/an;->c(J)V

    .line 9672
    new-instance v1, Lcom/sleepycat/b/c/bb;

    invoke-direct {v1, p1, v9}, Lcom/sleepycat/b/c/bb;-><init>(Lcom/sleepycat/b/l/j;I)V

    invoke-direct {p0, v2, v3, v1}, Lcom/sleepycat/b/c/ay;->a(JLcom/sleepycat/b/c/bb;)V

    .line 459
    iget-wide v2, p0, Lcom/sleepycat/b/c/ay;->j:J

    iget-wide v4, p0, Lcom/sleepycat/b/c/ay;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_d

    move v1, v7

    .line 10044
    :goto_6
    iget v2, p2, Lcom/sleepycat/b/c/an;->b:I

    .line 461
    int-to-long v2, v2

    iget-wide v4, p0, Lcom/sleepycat/b/c/ay;->g:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    if-eqz v1, :cond_3

    .line 463
    :cond_b
    if-eqz v1, :cond_c

    .line 464
    iget-object v1, p0, Lcom/sleepycat/b/c/ay;->k:Lcom/sleepycat/b/c/bc;

    invoke-interface {v1}, Lcom/sleepycat/b/c/bc;->a()V

    .line 466
    :cond_c
    invoke-direct {p0, p2}, Lcom/sleepycat/b/c/ay;->a(Lcom/sleepycat/b/c/an;)V

    .line 10100
    iget-object v1, p2, Lcom/sleepycat/b/c/an;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 10101
    iput v8, p2, Lcom/sleepycat/b/c/an;->b:I

    .line 10102
    iget-wide v2, p2, Lcom/sleepycat/b/c/an;->c:J

    neg-long v2, v2

    invoke-virtual {p2, v2, v3}, Lcom/sleepycat/b/c/an;->b(J)V

    goto :goto_5

    :cond_d
    move v1, v8

    .line 459
    goto :goto_6

    .line 10492
    :cond_e
    if-eqz v5, :cond_f

    move v10, v7

    .line 10498
    :goto_7
    if-nez v10, :cond_10

    sget-object v4, Lcom/sleepycat/b/g/af;->H:Lcom/sleepycat/b/g/af;

    :goto_8
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/c/ay;->a(JLcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/ac;[B)V

    .line 10503
    if-eqz v10, :cond_3

    invoke-virtual {v5}, Lcom/sleepycat/b/l/ac;->O()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10504
    check-cast v5, Lcom/sleepycat/b/l/j;

    .line 10506
    :try_start_0
    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v5, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 10507
    invoke-direct {p0, v5, p2}, Lcom/sleepycat/b/c/ay;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/c/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10509
    invoke-virtual {v5}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_5

    :cond_f
    move v10, v8

    .line 10492
    goto :goto_7

    .line 10498
    :cond_10
    invoke-virtual {v5}, Lcom/sleepycat/b/l/ac;->S()Lcom/sleepycat/b/g/af;

    move-result-object v4

    goto :goto_8

    .line 10509
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/sleepycat/b/l/j;->C()V

    throw v0

    .line 476
    :cond_11
    return-void

    :cond_12
    move v0, v7

    goto/16 :goto_1
.end method

.method private b(JLcom/sleepycat/b/m;Lcom/sleepycat/b/c/an;)Lcom/sleepycat/b/l/ac;
    .locals 15

    .prologue
    .line 702
    iget-object v2, p0, Lcom/sleepycat/b/c/ay;->o:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/c/bb;

    .line 703
    sget-boolean v3, Lcom/sleepycat/b/c/ay;->h:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-static/range {p1 .. p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 704
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/b/c/bb;->c()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/sleepycat/b/c/ay;->a(J)V

    .line 705
    iget-object v3, v2, Lcom/sleepycat/b/c/bb;->b:Lcom/sleepycat/b/l/j;

    .line 706
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->F()Z

    move-result v8

    .line 707
    if-nez v8, :cond_1

    .line 708
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->B()V

    .line 712
    :cond_1
    :try_start_0
    iget v4, v2, Lcom/sleepycat/b/c/bb;->c:I

    .line 720
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/j;->l(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/j;->o(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    .line 808
    :cond_2
    if-nez v8, :cond_3

    .line 809
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 722
    :cond_3
    const/4 v5, 0x0

    .line 806
    :cond_4
    :goto_0
    return-object v5

    .line 724
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/b/c/bb;->a()Lcom/sleepycat/b/l/c;

    move-result-object v5

    if-nez v5, :cond_7

    .line 725
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/j;->k(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    cmp-long v5, v6, p1

    if-eqz v5, :cond_9

    .line 808
    if-nez v8, :cond_6

    .line 809
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 726
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 729
    :cond_7
    :try_start_2
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/sleepycat/b/c/bb;->b()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    cmp-long v5, v6, v10

    if-eqz v5, :cond_9

    .line 808
    if-nez v8, :cond_8

    .line 809
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 730
    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    .line 741
    :cond_9
    :try_start_3
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v5

    .line 742
    if-eqz v5, :cond_b

    .line 744
    invoke-virtual {v5}, Lcom/sleepycat/b/l/ac;->u_()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 745
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/m;->a([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 808
    :cond_a
    if-nez v8, :cond_4

    .line 809
    :goto_1
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_0

    .line 751
    :cond_b
    :try_start_4
    iget-object v5, p0, Lcom/sleepycat/b/c/ay;->c:Lcom/sleepycat/b/c/ad;

    .line 13371
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 751
    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Lcom/sleepycat/b/g/am;->a(J)Lcom/sleepycat/b/g/a/m;

    move-result-object v6

    .line 758
    instance-of v5, v6, Lcom/sleepycat/b/g/a/b;

    if-eqz v5, :cond_d

    .line 759
    invoke-interface {v6}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/b/l/c;

    .line 14113
    iget-wide v10, v5, Lcom/sleepycat/b/l/c;->b:J

    .line 761
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Lcom/sleepycat/b/c/an;->c(J)V

    .line 14683
    new-instance v2, Lcom/sleepycat/b/c/az;

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/b/c/az;-><init>(Lcom/sleepycat/b/l/j;ILcom/sleepycat/b/l/c;J)V

    invoke-direct {p0, v10, v11, v2}, Lcom/sleepycat/b/c/ay;->a(JLcom/sleepycat/b/c/bb;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 808
    if-nez v8, :cond_c

    .line 809
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 763
    :cond_c
    const/4 v5, 0x0

    goto :goto_0

    .line 14717
    :cond_d
    :try_start_5
    iget-object v9, v3, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 768
    const/4 v5, 0x0

    .line 769
    instance-of v7, v6, Lcom/sleepycat/b/g/a/k;

    if-eqz v7, :cond_14

    .line 770
    move-object v0, v6

    check-cast v0, Lcom/sleepycat/b/g/a/k;

    move-object v5, v0

    .line 771
    invoke-virtual {v5, v9}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V

    .line 772
    invoke-virtual {v5}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v5

    .line 773
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/sleepycat/b/m;->a([B)V

    move-object v7, v5

    .line 777
    :goto_2
    invoke-interface {v6, v9}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/b/l/ac;

    .line 784
    instance-of v6, v5, Lcom/sleepycat/b/l/j;

    if-eqz v6, :cond_e

    .line 785
    move-object v0, v5

    check-cast v0, Lcom/sleepycat/b/l/j;

    move-object v6, v0

    .line 14724
    iput-object v9, v6, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 793
    :cond_e
    invoke-virtual {v2}, Lcom/sleepycat/b/c/bb;->a()Lcom/sleepycat/b/l/c;

    move-result-object v10

    .line 794
    if-eqz v10, :cond_12

    .line 795
    sget-boolean v6, Lcom/sleepycat/b/c/ay;->h:Z

    if-nez v6, :cond_10

    .line 15113
    iget-wide v12, v10, Lcom/sleepycat/b/l/c;->b:J

    .line 795
    cmp-long v6, p1, v12

    if-eqz v6, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 808
    :catchall_0
    move-exception v2

    if-nez v8, :cond_f

    .line 809
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 808
    :cond_f
    throw v2

    .line 796
    :cond_10
    :try_start_6
    sget-boolean v6, Lcom/sleepycat/b/c/ay;->h:Z

    if-nez v6, :cond_11

    instance-of v6, v5, Lcom/sleepycat/b/l/a;

    if-nez v6, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 797
    :cond_11
    move-object v0, v5

    check-cast v0, Lcom/sleepycat/b/l/a;

    move-object v6, v0

    invoke-virtual {v10, v9, v6}, Lcom/sleepycat/b/l/c;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/a;)V

    .line 798
    invoke-virtual {v2}, Lcom/sleepycat/b/c/bb;->b()J

    move-result-wide p1

    .line 802
    :cond_12
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ay;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 803
    move-wide/from16 v0, p1

    invoke-virtual {v5, v9, v0, v1}, Lcom/sleepycat/b/l/ac;->a(Lcom/sleepycat/b/c/i;J)V

    .line 804
    invoke-virtual {v3, v4, v5, v7}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;[B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 808
    :cond_13
    if-nez v8, :cond_4

    goto/16 :goto_1

    :cond_14
    move-object v7, v5

    goto :goto_2
.end method

.method private d()Lcom/sleepycat/b/c/an;
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/sleepycat/b/c/ay$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/c/ay$1;-><init>(Lcom/sleepycat/b/c/ay;)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 658
    .line 12485
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 658
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/ah;->a(Z)Lcom/sleepycat/b/l/j;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/sleepycat/b/c/i;J)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sleepycat/b/c/ay;->c:Lcom/sleepycat/b/c/ad;

    .line 11371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 642
    invoke-virtual {v0, p2, p3}, Lcom/sleepycat/b/g/am;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 644
    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 649
    :goto_0
    return-object v0

    .line 647
    :cond_0
    sget-object v1, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/a;)V

    .line 11724
    iput-object p1, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ay;->c()V

    .line 325
    return-void
.end method

.method final a(J)V
    .locals 3

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/sleepycat/b/c/ay;->j:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sleepycat/b/c/ay;->j:J

    .line 306
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()V
    .locals 8

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/sleepycat/b/c/ay;->d()Lcom/sleepycat/b/c/an;

    move-result-object v2

    .line 339
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/c/ay;->b:[Lcom/sleepycat/b/c/i;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 340
    iget-object v1, p0, Lcom/sleepycat/b/c/ay;->b:[Lcom/sleepycat/b/c/i;

    aget-object v3, v1, v0

    iget-object v1, p0, Lcom/sleepycat/b/c/ay;->a:[J

    aget-wide v4, v1, v0

    .line 4626
    invoke-virtual {p0, v3}, Lcom/sleepycat/b/c/ay;->a(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/l/j;

    move-result-object v1

    .line 4627
    if-eqz v1, :cond_1

    .line 4375
    :goto_1
    if-eqz v1, :cond_0

    .line 4377
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/sleepycat/b/c/ay;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/c/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4665
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->C()V

    .line 4383
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/b/c/ay;->i:Z

    if-eqz v1, :cond_4

    .line 5502
    sget-boolean v1, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v1, :cond_3

    iget-short v1, v3, Lcom/sleepycat/b/c/i;->i:S

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4630
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 4631
    const/4 v1, 0x0

    goto :goto_1

    .line 4633
    :cond_2
    invoke-virtual {p0, v3, v4, v5}, Lcom/sleepycat/b/c/ay;->a(Lcom/sleepycat/b/c/i;J)Lcom/sleepycat/b/l/j;

    move-result-object v1

    goto :goto_1

    .line 4379
    :catchall_0
    move-exception v0

    .line 4665
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->C()V

    .line 4379
    throw v0

    .line 5504
    :cond_3
    const/4 v1, 0x3

    iput-short v1, v3, Lcom/sleepycat/b/c/i;->i:S

    .line 339
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_5
    invoke-direct {p0, v2}, Lcom/sleepycat/b/c/ay;->a(Lcom/sleepycat/b/c/an;)V

    .line 351
    return-void
.end method
