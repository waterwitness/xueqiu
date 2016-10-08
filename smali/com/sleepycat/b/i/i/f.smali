.class public Lcom/sleepycat/b/i/i/f;
.super Ljava/lang/Object;
.source "VLSNIndex.java"


# static fields
.field public static a:I

.field static final synthetic k:Z


# instance fields
.field public final b:Lcom/sleepycat/b/c/ad;

.field public c:Lcom/sleepycat/b/i/i/i;

.field public d:Lcom/sleepycat/b/p/au;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/logging/Logger;

.field public g:Ljava/util/concurrent/atomic/AtomicLong;

.field public h:Lcom/sleepycat/b/i/i/p;

.field public final i:Lcom/sleepycat/b/i/i/b;

.field public final j:Lcom/sleepycat/b/p/ai;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/sleepycat/b/c/i;

.field private final n:Lcom/sleepycat/b/p/z;

.field private final o:Lcom/sleepycat/b/p/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    const-class v0, Lcom/sleepycat/b/i/i/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/i/f;->k:Z

    .line 316
    const v0, 0xea60

    sput v0, Lcom/sleepycat/b/i/i/f;->a:I

    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;IIILcom/sleepycat/b/h/l;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    .line 329
    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->d:Lcom/sleepycat/b/p/au;

    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->e:Ljava/lang/Object;

    .line 336
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->l:Ljava/lang/Object;

    .line 395
    iput-object p1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    .line 403
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "VLSNIndex"

    const-string v2, "VLSN Index related stats."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->j:Lcom/sleepycat/b/p/ai;

    .line 405
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->j:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/i/l;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->n:Lcom/sleepycat/b/p/z;

    .line 408
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->j:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/i/i/l;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->o:Lcom/sleepycat/b/p/z;

    .line 3523
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v1, Lcom/sleepycat/b/br;

    invoke-direct {v1}, Lcom/sleepycat/b/br;-><init>()V

    invoke-static {v0, v1}, Lcom/sleepycat/b/n/z;->b(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;

    move-result-object v1

    .line 3527
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    .line 4379
    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 3528
    const/4 v0, 0x0

    invoke-virtual {v2, v1, p2, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/n/d;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 3531
    if-nez v0, :cond_1

    .line 3532
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    .line 5330
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 3532
    if-eqz v0, :cond_0

    .line 3534
    const-string v0, "A replicated environment can\'t be opened read only."

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3543
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    throw v0

    .line 3537
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/l;

    invoke-direct {v0}, Lcom/sleepycat/b/l;-><init>()V

    .line 6268
    const/4 v3, 0x0

    .line 6277
    iput-boolean v3, v0, Lcom/sleepycat/b/l;->j:Z

    .line 3539
    invoke-virtual {v2, v1, p2, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 3541
    :cond_1
    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3543
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 3372
    new-instance v0, Lcom/sleepycat/b/i/i/p;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    iget-object v6, p0, Lcom/sleepycat/b/i/i/f;->j:Lcom/sleepycat/b/p/ai;

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/i/i/p;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;IIILcom/sleepycat/b/p/ai;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    .line 3394
    iget-object v0, p6, Lcom/sleepycat/b/h/l;->o:Lcom/sleepycat/b/h/u;

    check-cast v0, Lcom/sleepycat/b/i/i/o;

    .line 6419
    if-nez v0, :cond_3

    .line 6420
    sget-object v0, Lcom/sleepycat/b/u;->a:Lcom/sleepycat/b/u;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/u;)V

    .line 418
    :cond_2
    :goto_0
    new-instance v0, Lcom/sleepycat/b/i/i/b;

    .line 9392
    iget-object v1, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 418
    sget-object v2, Lcom/sleepycat/b/i/c/an;->E:Lcom/sleepycat/b/b/e;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->j:Lcom/sleepycat/b/p/ai;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/i/b;-><init>(ILcom/sleepycat/b/p/ai;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->i:Lcom/sleepycat/b/i/i/b;

    .line 421
    return-void

    .line 7118
    :cond_3
    iget-object v1, v0, Lcom/sleepycat/b/i/i/o;->d:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v7

    .line 6424
    :goto_1
    if-eqz v1, :cond_4

    .line 7122
    iget-object v1, v0, Lcom/sleepycat/b/i/i/o;->a:Lcom/sleepycat/b/p/au;

    .line 6441
    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7126
    iget-wide v2, v0, Lcom/sleepycat/b/i/i/o;->b:J

    .line 6452
    sget-object v4, Lcom/sleepycat/b/g/af;->D:Lcom/sleepycat/b/g/af;

    .line 7644
    iget-byte v4, v4, Lcom/sleepycat/b/g/af;->K:B

    .line 6452
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/i/i/o;->a(Lcom/sleepycat/b/p/au;JB)V

    .line 6477
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 8114
    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 6478
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/o;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v2

    .line 9110
    iget-object v2, v2, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 6479
    iget-object v3, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->N()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->N()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v3

    if-lez v3, :cond_7

    .line 6483
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recoveryTracker should overlap or follow on disk last VLSN of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " recoveryFirst= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    :cond_6
    move v1, v8

    .line 7118
    goto :goto_1

    .line 6489
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 9114
    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 6490
    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6492
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/i/i/o;)V

    .line 6493
    sget-object v0, Lcom/sleepycat/b/u;->a:Lcom/sleepycat/b/u;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/u;)V

    goto/16 :goto_0

    .line 6501
    :cond_8
    new-instance v1, Lcom/sleepycat/b/br;

    invoke-direct {v1}, Lcom/sleepycat/b/br;-><init>()V

    .line 6502
    sget-object v3, Lcom/sleepycat/b/u;->a:Lcom/sleepycat/b/u;

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 6503
    iget-object v3, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v3, v1}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;

    move-result-object v1

    .line 6507
    const-wide/16 v4, -0x1

    :try_start_2
    invoke-direct {p0, v2, v4, v5, v1}, Lcom/sleepycat/b/i/i/f;->b(Lcom/sleepycat/b/p/au;JLcom/sleepycat/b/n/z;)Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 6509
    iget-object v3, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v3, v2, v0}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/o;)V

    .line 6510
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/n/z;)V

    .line 6511
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->m()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 6514
    :catchall_1
    move-exception v0

    .line 6515
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 6514
    throw v0
