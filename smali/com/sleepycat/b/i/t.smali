.class public Lcom/sleepycat/b/i/t;
.super Lcom/sleepycat/b/x;
.source "ReplicatedEnvironment.java"


# instance fields
.field private e:Lcom/sleepycat/b/i/c/aj;

.field private final f:Lcom/sleepycat/b/i/c/b/x;

.field private g:Lcom/sleepycat/b/i/w;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;)V
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/sleepycat/b/i/p;->b:Lcom/sleepycat/b/i/p;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/i/t;-><init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;Lcom/sleepycat/b/i/p;)V

    .line 463
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;Lcom/sleepycat/b/i/p;)V
    .locals 7

    .prologue
    .line 397
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/i/t;-><init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;Lcom/sleepycat/b/i/p;ZLcom/sleepycat/b/i/c/aj;)V

    .line 404
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;Lcom/sleepycat/b/i/p;ZLcom/sleepycat/b/i/c/aj;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 526
    invoke-direct {p0, p1, p3, p2, p6}, Lcom/sleepycat/b/x;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/aw;Lcom/sleepycat/b/c/ad;)V

    .line 528
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->a:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    iput-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    .line 529
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    .line 3244
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 529
    iput-object v0, p0, Lcom/sleepycat/b/i/t;->f:Lcom/sleepycat/b/i/c/b/x;

    .line 530
    if-eqz p5, :cond_1

    .line 532
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/b/i/t;->a(Lcom/sleepycat/b/i/p;)V
    :try_end_0
    .catch Lcom/sleepycat/b/i/z; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    .line 4887
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 554
    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    .line 5887
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 6605
    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/aa;->t:Lcom/sleepycat/b/i/c/b/w;

    .line 7076
    iget-wide v0, v6, Lcom/sleepycat/b/i/c/b/w;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 7081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/sleepycat/b/i/c/b/w;->a:J

    .line 7082
    iget-object v0, v6, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 7421
    iget-object v7, v0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 7083
    new-instance v0, Lcom/sleepycat/b/i/d/j;

    invoke-static {v7}, Lcom/sleepycat/b/i/c/b/w;->a(Lcom/sleepycat/b/i/c/t;)Lcom/sleepycat/b/i/d/g;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v6, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 7441
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 8087
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 7083
    iget-object v3, v6, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/aa;->f()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v6, Lcom/sleepycat/b/i/c/b/w;->a:J

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/d/j;-><init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;Ljava/lang/String;J)V

    .line 7087
    invoke-virtual {v6, v7, v0}, Lcom/sleepycat/b/i/c/b/w;->a(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/c/ay;)Ljava/util/List;

    .line 566
    :cond_0
    return-void

    .line 533
    :catch_0
    move-exception v1

    .line 542
    invoke-virtual {p0, p1, p3, v3, p2}, Lcom/sleepycat/b/i/t;->a(Ljava/io/File;Lcom/sleepycat/b/z;ZLcom/sleepycat/b/c/aw;)Lcom/sleepycat/b/c/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/t;->a:Lcom/sleepycat/b/c/ad;

    .line 545
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->a:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    iput-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    .line 546
    invoke-direct {p0, p4}, Lcom/sleepycat/b/i/t;->a(Lcom/sleepycat/b/i/p;)V

    .line 547
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    .line 3742
    iget-object v2, v0, Lcom/sleepycat/b/i/c/aj;->au:Lcom/sleepycat/b/p/e;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4029
    iput-object v3, v2, Lcom/sleepycat/b/p/e;->a:Ljava/lang/Boolean;

    .line 3743
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->av:Lcom/sleepycat/b/p/an;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/z;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 4038
    iput-object v1, v0, Lcom/sleepycat/b/p/an;->a:Ljava/lang/String;

    goto :goto_0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    .line 8887
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 560
    if-eqz v0, :cond_0

    .line 561
    const-string v0, "An earlier handle creation had resulted in the nodejoining the group"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method private a(Lcom/sleepycat/b/i/p;)V
    .locals 3

    .prologue
    .line 473
    .line 2500
    new-instance v0, Ljava/lang/Boolean;

    .line 2856
    invoke-virtual {p0}, Lcom/sleepycat/b/i/t;->e()V

    .line 2857
    invoke-virtual {p0}, Lcom/sleepycat/b/i/t;->g()V

    .line 2859
    iget-object v1, p0, Lcom/sleepycat/b/i/t;->g:Lcom/sleepycat/b/i/w;

    .line 2500
    sget-object v2, Lcom/sleepycat/b/i/c/an;->ad:Lcom/sleepycat/b/b/a;

    .line 3090
    iget-object v2, v2, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 2500
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 473
    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/i/p;)Lcom/sleepycat/b/i/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 482
    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->o()V

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    .line 493
    iget-object v1, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/aj;->o()V

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/io/File;Lcom/sleepycat/b/c/aw;Lcom/sleepycat/b/z;)Lcom/sleepycat/b/c/aw;
    .locals 2

    .prologue
    .line 587
    invoke-virtual {p3}, Lcom/sleepycat/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A replicated environment may not be opened read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    check-cast p2, Lcom/sleepycat/b/i/w;

    .line 593
    if-nez p2, :cond_1

    sget-object p2, Lcom/sleepycat/b/i/w;->a:Lcom/sleepycat/b/i/w;

    .line 595
    :cond_1
    invoke-virtual {p2}, Lcom/sleepycat/b/i/w;->c()Lcom/sleepycat/b/i/w;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/sleepycat/b/i/w;->e()Ljava/util/Properties;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/io/File;Ljava/util/Properties;)V

    .line 599
    iput-object v0, p0, Lcom/sleepycat/b/i/t;->g:Lcom/sleepycat/b/i/w;

    .line 600
    iget-object v0, p0, Lcom/sleepycat/b/i/t;->g:Lcom/sleepycat/b/i/w;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 6

    .prologue
    .line 702
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/b/x;->close()V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 718
    monitor-exit p0

    return-void

    .line 703
    :catch_0
    move-exception v0

    .line 705
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem closing handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/t;->f:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n;->a(Ljava/lang/String;)V

    .line 706
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 717
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 702
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 707
    :catch_1
    move-exception v0

    .line 709
    :try_start_4
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    sget-object v3, Lcom/sleepycat/b/c/ac;->z:Lcom/sleepycat/b/c/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problem closing handle "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/t;->f:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 713
    :catch_2
    move-exception v0

    .line 714
    iget-object v1, p0, Lcom/sleepycat/b/i/t;->e:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/aj;->a(Ljava/lang/Error;)V

    .line 715
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
