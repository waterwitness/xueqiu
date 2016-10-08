.class public Lcom/sleepycat/b/n/i;
.super Ljava/lang/Object;
.source "LockImpl.java"

# interfaces
.implements Lcom/sleepycat/b/n/e;


# static fields
.field static final synthetic a:Z

.field private static final b:I


# instance fields
.field private c:Lcom/sleepycat/b/n/j;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/sleepycat/b/n/j;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sleepycat/b/n/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/n/i;->a:Z

    .line 25
    sget v0, Lcom/sleepycat/b/c/ao;->K:I

    rsub-int/lit8 v0, v0, 0x0

    sput v0, Lcom/sleepycat/b/n/i;->b:I

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/n/j;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    .line 64
    return-void
.end method

.method private a(Lcom/sleepycat/b/n/j;ZLcom/sleepycat/b/c/ao;I)Lcom/sleepycat/b/n/h;
    .locals 11

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/sleepycat/b/n/i;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-direct {p0, p1, p3, p4}, Lcom/sleepycat/b/n/i;->a(Lcom/sleepycat/b/n/j;Lcom/sleepycat/b/c/ao;I)V

    .line 586
    sget-object v0, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    .line 684
    :goto_0
    return-object v0

    .line 589
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v7

    .line 590
    invoke-virtual {p1}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v8

    .line 591
    const/4 v6, 0x0

    .line 592
    const/4 v5, 0x0

    .line 593
    const/4 v4, 0x0

    .line 594
    const/4 v3, 0x0

    .line 601
    const/4 v2, 0x0

    .line 602
    const/4 v0, 0x0

    .line 604
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-eqz v1, :cond_11

    .line 605
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    .line 608
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    move-object v2, v0

    move v0, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 614
    :goto_2
    if-eqz v2, :cond_8

    .line 615
    invoke-virtual {v2}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v6

    .line 616
    invoke-virtual {v2}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v9

    .line 617
    if-ne v7, v6, :cond_4

    .line 625
    sget-boolean v4, Lcom/sleepycat/b/n/i;->a:Z

    if-nez v4, :cond_2

    if-eqz v5, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 610
    :cond_1
    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 611
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    move-object v2, v0

    move v0, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_2

    .line 626
    :cond_2
    invoke-virtual {v9, v8}, Lcom/sleepycat/b/n/o;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/p;

    move-result-object v5

    .line 7069
    iget-object v4, v5, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 627
    if-nez v4, :cond_3

    .line 628
    sget-object v0, Lcom/sleepycat/b/n/h;->e:Lcom/sleepycat/b/n/h;

    goto :goto_0

    :cond_3
    move-object v4, v2

    move v2, v0

    .line 655
    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 656
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    goto :goto_2

    .line 640
    :cond_4
    invoke-virtual {v7, v6}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/n/q;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v6, v7}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/n/q;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 642
    invoke-virtual {v9, v8}, Lcom/sleepycat/b/n/o;->a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/g;

    move-result-object v2

    .line 8052
    iget-boolean v3, v2, Lcom/sleepycat/b/n/g;->e:Z

    .line 643
    if-eqz v3, :cond_5

    .line 644
    sget-object v0, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    goto/16 :goto_0

    .line 9040
    :cond_5
    iget-boolean v2, v2, Lcom/sleepycat/b/n/g;->d:Z

    .line 646
    if-nez v2, :cond_6

    .line 647
    const/4 v0, 0x1

    .line 649
    :cond_6
    const/4 v3, 0x1

    move v2, v0

    goto :goto_3

    .line 658
    :cond_7
    const/4 v0, 0x0

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    .line 660
    goto :goto_2

    .line 663
    :cond_8
    if-eqz v5, :cond_c

    .line 9069
    iget-object v1, v5, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 666
    sget-boolean v2, Lcom/sleepycat/b/n/i;->a:Z

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 667
    :cond_9
    if-nez v0, :cond_b

    .line 669
    invoke-virtual {v4, v1}, Lcom/sleepycat/b/n/j;->a(Lcom/sleepycat/b/n/o;)V

    .line 9088
    iget-boolean v0, v5, Lcom/sleepycat/b/n/p;->h:Z

    .line 670
    if-eqz v0, :cond_a

    sget-object v0, Lcom/sleepycat/b/n/h;->c:Lcom/sleepycat/b/n/h;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/sleepycat/b/n/h;->e:Lcom/sleepycat/b/n/h;

    goto/16 :goto_0

    .line 674
    :cond_b
    sget-object v0, Lcom/sleepycat/b/n/h;->d:Lcom/sleepycat/b/n/h;

    goto/16 :goto_0

    .line 678
    :cond_c
    if-nez v0, :cond_e

    if-eqz v3, :cond_d

    if-eqz p2, :cond_e

    .line 680
    :cond_d
    invoke-direct {p0, p1, p3, p4}, Lcom/sleepycat/b/n/i;->a(Lcom/sleepycat/b/n/j;Lcom/sleepycat/b/c/ao;I)V

    .line 681
    sget-object v0, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    goto/16 :goto_0

    .line 684
    :cond_e
    sget-object v0, Lcom/sleepycat/b/n/h;->b:Lcom/sleepycat/b/n/h;

    goto/16 :goto_0

    :cond_f
    move v2, v0

    goto :goto_3

    :cond_10
    move v0, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :cond_11
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private a(Lcom/sleepycat/b/n/j;Lcom/sleepycat/b/c/ao;I)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-nez v0, :cond_0

    .line 153
    iput-object p1, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    .line 160
    :goto_0
    sget v0, Lcom/sleepycat/b/c/ao;->K:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1, p3}, Lcom/sleepycat/b/c/ao;->a(JI)V

    .line 162
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/j;
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    .line 251
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 243
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 245
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v2

    if-ne v2, p1, :cond_1

    goto :goto_0

    .line 251
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/q;ZZLcom/sleepycat/b/c/ao;I)Lcom/sleepycat/b/n/f;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 349
    sget-boolean v0, Lcom/sleepycat/b/n/i;->a:Z

    if-nez v0, :cond_2

    .line 1782
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1784
    sget-boolean v0, Lcom/sleepycat/b/n/i;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locker "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already on waiters list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1790
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1791
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 1793
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 1794
    sget-boolean v0, Lcom/sleepycat/b/n/i;->a:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locker "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already on waiters list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 352
    :cond_2
    new-instance v5, Lcom/sleepycat/b/n/j;

    invoke-direct {v5, p2, p1}, Lcom/sleepycat/b/n/j;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)V

    .line 353
    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/b/n/i;->c()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v5, v0, p5, p6}, Lcom/sleepycat/b/n/i;->a(Lcom/sleepycat/b/n/j;ZLcom/sleepycat/b/c/ao;I)Lcom/sleepycat/b/n/h;

    move-result-object v4

    .line 358
    sget-object v0, Lcom/sleepycat/b/n/h;->b:Lcom/sleepycat/b/n/h;

    if-eq v4, v0, :cond_4

    sget-object v0, Lcom/sleepycat/b/n/h;->d:Lcom/sleepycat/b/n/h;

    if-eq v4, v0, :cond_4

    sget-object v0, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    if-ne v4, v0, :cond_14

    .line 2177
    :cond_4
    iget-boolean v0, p1, Lcom/sleepycat/b/n/o;->i:Z

    .line 368
    if-eqz v0, :cond_11

    sget-object v0, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    if-eq v4, v0, :cond_11

    .line 373
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 374
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v0

    .line 377
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_6

    .line 378
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    .line 383
    :goto_2
    if-eqz v0, :cond_11

    .line 389
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v6

    .line 390
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v0

    .line 391
    sget-object v7, Lcom/sleepycat/b/n/o;->g:Lcom/sleepycat/b/n/o;

    if-eq v0, v7, :cond_7

    if-eq p2, v6, :cond_7

    invoke-virtual {p2, v6}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/n/q;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 394
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/o;->a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/g;

    move-result-object v0

    .line 3052
    iget-boolean v0, v0, Lcom/sleepycat/b/n/g;->e:Z

    .line 396
    if-eqz v0, :cond_7

    .line 397
    sget-object v4, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    move-object v0, v4

    .line 412
    :goto_3
    if-eqz p3, :cond_9

    .line 413
    sget-object v0, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    .line 438
    :goto_4
    new-instance v2, Lcom/sleepycat/b/n/f;

    invoke-direct {v2, p0, v0, v1}, Lcom/sleepycat/b/n/f;-><init>(Lcom/sleepycat/b/n/e;Lcom/sleepycat/b/n/h;Z)V

    return-object v2

    :cond_5
    move v0, v1

    .line 353
    goto :goto_0

    .line 379
    :cond_6
    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 380
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    goto :goto_2

    .line 403
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 404
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    goto :goto_2

    :cond_8
    move-object v0, v3

    .line 408
    goto :goto_2

    .line 415
    :cond_9
    sget-object v2, Lcom/sleepycat/b/n/h;->d:Lcom/sleepycat/b/n/h;

    if-ne v0, v2, :cond_c

    .line 3097
    iget-object v2, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    if-eqz v2, :cond_b

    .line 3098
    iget-object v2, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    if-nez v2, :cond_a

    .line 3099
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    .line 3101
    :cond_a
    iget-object v2, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3104
    :cond_b
    iput-object v5, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    .line 4086
    :goto_5
    sget v2, Lcom/sleepycat/b/c/ao;->K:I

    int-to-long v2, v2

    invoke-virtual {p5, v2, v3, p6}, Lcom/sleepycat/b/c/ao;->a(JI)V

    goto :goto_4

    .line 418
    :cond_c
    sget-boolean v2, Lcom/sleepycat/b/n/i;->a:Z

    if-nez v2, :cond_d

    sget-object v2, Lcom/sleepycat/b/n/h;->b:Lcom/sleepycat/b/n/h;

    if-eq v0, v2, :cond_d

    sget-object v2, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    if-eq v0, v2, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 428
    :cond_d
    sget-object v2, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    if-ne v0, v2, :cond_e

    .line 429
    sget-object v2, Lcom/sleepycat/b/n/o;->g:Lcom/sleepycat/b/n/o;

    invoke-virtual {v5, v2}, Lcom/sleepycat/b/n/j;->a(Lcom/sleepycat/b/n/o;)V

    .line 4076
    :cond_e
    iget-object v2, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    if-nez v2, :cond_10

    .line 4077
    iget-object v2, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    if-nez v2, :cond_f

    .line 4078
    iput-object v5, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    goto :goto_5

    .line 4080
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    .line 4081
    iget-object v2, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 4084
    :cond_10
    iget-object v2, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    move-object v0, v4

    goto/16 :goto_3

    :cond_12
    move-object v0, v3

    goto/16 :goto_2

    :cond_13
    move-object v2, v3

    goto/16 :goto_1

    :cond_14
    move-object v0, v4

    goto/16 :goto_4