.end method

.method private a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/e;
    .locals 3

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    sget-object v1, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {v0, p1, v1}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v0

    .line 27391
    iget-object v1, v0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 28263
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sleepycat/b/c/c;->i:Z

    .line 2190
    return-object v0
.end method

.method public static synthetic a(Lcom/sleepycat/b/i/i/f;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/f;->c(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/e;)Lcom/sleepycat/b/i/i/c;
    .locals 6

    .prologue
    .line 1047
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 1048
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 22101
    iget-wide v4, p0, Lcom/sleepycat/b/p/au;->c:J

    .line 1049
    invoke-static {v4, v5, v1}, Lcom/sleepycat/a/a/g;->a(JLcom/sleepycat/b/m;)V

    .line 1050
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {p1, v1, v2, v0}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1053
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v3, :cond_2

    .line 1054
    invoke-static {v2}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 1055
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-object v0

    .line 1063
    :cond_1
    sget-object v3, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {p1, v1, v2, v3}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 1064
    invoke-static {v3, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/av;Lcom/sleepycat/b/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    invoke-static {v2}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v1

    .line 1066
    invoke-virtual {v1, p0}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1067
    goto :goto_0

    .line 1079
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/n/z;)V
    .locals 3

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, v2, p1}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)V

    .line 1615
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/sleepycat/b/p/au;JLcom/sleepycat/b/n/z;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1198
    const/4 v1, 0x0

    .line 1201
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 1203
    :try_start_1
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 1204
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 1205
    invoke-static {v6, p1, v2, v3}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1274
    if-eqz v6, :cond_0

    .line 1275
    :goto_0
    invoke-virtual {v6}, Lcom/sleepycat/b/e;->close()V

    .line 1277
    :cond_0
    return-void

    .line 1213
    :cond_1
    :try_start_2
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 1214
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v5, v7}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 1217
    :cond_2
    invoke-static {v2}, Lcom/sleepycat/a/a/g;->a(Lcom/sleepycat/b/m;)J

    move-result-wide v4

    .line 1218
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-eqz v7, :cond_5

    .line 1222
    invoke-virtual {v6}, Lcom/sleepycat/b/e;->b()Lcom/sleepycat/b/av;

    move-result-object v7

    .line 1223
    add-int/lit8 v0, v0, 0x1

    .line 1224
    sget-object v8, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v7, v8, :cond_4

    .line 1225
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t delete, got status of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for delete of bucket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleteEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1274
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 1275
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 1274
    :cond_3
    throw v0

    .line 1230
    :cond_4
    :try_start_3
    sget-object v4, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v6, v2, v1, v4}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v4, v5, :cond_2

    .line 1232
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->n:Lcom/sleepycat/b/p/z;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 1238
    invoke-virtual {p1}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v1

    .line 1239
    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2}, Lcom/sleepycat/a/a/g;->a(JLcom/sleepycat/b/m;)V

    .line 1240
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v6, v2, v3, v0}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1244
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v2, :cond_6

    .line 1274
    if-eqz v6, :cond_0

    goto :goto_0

    .line 1248
    :cond_6
    invoke-static {v3}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 1250
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1274
    if-eqz v6, :cond_0

    goto/16 :goto_0

    .line 1254
    :cond_7
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-gez v2, :cond_8

    .line 1255
    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "newStart "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " should be < first bucket:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1264
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    .line 23375
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 1264
    const/4 v3, 0x1

    invoke-virtual {v2, p2, p3, v3}, Lcom/sleepycat/b/g/m;->a(JZ)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1267
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/i/i/c;->c(Lcom/sleepycat/b/p/au;)J

    move-result-wide v4

    .line 1268
    new-instance v0, Lcom/sleepycat/b/i/i/a;

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/i/a;-><init>(Lcom/sleepycat/b/p/au;JJ)V

    .line 1271
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, v1, v6}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1274
    if-eqz v6, :cond_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_1
