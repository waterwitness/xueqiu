.class public Lcom/sleepycat/b/a/ad;
.super Ljava/lang/Object;
.source "UtilizationProfile.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Lcom/sleepycat/b/c/i;

.field private final c:Lcom/sleepycat/b/c/ad;

.field private final d:Lcom/sleepycat/b/a/ae;

.field private e:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/o;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/sleepycat/b/a/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/ad;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/ae;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 104
    iput-object p2, p0, Lcom/sleepycat/b/a/ad;->d:Lcom/sleepycat/b/a/ae;

    .line 105
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/a/ad;->g:Ljava/util/logging/Logger;

    .line 108
    return-void
.end method

.method private static a(Lcom/sleepycat/b/c/c;JLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 869
    invoke-static {p1, p2}, Lcom/sleepycat/b/l/h;->a(J)[B

    move-result-object v0

    .line 870
    invoke-virtual {p3, v0}, Lcom/sleepycat/b/m;->a([B)V

    .line 873
    :try_start_0
    sget-object v0, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    invoke-virtual {p0, p3, v0, p5}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 876
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    .line 890
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    move v4, v5

    .line 900
    :cond_0
    :goto_0
    return v4

    .line 880
    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v4

    .line 882
    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {p0, p3, p4, p5}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_3

    .line 890
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    goto :goto_0

    :cond_2
    move v0, v5

    .line 880
    goto :goto_1

    .line 890
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    .line 894
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->f()V

    .line 896
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 900
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/sleepycat/b/l/h;JI)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 966
    monitor-enter p0

    :try_start_0
    invoke-static {p2, p3, p4}, Lcom/sleepycat/b/l/h;->a(JI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 971
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 972
    :try_start_2
    new-instance v2, Lcom/sleepycat/b/c/c;

    iget-object v6, p0, Lcom/sleepycat/b/a/ad;->a:Lcom/sleepycat/b/c/i;

    invoke-direct {v2, v6, v4}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 975
    :try_start_3
    sget-object v3, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v2, v5, p1, v3}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 981
    sget-object v5, Lcom/sleepycat/b/av;->b:Lcom/sleepycat/b/av;

    if-ne v3, v5, :cond_2

    .line 982
    iget-object v1, p0, Lcom/sleepycat/b/a/ad;->g:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cleaner duplicate key sequence file=0x"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sequence=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, p4

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v5, v6}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 994
    if-eqz v2, :cond_0

    .line 36580
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 997
    :cond_0
    if-eqz v4, :cond_1

    .line 36654
    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 992
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 991
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 994
    if-eqz v2, :cond_3

    .line 36580
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 997
    :cond_3
    if-eqz v4, :cond_4

    .line 36654
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_4
    move v0, v1

    .line 992
    goto :goto_0

    .line 994
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_5

    .line 36580
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 997
    :cond_5
    if-eqz v3, :cond_6

    .line 36654
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 994
    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 966
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 994
    :catchall_2
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_1
.end method

.method private declared-synchronized b(Lcom/sleepycat/b/a/z;)Lcom/sleepycat/b/a/w;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 497
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 18330
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 497
    if-eqz v0, :cond_0

    .line 498
    const-string v0, "Cannot write file summary in a read-only environment"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sleepycat/b/a/z;->d()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 566
    :goto_0
    monitor-exit p0

    return-object v0

    .line 506
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/sleepycat/b/a/ad;->f:Z

    if-nez v0, :cond_2

    move-object v0, v1

    .line 508
    goto :goto_0

    .line 19062
    :cond_2
    iget-wide v2, p1, Lcom/sleepycat/b/a/z;->m:J

    .line 512
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 515
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/o;

    .line 516
    if-nez v0, :cond_4

    .line 526
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 19375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 526
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/m;->a(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 536
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 20371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 536
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/a/z;)V

    move-object v0, v1

    .line 537
    goto :goto_0

    .line 540
    :cond_3
    new-instance v0, Lcom/sleepycat/b/a/o;

    invoke-direct {v0}, Lcom/sleepycat/b/a/o;-><init>()V

    .line 548
    :cond_4
    new-instance v1, Lcom/sleepycat/b/a/o;

    invoke-direct {v1}, Lcom/sleepycat/b/a/o;-><init>()V

    .line 549
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/a/o;->a(Lcom/sleepycat/b/a/o;)V

    .line 550
    invoke-virtual {v1, p1}, Lcom/sleepycat/b/a/o;->a(Lcom/sleepycat/b/a/o;)V

    .line 21299
    iget v5, v1, Lcom/sleepycat/b/a/o;->a:I

    iget v6, v1, Lcom/sleepycat/b/a/o;->i:I

    add-int/2addr v5, v6

    iget v1, v1, Lcom/sleepycat/b/a/o;->h:I

    add-int/2addr v1, v5

    .line 554
    new-instance v5, Lcom/sleepycat/b/l/h;

    invoke-direct {v5, v0}, Lcom/sleepycat/b/l/h;-><init>(Lcom/sleepycat/b/a/o;)V

    .line 22126
    iput-object p1, v5, Lcom/sleepycat/b/l/h;->b:Lcom/sleepycat/b/a/z;

    .line 22127
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/sleepycat/b/l/h;->d:Z

    .line 556
    invoke-direct {p0, v5, v2, v3, v1}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/l/h;JI)Z

    .line 22142
    iget-object v0, v5, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    .line 560
    iget-object v1, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v1, v4, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 561
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 22508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 562
    sget v1, Lcom/sleepycat/b/c/ao;->O:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 23149
    :cond_5
    iget-object v0, v5, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized c(Ljava/lang/Long;)Lcom/sleepycat/b/a/o;
    .locals 4

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/o;

    .line 155
    iget-object v1, p0, Lcom/sleepycat/b/a/ad;->d:Lcom/sleepycat/b/a/ae;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/a/ae;->a(J)Lcom/sleepycat/b/a/z;

    move-result-object v2

    .line 156
    if-eqz v2, :cond_0

    .line 157
    new-instance v1, Lcom/sleepycat/b/a/o;

    invoke-direct {v1}, Lcom/sleepycat/b/a/o;-><init>()V

    .line 158
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/a/o;->a(Lcom/sleepycat/b/a/o;)V

    .line 159
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/a/o;->a(Lcom/sleepycat/b/a/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 163
    :cond_0
    monitor-exit p0

    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Ljava/lang/Long;)V
    .locals 15

    .prologue
    .line 420
    const/4 v1, 0x0

    .line 421
    const/4 v2, 0x0

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 424
    :try_start_1
    new-instance v1, Lcom/sleepycat/b/c/c;

    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->a:Lcom/sleepycat/b/c/i;

    invoke-direct {v1, v0, v13}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15263
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, v1, Lcom/sleepycat/b/c/c;->i:Z

    .line 428
    new-instance v4, Lcom/sleepycat/b/m;

    invoke-direct {v4}, Lcom/sleepycat/b/m;-><init>()V

    .line 429
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 430
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 433
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v6, v7}, Lcom/sleepycat/b/m;->a(IIZ)V

    .line 436
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    .line 437
    sget-object v6, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-static/range {v1 .. v6}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/c/c;JLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    .line 445
    :goto_0
    sget-object v6, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v6, :cond_3

    .line 16197
    iget-object v0, v4, Lcom/sleepycat/b/m;->a:[B

    .line 445
    invoke-static {v0}, Lcom/sleepycat/b/l/h;->b([B)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-nez v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/c/ad;->b(Z)V

    .line 456
    sget-object v0, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 458
    sget-object v9, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v1

    move-object v7, v4

    move-object v8, v5

    invoke-virtual/range {v6 .. v12}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_0
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v0

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    :goto_1
    if-eqz v1, :cond_1

    .line 16580
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 466
    :cond_1
    if-eqz v2, :cond_2

    .line 16654
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 463
    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_4

    .line 16580
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 466
    :cond_4
    if-eqz v13, :cond_5

    .line 16654
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 472
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->d:Lcom/sleepycat/b/a/ae;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/a/ae;->a(J)Lcom/sleepycat/b/a/z;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_6

    .line 474
    iget-object v1, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 17371
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 474
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/a/z;)V

    .line 476
    :cond_6
    return-void

    .line 463
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v13

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v13

    goto :goto_1
.end method

.method private d()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 912
    iget-object v3, p0, Lcom/sleepycat/b/a/ad;->a:Lcom/sleepycat/b/c/i;

    if-eqz v3, :cond_1

    .line 940
    :cond_0
    :goto_0
    return v0

    .line 915
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 34379
    iget-object v4, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 919
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    new-instance v5, Lcom/sleepycat/b/br;

    invoke-direct {v5}, Lcom/sleepycat/b/br;-><init>()V

    invoke-static {v3, v5}, Lcom/sleepycat/b/n/z;->b(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;

    move-result-object v2

    .line 926
    sget-object v3, Lcom/sleepycat/b/c/w;->c:Lcom/sleepycat/b/c/w;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/n/d;)Lcom/sleepycat/b/c/i;

    move-result-object v3

    .line 928
    if-nez v3, :cond_4

    .line 929
    iget-object v3, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 35330
    iget-boolean v3, v3, Lcom/sleepycat/b/c/ad;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    if-eqz v3, :cond_3

    .line 942
    if-eqz v2, :cond_2

    .line 943
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_2
    move v0, v1

    .line 930
    goto :goto_0

    .line 932
    :cond_3
    :try_start_1
    new-instance v3, Lcom/sleepycat/b/l;

    invoke-direct {v3}, Lcom/sleepycat/b/l;-><init>()V

    .line 36268
    const/4 v5, 0x0

    .line 36277
    iput-boolean v5, v3, Lcom/sleepycat/b/l;->j:Z

    .line 934
    sget-object v5, Lcom/sleepycat/b/c/w;->c:Lcom/sleepycat/b/c/w;

    invoke-virtual {v5}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;

    move-result-object v3

    .line 938
    :cond_4
    iput-object v3, p0, Lcom/sleepycat/b/a/ad;->a:Lcom/sleepycat/b/c/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    if-eqz v2, :cond_0

    .line 943
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto :goto_0

    .line 942
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 943
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 942
    :cond_5
    throw v0
.end method


# virtual methods
.method public final a()J
    .locals 6

    .prologue
    .line 123
    const-wide/16 v2, 0x0

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/o;

    .line 126
    iget v0, v0, Lcom/sleepycat/b/a/o;->b:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->d:Lcom/sleepycat/b/a/ae;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/ae;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/z;

    .line 138
    iget v0, v0, Lcom/sleepycat/b/a/z;->b:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 139
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 141
    :cond_1
    return-wide v2
.end method

.method public final a(Lcom/sleepycat/b/a/s;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 4371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 174
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/a/s;)V

    .line 177
    invoke-virtual {p1}, Lcom/sleepycat/b/a/s;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/a/ad;->a(Ljava/util/Collection;)V

    .line 5212
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 5392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 6081
    iget-object v0, v0, Lcom/sleepycat/b/c/m;->b:Lcom/sleepycat/b/z;

    .line 6643
    iget-boolean v0, v0, Lcom/sleepycat/b/z;->c:Z

    .line 5212
    if-eqz v0, :cond_1

    .line 8053
    iget-object v0, p1, Lcom/sleepycat/b/a/a;->a:Ljava/util/Map;

    .line 7096
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5218
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5219
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 5221
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8454
    iget-boolean v2, v0, Lcom/sleepycat/b/c/i;->f:Z

    .line 5221
    if-eqz v2, :cond_0

    .line 5222
    iget-object v2, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 9379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 5222
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/i;)V

    goto :goto_0

    .line 179
    :cond_1
    return-void