.end method

.method public final a(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/o;
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/i;->c(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/j;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_1
    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    .line 133
    sget v0, Lcom/sleepycat/b/n/i;->b:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1, p3}, Lcom/sleepycat/b/c/ao;->a(JI)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 137
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 139
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 141
    sget v0, Lcom/sleepycat/b/n/i;->b:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1, p3}, Lcom/sleepycat/b/c/ao;->a(JI)V

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 261
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/i;->c(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/j;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {v1}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v1

    .line 264
    if-ne p2, v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-virtual {v1, p2}, Lcom/sleepycat/b/n/o;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/p;

    move-result-object v1

    .line 1088
    iget-boolean v1, v1, Lcom/sleepycat/b/n/p;->h:Z

    .line 268
    if-eqz v1, :cond_0

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    return-object v0

    .line 174
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/n/q;",
            "Lcom/sleepycat/b/c/ao;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/n/q;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 452
    .line 4211
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 4213
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    .line 4214
    iput-object v2, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    .line 4225
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 4226
    sget v0, Lcom/sleepycat/b/n/i;->b:I

    int-to-long v8, v0

    invoke-virtual {p2, v8, v9, p3}, Lcom/sleepycat/b/c/ao;->a(JI)V

    .line 453
    :cond_1
    if-nez v1, :cond_3

    .line 529
    :goto_1
    return-object v2

    .line 4215
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-eqz v0, :cond_17

    .line 4216
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v2

    .line 4217
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4218
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 4219
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v4

    if-ne v4, p1, :cond_16

    .line 4220
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :goto_3
    move-object v1, v0

    .line 4223
    goto :goto_2

    .line 458
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 460
    invoke-virtual {p0}, Lcom/sleepycat/b/n/i;->c()I

    move-result v0

    if-nez v0, :cond_4

    move-object v2, v3

    .line 462
    goto :goto_1

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 474
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    .line 477
    :goto_4
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_7

    .line 478
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    move v7, v5

    .line 484
    :goto_5
    if-eqz v0, :cond_11

    .line 486
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v4

    .line 487
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v8

    .line 489
    sget-object v9, Lcom/sleepycat/b/n/o;->g:Lcom/sleepycat/b/n/o;

    if-ne v4, v9, :cond_d

    .line 4699
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-eqz v0, :cond_13

    .line 4700
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v0

    .line 4703
    :goto_6
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_8

    .line 4704
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    .line 4709
    :goto_7
    if-eqz v0, :cond_b

    .line 4710
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v9

    .line 4711
    if-eq v9, v8, :cond_9

    invoke-virtual {v9, v8}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/n/q;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v0

    sget-object v9, Lcom/sleepycat/b/n/o;->e:Lcom/sleepycat/b/n/o;

    if-ne v0, v9, :cond_9

    move v0, v5

    .line 491
    :goto_8
    if-eqz v0, :cond_c

    sget-object v0, Lcom/sleepycat/b/n/h;->b:Lcom/sleepycat/b/n/h;

    .line 498
    :goto_9
    sget-object v4, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    if-eq v0, v4, :cond_5

    sget-object v4, Lcom/sleepycat/b/n/h;->e:Lcom/sleepycat/b/n/h;

    if-eq v0, v4, :cond_5

    sget-object v4, Lcom/sleepycat/b/n/h;->c:Lcom/sleepycat/b/n/h;

    if-ne v0, v4, :cond_f

    .line 502
    :cond_5
    if-eqz v7, :cond_e

    .line 503
    iput-object v2, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    .line 507
    :goto_a
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v3, v0, :cond_6

    .line 508
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v3, v0

    .line 510
    :cond_6
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 511
    sget v0, Lcom/sleepycat/b/n/i;->b:I

    int-to-long v8, v0

    invoke-virtual {p2, v8, v9, p3}, Lcom/sleepycat/b/c/ao;->a(JI)V

    .line 522
    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 523
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    move v7, v6

    .line 524
    goto :goto_5

    .line 480
    :cond_7
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 481
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    move v7, v6

    goto :goto_5

    .line 4705
    :cond_8
    if-eqz v4, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4706
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    goto :goto_7

    .line 4718
    :cond_9
    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4719
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    goto :goto_7

    :cond_a
    move-object v0, v2

    .line 4723
    goto :goto_7

    :cond_b
    move v0, v6

    .line 4725
    goto :goto_8

    .line 491
    :cond_c
    sget-object v0, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    goto :goto_9

    .line 495
    :cond_d
    invoke-direct {p0, v0, v5, p2, p3}, Lcom/sleepycat/b/n/i;->a(Lcom/sleepycat/b/n/j;ZLcom/sleepycat/b/c/ao;I)Lcom/sleepycat/b/n/h;

    move-result-object v0

    goto :goto_9

    .line 505
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 514
    :cond_f
    sget-boolean v1, Lcom/sleepycat/b/n/i;->a:Z

    if-nez v1, :cond_11

    sget-object v1, Lcom/sleepycat/b/n/h;->b:Lcom/sleepycat/b/n/h;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/sleepycat/b/n/h;->d:Lcom/sleepycat/b/n/h;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/sleepycat/b/n/h;->g:Lcom/sleepycat/b/n/h;

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    move-object v0, v2

    .line 528
    goto/16 :goto_5

    :cond_11
    move-object v2, v3

    .line 529
    goto/16 :goto_1

    :cond_12
    move-object v0, v2

    goto/16 :goto_7

    :cond_13
    move-object v4, v2

    goto/16 :goto_6

    :cond_14
    move v7, v6

    move-object v0, v2

    goto/16 :goto_5

    :cond_15
    move-object v1, v2

    goto/16 :goto_4

    :cond_16
    move-object v0, v1

    goto/16 :goto_3

    :cond_17
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public final b(Lcom/sleepycat/b/n/q;)V
    .locals 3

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/i;->c(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/j;

    move-result-object v1

    .line 733
    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {v1}, Lcom/sleepycat/b/n/j;->g()Lcom/sleepycat/b/n/o;

    move-result-object v0

    .line 9161
    iget-boolean v2, v0, Lcom/sleepycat/b/n/o;->h:Z

    .line 735
    if-eqz v2, :cond_0

    .line 736
    sget-object v2, Lcom/sleepycat/b/n/o;->d:Lcom/sleepycat/b/n/o;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/n/j;->a(Lcom/sleepycat/b/n/o;)V

    .line 740
    :cond_0
    return-void

    .line 736
    :cond_1
    sget-object v0, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->e:Lcom/sleepycat/b/n/j;

    if-eqz v1, :cond_0

    .line 317
    const/4 v0, 0x1

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_1
    return v0
.end method

.method public final c(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/ao;I)V
    .locals 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    .line 536
    if-eq v0, p1, :cond_0

    .line 5286
    iget-boolean v1, v0, Lcom/sleepycat/b/n/q;->r:Z

    .line 536
    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->u()V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    .line 540
    sget v0, Lcom/sleepycat/b/n/i;->b:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1, p3}, Lcom/sleepycat/b/c/ao;->a(JI)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 547
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 549
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    .line 550
    if-eq v0, p1, :cond_1

    .line 6286
    iget-boolean v2, v0, Lcom/sleepycat/b/n/q;->r:Z

    .line 550
    if-eqz v2, :cond_1

    .line 552
    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->u()V

    .line 553
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 554
    sget v0, Lcom/sleepycat/b/n/i;->b:I

    int-to-long v2, v0

    invoke-virtual {p2, v2, v3, p3}, Lcom/sleepycat/b/c/ao;->a(JI)V

    goto :goto_0

    .line 559
    :cond_2
    return-void
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-eqz v1, :cond_0

    .line 328
    const/4 v0, 0x1

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_1
    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 812
    const-string v0, " LockAddr:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 813
    const-string v0, " Owners:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {p0}, Lcom/sleepycat/b/n/i;->d()I

    move-result v0

    if-nez v0, :cond_1

    .line 815
    const-string v0, " (none)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_0
    const-string v0, " Waiters:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Lcom/sleepycat/b/n/i;->c()I

    move-result v0

    if-nez v0, :cond_3

    .line 832
    const-string v0, " (none)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->c:Lcom/sleepycat/b/n/j;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sleepycat/b/n/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 823
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 825
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 834
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/b/n/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