.end method

.method private static a(Lcom/sleepycat/b/av;Lcom/sleepycat/b/m;)Z
    .locals 4

    .prologue
    .line 863
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/sleepycat/a/a/g;->a(Lcom/sleepycat/b/m;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1093
    .line 23101
    iget-wide v2, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 1093
    invoke-static {v2, v3, p2}, Lcom/sleepycat/a/a/g;->a(JLcom/sleepycat/b/m;)V

    .line 1097
    sget-object v2, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {p0, p2, p3, v2}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 1100
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v3, :cond_2

    .line 1101
    invoke-static {p3}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v2

    .line 1102
    invoke-virtual {v2, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return v0

    .line 1107
    :cond_1
    sget-object v2, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {p0, p2, p3, v2}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 1108
    invoke-static {v2, p2}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/av;Lcom/sleepycat/b/m;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1113
    goto :goto_0

    .line 1119
    :cond_2
    sget-object v2, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {p0, p2, p3, v2}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 1120
    invoke-static {v2, p2}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/av;Lcom/sleepycat/b/m;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1124
    goto :goto_0
.end method

.method private b(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/c;)Lcom/sleepycat/b/i/i/c;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 934
    .line 937
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v0}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 938
    :try_start_1
    invoke-direct {p0, v2}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 944
    :try_start_2
    invoke-static {p1, v3}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/e;)Lcom/sleepycat/b/i/i/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 945
    if-eqz v0, :cond_2

    .line 1029
    if-eqz v3, :cond_0

    .line 1030
    invoke-virtual {v3}, Lcom/sleepycat/b/e;->close()V

    .line 1033
    :cond_0
    if-eqz v2, :cond_1

    .line 1034
    :goto_0
    invoke-virtual {v2, v10}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 991
    :cond_1
    :goto_1
    return-object v0

    .line 970
    :cond_2
    :try_start_3
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 971
    new-instance v6, Lcom/sleepycat/b/m;

    invoke-direct {v6}, Lcom/sleepycat/b/m;-><init>()V

    .line 972
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v3, v5, v6, v0}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 974
    invoke-static {v0, v5}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/av;Lcom/sleepycat/b/m;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 975
    invoke-static {v6}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 976
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    .line 1029
    if-eqz v3, :cond_3

    .line 1030
    invoke-virtual {v3}, Lcom/sleepycat/b/e;->close()V

    .line 1033
    :cond_3
    if-eqz v2, :cond_1

    goto :goto_0

    .line 988
    :cond_4
    :try_start_4
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->e(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 989
    invoke-static {p1, v3}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/e;)Lcom/sleepycat/b/i/i/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 990
    if-eqz v1, :cond_7

    .line 1029
    if-eqz v3, :cond_5

    .line 1030
    invoke-virtual {v3}, Lcom/sleepycat/b/e;->close()V

    .line 1033
    :cond_5
    if-eqz v2, :cond_6

    .line 1034
    invoke-virtual {v2, v10}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_6
    move-object v0, v1

    .line 991
    goto :goto_1

    :cond_7
    move-object v4, v0

    .line 1002
    :goto_2
    const/4 v0, 0x0

    .line 1003
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    sget-object v1, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v3, v5, v6, v1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v1

    .line 1005
    :goto_3
    sget-object v8, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v1, v8, :cond_b

    .line 1006
    invoke-static {v5}, Lcom/sleepycat/a/a/g;->a(Lcom/sleepycat/b/m;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1007
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "key => "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    if-nez v0, :cond_8

    .line 1010
    invoke-static {v6}, Lcom/sleepycat/b/i/i/m;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 1011
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "range =>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 1018
    sget-object v1, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v3, v5, v6, v1}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v1

    goto :goto_3

    .line 1013
    :cond_8
    invoke-static {v6}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v1

    .line 1014
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bucket => "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\n"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 1029
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_9

    .line 1030
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 1033
    :cond_9
    if-eqz v1, :cond_a

    .line 1034
    invoke-virtual {v1, v10}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1029
    :cond_a
    throw v0

    .line 1021
    :cond_b
    :try_start_6
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VLSNIndex Dump: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t find bucket for GTE VLSN "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " in database. EndBucket="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "currentBucket="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " tracker = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1029
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_5

    :cond_c
    move-object v4, v1

    goto/16 :goto_2