.end method

.method public final a(Lcom/sleepycat/b/a/z;)V
    .locals 1

    .prologue
    .line 485
    .line 18047
    iget-boolean v0, p1, Lcom/sleepycat/b/a/z;->q:Z

    .line 485
    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0, p1}, Lcom/sleepycat/b/a/ad;->b(Lcom/sleepycat/b/a/z;)Lcom/sleepycat/b/a/w;

    .line 488
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/a/ad;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/a/ad;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 314
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/o;

    .line 315
    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 13508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 317
    sget v1, Lcom/sleepycat/b/c/ao;->O:I

    rsub-int/lit8 v1, v1, 0x0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 320
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    invoke-direct {p0, p1}, Lcom/sleepycat/b/a/ad;->d(Ljava/lang/Long;)V

    .line 324
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/a/z;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 9392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 10081
    iget-object v0, v0, Lcom/sleepycat/b/c/m;->b:Lcom/sleepycat/b/z;

    .line 10643
    iget-boolean v0, v0, Lcom/sleepycat/b/z;->c:Z

    .line 189
    if-nez v0, :cond_1

    .line 202
    :cond_0
    return-void

    .line 195
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/z;

    .line 11062
    iget-wide v2, v0, Lcom/sleepycat/b/a/z;->m:J

    .line 197
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->d:Lcom/sleepycat/b/a/ae;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/a/ae;->a(J)Lcom/sleepycat/b/a/z;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/a/z;)V

    goto :goto_0