.end method

.method private b(Lcom/sleepycat/b/p/au;JLcom/sleepycat/b/n/z;)Lcom/sleepycat/b/p/au;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1295
    invoke-virtual {p1}, Lcom/sleepycat/b/p/au;->e()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 1296
    const/4 v1, 0x0

    .line 1299
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 1301
    new-instance v4, Lcom/sleepycat/b/m;

    invoke-direct {v4}, Lcom/sleepycat/b/m;-><init>()V

    .line 1302
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 25101
    iget-wide v6, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 24138
    invoke-static {v6, v7, v4}, Lcom/sleepycat/a/a/g;->a(JLcom/sleepycat/b/m;)V

    .line 24142
    sget-object v6, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v4, v5, v6}, Lcom/sleepycat/b/e;->f(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v6

    .line 24145
    sget-object v7, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v6, v7, :cond_6

    .line 24146
    invoke-static {v5}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v3

    .line 24147
    invoke-virtual {v3, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1303
    :cond_0
    :goto_0
    if-nez v2, :cond_8

    .line 1304
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    .line 25819
    iget-object v0, v0, Lcom/sleepycat/b/i/i/p;->c:Lcom/sleepycat/b/p/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    if-eqz v1, :cond_1

    .line 1346
    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 1349
    :cond_1
    return-object v0

    .line 24159
    :cond_2
    :try_start_1
    sget-object v3, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v4, v5, v3}, Lcom/sleepycat/b/e;->d(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 24160
    sget-boolean v6, Lcom/sleepycat/b/i/i/f;->k:Z

    if-nez v6, :cond_4

    sget-object v6, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v3, v6, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1345
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 1346
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 1345
    :cond_3
    throw v0

    .line 24162
    :cond_4
    :try_start_2
    invoke-static {v3, v4}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/av;Lcom/sleepycat/b/m;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24163
    invoke-static {v5}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v3

    .line 24164
    invoke-virtual {v3, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24173
    :cond_5
    sget-object v3, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v4, v5, v3}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    goto :goto_0

    .line 24180
    :cond_6
    sget-object v6, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v4, v5, v6}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v6

    .line 24181
    invoke-static {v6, v4}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/av;Lcom/sleepycat/b/m;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 24182
    invoke-static {v5}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v6

    .line 24183
    invoke-virtual {v6, p1}, Lcom/sleepycat/b/i/i/c;->d(Lcom/sleepycat/b/p/au;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_7
    move v2, v3

    .line 24188
    goto :goto_0

    .line 1311
    :cond_8
    invoke-static {v5}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;

    move-result-object v2

    .line 1312
    invoke-virtual {v2}, Lcom/sleepycat/b/i/i/c;->d()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v3

    if-gez v3, :cond_a

    .line 1313
    invoke-virtual {v2, p1, p2, p3}, Lcom/sleepycat/b/i/i/c;->b(Lcom/sleepycat/b/p/au;J)V

    .line 1314
    invoke-virtual {v2}, Lcom/sleepycat/b/i/i/c;->e()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 25905
    new-instance v3, Lcom/sleepycat/b/i/i/e;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/sleepycat/b/i/i/e;-><init>(B)V

    .line 25906
    invoke-virtual {v3, v2, v5}, Lcom/sleepycat/b/i/i/e;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 1316
    invoke-virtual {v1, v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 1317
    sget-object v6, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v3, v6, :cond_9

    .line 1318
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t update "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1322
    :cond_9
    sget-object v2, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v4, v5, v2}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 1323
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v2, v3, :cond_a

    .line 1345
    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 1331
    :cond_a
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 1332
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 1335
    :cond_b
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->b()Lcom/sleepycat/b/av;

    move-result-object v3

    .line 1336
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v3, v5, :cond_c

    .line 1337
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t delete after vlsn "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1341
    :cond_c
    sget-object v3, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v4, v2, v3}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v3

    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v3, v5, :cond_b

    .line 1343
    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->o:Lcom/sleepycat/b/p/z;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1345
    if-eqz v1, :cond_1

    goto/16 :goto_1
.end method

.method private c(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/p;->b(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 849
    if-nez v0, :cond_0

    .line 850
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/f;->d(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 852
    :cond_0
    return-object v0
.end method

.method private d(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 875
    .line 877
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 878
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v1}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 881
    :try_start_1
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/e;

    move-result-object v2

    .line 883
    invoke-static {v2, p1, v0, v3}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 884
    invoke-static {v3}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 892
    if-eqz v2, :cond_0

    .line 893
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 896
    :cond_0
    if-eqz v1, :cond_1

    .line 897
    invoke-virtual {v1, v5}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 884
    :cond_1
    return-object v0

    .line 888
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t find bucket for LTE VLSN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "in database. tracker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 892
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v2, :cond_3

    .line 893
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 896
    :cond_3
    if-eqz v1, :cond_4

    .line 897
    invoke-virtual {v1, v5}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 892
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/au;)J
    .locals 2

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/i/f;->c(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/p/au;I)Lcom/sleepycat/b/g/al;
    .locals 4

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 11114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 545
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->i:Lcom/sleepycat/b/i/i/b;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/b;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/g/al;

    move-result-object v0

    .line 584
    :cond_0
    :goto_0
    return-object v0

    .line 550
    :cond_1
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 12114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 552
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 553
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->i:Lcom/sleepycat/b/i/i/b;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/b;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/g/al;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 556
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12607
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    if-nez v0, :cond_5

    .line 12608
    iput-object p1, p0, Lcom/sleepycat/b/i/i/f;->d:Lcom/sleepycat/b/p/au;

    .line 12609
    new-instance v0, Lcom/sleepycat/b/i/i/i;

    invoke-direct {v0}, Lcom/sleepycat/b/i/i/i;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    .line 562
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 563
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/sleepycat/b/i/i/i;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13372
    iget-boolean v1, v0, Lcom/sleepycat/b/i/i/i;->b:Z

    .line 570
    if-eqz v1, :cond_6

    .line 573
    :cond_4
    new-instance v0, Lcom/sleepycat/b/i/i/k;

    invoke-direct {v0}, Lcom/sleepycat/b/i/i/k;-><init>()V

    throw v0

    .line 12612
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->d:Lcom/sleepycat/b/p/au;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12613
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected get for VLSN: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "already waiting for VLSN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/i/f;->d:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current range="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12775
    iget-object v3, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v3

    .line 12613
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 562
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 576
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 14114
    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 576
    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-gez v1, :cond_7

    .line 577
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waited for vlsn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be greater than last in range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v2

    .line 15114
    iget-object v2, v2, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 577
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 15362
    :cond_7
    iget-object v0, v0, Lcom/sleepycat/b/i/i/i;->a:Lcom/sleepycat/b/g/al;

    .line 16074
    iget-object v1, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 16295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 584
    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/c;)Lcom/sleepycat/b/i/i/c;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 833
    if-nez v0, :cond_0

    .line 834
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/i/f;->b(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/c;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 837
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 10114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 433
    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    .line 10823
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->m:Z

    .line 440
    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 446
    :goto_1
    return-void

    .line 440
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0

    .line 444
    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 11101
    iget-wide v2, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 444
    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/b/i/i/f;->g:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/p/au;J)V
    .locals 4

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "head truncate called with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delete file#:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->i:Lcom/sleepycat/b/i/i/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/b;->a()V

    .line 655
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 666
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 17110
    iget-object v1, v0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    .line 667
    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 17277
    iget-object v1, v0, Lcom/sleepycat/b/i/i/m;->b:Lcom/sleepycat/b/p/au;

    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    .line 672
    if-eqz v1, :cond_2

    .line 673
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Didn\'t expect current range to be empty.  End of delete range = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 18118
    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 678
    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 19118
    iget-object v1, v0, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 678
    invoke-virtual {p1, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-lez v1, :cond_3

    .line 680
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t log clean away last matchpoint. DeleteEnd= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastSync="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20118
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 680
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 691
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;J)V

    .line 704
    new-instance v0, Lcom/sleepycat/b/br;

    invoke-direct {v0}, Lcom/sleepycat/b/br;-><init>()V

    .line 705
    sget-object v1, Lcom/sleepycat/b/u;->b:Lcom/sleepycat/b/u;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 706
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 709
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 710
    :try_start_4
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;JLcom/sleepycat/b/n/z;)V

    .line 711
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/n/z;)V

    .line 712
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 713
    :try_start_5
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->m()J

    .line 714
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    .line 21084
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 717
    :catchall_1
    move-exception v0

    .line 718
    :try_start_6
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 717
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 712
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public final a(Lcom/sleepycat/b/u;)V
    .locals 2

    .prologue
    .line 1593
    new-instance v0, Lcom/sleepycat/b/br;

    invoke-direct {v0}, Lcom/sleepycat/b/br;-><init>()V

    .line 1594
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 1595
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;

    move-result-object v1

    .line 1598
    :try_start_0
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/n/z;)V

    .line 1599
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->m()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    return-void

    .line 1602
    :catchall_0
    move-exception v0

    .line 1603
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 1602
    throw v0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1559
    if-eqz p1, :cond_0

    .line 1560
    :try_start_0
    sget-object v0, Lcom/sleepycat/b/u;->a:Lcom/sleepycat/b/u;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/u;)V

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    if-eqz v0, :cond_1

    .line 1570
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/i;->a()V

    .line 1571
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    const-string v2, "Outstanding VLSN put latch cleared at close"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    if-eqz v0, :cond_2

    .line 1577
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    .line 26379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1577
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1578
    iput-object v3, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    .line 1580
    :cond_2
    return-void

    .line 1576
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    if-eqz v1, :cond_3

    .line 1577
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    .line 26379
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1577
    iget-object v2, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1578
    iput-object v3, p0, Lcom/sleepycat/b/i/i/f;->m:Lcom/sleepycat/b/c/i;

    .line 1576
    :cond_3
    throw v0