.end method

.method final a(Ljava/util/Collection;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 345
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 14371
    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 346
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 14379
    iget-object v3, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 348
    sget-object v0, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v4

    .line 349
    sget-object v0, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v5

    .line 350
    const/4 v0, 0x0

    .line 351
    invoke-virtual {v2, v4, p1}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/c/i;Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    .line 354
    :cond_0
    invoke-virtual {v2, v5, p1}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/c/i;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 357
    :cond_1
    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 15238
    const-wide/16 v6, -0x1

    invoke-virtual {v0, v6, v7}, Lcom/sleepycat/b/c/ad;->a(J)V

    .line 361
    :cond_2
    if-eqz p2, :cond_5

    .line 362
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 363
    sget-object v4, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 365
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v4

    .line 367
    if-eqz v4, :cond_4

    :try_start_0
    invoke-virtual {v2, v4, p1}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/c/i;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 369
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :cond_4
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v0

    .line 383
    :cond_5
    sget-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    new-instance v5, Lcom/sleepycat/b/a/ad$1;

    invoke-direct {v5, p0, v2, p1, v3}, Lcom/sleepycat/b/a/ad$1;-><init>(Lcom/sleepycat/b/a/ad;Lcom/sleepycat/b/g/am;Ljava/util/Collection;Lcom/sleepycat/b/c/p;)V

    invoke-static {v4, v0, v1, v5}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/g;)V

    .line 411
    :cond_6
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/be;)Z
    .locals 15

    .prologue
    .line 699
    sget-boolean v0, Lcom/sleepycat/b/a/ad;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/a/ad;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 702
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/b/a/ad;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 704
    const/4 v0, 0x0

    .line 856
    :goto_0
    return v0

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    sget v1, Lcom/sleepycat/b/c/ao;->O:I

    mul-int v11, v0, v1

    .line 717
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 28375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 717
    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->c()[Ljava/lang/Long;

    move-result-object v12

    .line 718
    const/4 v2, 0x0

    .line 719
    const/4 v1, 0x0

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 722
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/c/c;

    iget-object v2, p0, Lcom/sleepycat/b/a/ad;->a:Lcom/sleepycat/b/c/i;

    invoke-direct {v0, v2, v10}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29263
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, v0, Lcom/sleepycat/b/c/c;->i:Z

    .line 726
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 727
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 729
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/c;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 732
    sget-object v3, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;

    move-result-object v9

    .line 734
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v9, v3, :cond_2

    .line 736
    sget-object v3, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v9

    .line 741
    :cond_2
    :goto_1
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v9, v3, :cond_b

    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/c/be;->a()V

    .line 749
    iget-object v3, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/ad;->b(Z)V

    .line 751
    sget-object v3, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/l/h;

    .line 754
    if-nez v3, :cond_3

    .line 756
    sget-object v3, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v9

    goto :goto_1

    .line 30197
    :cond_3
    iget-object v4, v1, Lcom/sleepycat/b/m;->a:[B

    .line 764
    invoke-static {v4}, Lcom/sleepycat/b/l/h;->a([B)Z

    move-result v5

    .line 765
    invoke-static {v4}, Lcom/sleepycat/b/l/h;->b([B)J

    move-result-wide v6

    .line 766
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 768
    invoke-static {v12, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_8

    .line 769
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/c/be;->b()V

    .line 31142
    iget-object v8, v3, Lcom/sleepycat/b/l/h;->a:Lcom/sleepycat/b/a/o;

    .line 773
    iget-object v13, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v13, v4, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    if-eqz v5, :cond_5

    iget-object v4, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 31330
    iget-boolean v4, v4, Lcom/sleepycat/b/c/ad;->g:Z

    .line 781
    if-nez v4, :cond_5

    .line 782
    const/4 v4, 0x0

    invoke-direct {p0, v3, v6, v7, v4}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/l/h;JI)Z

    .line 783
    sget-object v3, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 817
    :cond_4
    :goto_2
    if-eqz v5, :cond_a

    .line 820
    sget-object v3, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v9

    goto :goto_1

    .line 786
    :cond_5
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 841
    :catchall_0
    move-exception v1

    move-object v2, v10

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    :goto_3
    if-eqz v1, :cond_6

    .line 32580
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 845
    :cond_6
    if-eqz v2, :cond_7

    .line 32654
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 849
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    sget v2, Lcom/sleepycat/b/c/ao;->O:I

    mul-int/2addr v1, v2

    .line 851
    iget-object v2, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 33508
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 852
    sub-int/2addr v1, v11

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 841
    throw v0

    .line 794
    :cond_8
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/c/be;->c()V

    .line 796
    iget-object v3, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iget-object v3, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 32330
    iget-boolean v3, v3, Lcom/sleepycat/b/c/ad;->g:Z

    .line 798
    if-nez v3, :cond_4

    .line 799
    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {p0, v3, v8}, Lcom/sleepycat/b/a/ad;->a(Ljava/util/Collection;Ljava/util/Set;)V

    .line 802
    if-eqz v5, :cond_9

    .line 803
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 804
    sget-object v3, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    goto :goto_2

    .line 806
    :cond_9
    invoke-direct {p0, v4}, Lcom/sleepycat/b/a/ad;->d(Ljava/lang/Long;)V

    goto :goto_2

    .line 830
    :cond_a
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    sget-object v8, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    move-object v3, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static/range {v3 .. v8}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/c/c;JLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 835
    sget-object v3, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    move-object v9, v3

    .line 838
    goto/16 :goto_1

    .line 841
    :cond_b
    if-eqz v0, :cond_c

    .line 32580
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 845
    :cond_c
    if-eqz v10, :cond_d

    .line 32654
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 849
    :cond_d
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    sget v1, Lcom/sleepycat/b/c/ao;->O:I

    mul-int/2addr v0, v1

    .line 851
    iget-object v1, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 33508
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 852
    sub-int/2addr v0, v11

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/a/ad;->f:Z

    .line 856
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 841
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v10

    goto :goto_3

    :cond_e
    move-object v3, v9

    goto :goto_4
.end method

.method final b(Ljava/lang/Long;)Lcom/sleepycat/b/a/w;
    .locals 19

    .prologue
    .line 578
    new-instance v15, Lcom/sleepycat/b/a/w;

    invoke-direct {v15}, Lcom/sleepycat/b/a/w;-><init>()V

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 23504
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 581
    iget-boolean v2, v2, Lcom/sleepycat/b/a/c;->N:Z

    if-nez v2, :cond_0

    move-object v2, v15

    .line 686
    :goto_0
    return-object v2

    .line 585
    :cond_0
    sget-boolean v2, Lcom/sleepycat/b/a/ad;->b:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sleepycat/b/a/ad;->f:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 587
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 588
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 24371
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 594
    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/g/am;->h(J)Lcom/sleepycat/b/a/z;

    move-result-object v17

    .line 598
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;

    move-result-object v18

    .line 600
    new-instance v3, Lcom/sleepycat/b/c/c;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/ad;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v0, v18

    invoke-direct {v3, v2, v0}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25263
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v3, Lcom/sleepycat/b/c/c;->i:Z

    .line 605
    new-instance v6, Lcom/sleepycat/b/m;

    invoke-direct {v6}, Lcom/sleepycat/b/m;-><init>()V

    .line 606
    new-instance v7, Lcom/sleepycat/b/m;

    invoke-direct {v7}, Lcom/sleepycat/b/m;-><init>()V

    .line 609
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    .line 610
    sget-object v8, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    invoke-static/range {v3 .. v8}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/c/c;JLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 612
    sget-object v2, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 616
    :cond_2
    :goto_1
    sget-object v8, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v8, :cond_5

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/sleepycat/b/c/ad;->b(Z)V

    .line 621
    sget-object v2, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/h;

    .line 623
    if-eqz v2, :cond_4

    .line 26197
    iget-object v8, v6, Lcom/sleepycat/b/m;->a:[B

    .line 625
    invoke-static {v8}, Lcom/sleepycat/b/l/h;->b([B)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-nez v8, :cond_5

    .line 27149
    iget-object v2, v2, Lcom/sleepycat/b/l/h;->c:Lcom/sleepycat/b/a/w;

    .line 631
    if-eqz v2, :cond_3

    .line 632
    invoke-virtual {v2}, Lcom/sleepycat/b/a/w;->d()[J

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_3
    invoke-virtual {v3}, Lcom/sleepycat/b/c/c;->f()V

    .line 639
    :cond_4
    sget-object v11, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v3

    move-object v9, v6

    move-object v10, v7

    invoke-virtual/range {v8 .. v14}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 644
    :catchall_0
    move-exception v2

    .line 27580
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 27654
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 644
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 667
    :catchall_1
    move-exception v2

    .line 28055
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/sleepycat/b/a/z;->q:Z

    .line 667
    throw v2

    .line 27580
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v3, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 27654
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 652
    invoke-virtual/range {v17 .. v17}, Lcom/sleepycat/b/a/z;->d()Z

    move-result v2

    if-nez v2, :cond_6

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sleepycat/b/a/ad;->b(Lcom/sleepycat/b/a/z;)Lcom/sleepycat/b/a/w;

    move-result-object v2

    .line 655
    if-eqz v2, :cond_6

    .line 656
    invoke-virtual {v2}, Lcom/sleepycat/b/a/w;->d()[J

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28055
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/sleepycat/b/a/z;->q:Z

    .line 671
    const/4 v3, 0x0

    .line 672
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 673
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 674
    array-length v2, v2

    add-int/2addr v4, v2

    .line 672
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 676
    :cond_7
    new-array v5, v4, [J

    .line 677
    const/4 v3, 0x0

    .line 678
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 679
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 680
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    array-length v2, v2

    add-int/2addr v4, v2

    .line 678
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 683
    :cond_8
    sget-boolean v2, Lcom/sleepycat/b/a/ad;->b:Z

    if-nez v2, :cond_9

    array-length v2, v5

    if-eq v4, v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 685
    :cond_9
    invoke-virtual {v15, v5}, Lcom/sleepycat/b/a/w;->a([J)V

    move-object v2, v15

    .line 686
    goto/16 :goto_0
.end method

.method public final declared-synchronized b()Ljava/util/SortedMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/o;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/a/ad;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/a/ad;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 245
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 246
    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/ad;->c(Ljava/lang/Long;)Lcom/sleepycat/b/a/o;

    move-result-object v3

    .line 247
    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->d:Lcom/sleepycat/b/a/ae;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/ae;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/z;

    .line 12062
    iget-wide v4, v0, Lcom/sleepycat/b/a/z;->m:J

    .line 252
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 253
    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 254
    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 257
    :cond_3
    monitor-exit p0

    return-object v1
.end method

.method final declared-synchronized c()V
    .locals 4

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    sget v1, Lcom/sleepycat/b/c/ao;->O:I

    mul-int/2addr v0, v1

    .line 278
    iget-object v1, p0, Lcom/sleepycat/b/a/ad;->c:Lcom/sleepycat/b/c/ad;

    .line 12508
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 279
    rsub-int/lit8 v0, v0, 0x0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 281
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/ad;->e:Ljava/util/SortedMap;

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/ad;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