.end method

.method public final b(Lcom/sleepycat/b/p/au;)J
    .locals 2

    .prologue
    .line 817
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/c;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 818
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/i;->a()V

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    .line 463
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->d:Lcom/sleepycat/b/p/au;

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/i/f;->g:Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/sleepycat/b/p/au;J)V
    .locals 2

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->i:Lcom/sleepycat/b/i/i/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/b;->a()V

    .line 733
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 21114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 734
    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    :goto_0
    monitor-exit p0

    return-void

    .line 743
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/i/i/p;->b(Lcom/sleepycat/b/p/au;J)V

    .line 745
    new-instance v0, Lcom/sleepycat/b/br;

    invoke-direct {v0}, Lcom/sleepycat/b/br;-><init>()V

    .line 753
    sget-object v1, Lcom/sleepycat/b/u;->a:Lcom/sleepycat/b/u;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 754
    iget-object v1, p0, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 757
    :try_start_2
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sleepycat/b/i/i/f;->b(Lcom/sleepycat/b/p/au;JLcom/sleepycat/b/n/z;)Lcom/sleepycat/b/p/au;

    .line 758
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/n/z;)V

    .line 759
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->m()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 762
    :catchall_0
    move-exception v0

    .line 763
    :try_start_3
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 762
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 732
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 1552
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/i/f;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    monitor-exit p0

    return-void

    .line 1552
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
