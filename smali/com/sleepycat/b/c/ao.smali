.class public Lcom/sleepycat/b/c/ao;
.super Ljava/lang/Object;
.source "MemoryBudget.java"

# interfaces
.implements Lcom/sleepycat/b/c/ab;


# static fields
.field public static final A:I

.field public static final B:I

.field public static final C:I

.field public static final D:I

.field public static final E:I

.field public static final F:I

.field public static final G:I

.field public static final H:I

.field public static final I:I

.field public static final J:I

.field public static final K:I

.field public static final L:I

.field public static final M:I

.field public static final N:I

.field public static final O:I

.field public static final P:I

.field public static final Q:I

.field public static final R:I

.field public static final S:I

.field public static final T:I

.field public static final U:I

.field public static final V:I

.field public static final W:I

.field public static final X:I

.field public static final Y:Ljava/lang/String;

.field public static a:Z

.field static final synthetic ag:Z

.field private static final ah:I

.field private static final ai:I

.field private static final aj:I

.field private static final ak:I

.field private static final al:I

.field private static am:Z

.field private static an:Z

.field private static ao:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# instance fields
.field final Z:Ljava/util/concurrent/atomic/AtomicLong;

.field final aa:Ljava/util/concurrent/atomic/AtomicLong;

.field final ab:Ljava/util/concurrent/atomic/AtomicLong;

.field public final ac:Lcom/sleepycat/b/c/ar;

.field public ad:J

.field public ae:J

.field final af:Lcom/sleepycat/b/c/ad;

.field private final ap:Ljava/util/concurrent/atomic/AtomicLong;

.field private final aq:Ljava/util/concurrent/atomic/AtomicLong;

.field private ar:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x28

    const/4 v1, 0x0

    const/16 v7, 0x20

    const/16 v6, 0x10

    const/16 v5, 0x18

    .line 38
    const-class v0, Lcom/sleepycat/b/c/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/ao;->ag:Z

    .line 45
    sput-boolean v1, Lcom/sleepycat/b/c/ao;->a:Z

    .line 51
    const-string v0, "memAdmin"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ao;->b:Z

    .line 52
    const-string v0, "memLock"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ao;->c:Z

    .line 53
    const-string v0, "memTxn"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ao;->d:Z

    .line 54
    const-string v0, "memTreeAdmin"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ao;->e:Z

    .line 55
    const-string v0, "memTree"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ao;->f:Z

    .line 361
    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->c(I)I

    move-result v0

    sput v0, Lcom/sleepycat/b/c/ao;->ah:I

    .line 362
    sget v0, Lcom/sleepycat/b/c/ao;->ah:I

    rsub-int/lit8 v0, v0, 0x28

    sput v0, Lcom/sleepycat/b/c/ao;->ai:I

    .line 363
    sget v0, Lcom/sleepycat/b/c/ao;->ah:I

    rsub-int/lit8 v0, v0, 0x40

    sput v0, Lcom/sleepycat/b/c/ao;->aj:I

    .line 364
    sget v0, Lcom/sleepycat/b/c/ao;->ah:I

    rsub-int/lit8 v0, v0, 0x28

    sput v0, Lcom/sleepycat/b/c/ao;->ak:I

    .line 365
    sget v0, Lcom/sleepycat/b/c/ao;->ah:I

    rsub-int/lit8 v0, v0, 0x18

    sput v0, Lcom/sleepycat/b/c/ao;->al:I

    .line 427
    sput-boolean v1, Lcom/sleepycat/b/c/ao;->am:Z

    .line 428
    sput-boolean v1, Lcom/sleepycat/b/c/ao;->an:Z

    .line 429
    sput-boolean v1, Lcom/sleepycat/b/c/ao;->ao:Z

    .line 437
    sget-boolean v0, Lcom/sleepycat/b/c/ad;->ab:Z

    if-eqz v0, :cond_1

    .line 438
    sput v5, Lcom/sleepycat/b/c/ao;->g:I

    .line 439
    sput v5, Lcom/sleepycat/b/c/ao;->h:I

    .line 440
    const/4 v0, 0x4

    sput v0, Lcom/sleepycat/b/c/ao;->i:I

    .line 441
    sput v6, Lcom/sleepycat/b/c/ao;->j:I

    .line 442
    const/4 v0, 0x4

    sput v0, Lcom/sleepycat/b/c/ao;->k:I

    .line 443
    const/16 v0, 0x38

    sput v0, Lcom/sleepycat/b/c/ao;->l:I

    .line 444
    const/16 v0, 0x48

    sput v0, Lcom/sleepycat/b/c/ao;->m:I

    .line 445
    const/16 v0, 0x48

    sput v0, Lcom/sleepycat/b/c/ao;->n:I

    .line 446
    const/16 v0, 0x48

    sput v0, Lcom/sleepycat/b/c/ao;->o:I

    .line 447
    const/16 v0, 0x70

    sput v0, Lcom/sleepycat/b/c/ao;->p:I

    .line 448
    sput v8, Lcom/sleepycat/b/c/ao;->q:I

    .line 449
    const/16 v0, 0x268

    sput v0, Lcom/sleepycat/b/c/ao;->r:I

    .line 450
    const/16 v0, 0x3b8

    sput v0, Lcom/sleepycat/b/c/ao;->s:I

    .line 451
    sput v5, Lcom/sleepycat/b/c/ao;->t:I

    .line 452
    const/16 v0, 0x8

    sput v0, Lcom/sleepycat/b/c/ao;->u:I

    .line 453
    sput v7, Lcom/sleepycat/b/c/ao;->v:I

    .line 454
    const/16 v0, 0xa8

    sput v0, Lcom/sleepycat/b/c/ao;->w:I

    .line 455
    const/16 v0, 0x40

    sput v0, Lcom/sleepycat/b/c/ao;->x:I

    .line 456
    sput v7, Lcom/sleepycat/b/c/ao;->y:I

    .line 457
    const/16 v0, 0x60

    sput v0, Lcom/sleepycat/b/c/ao;->z:I

    .line 458
    sput v6, Lcom/sleepycat/b/c/ao;->A:I

    .line 460
    sput v6, Lcom/sleepycat/b/c/ao;->B:I

    .line 461
    sput v5, Lcom/sleepycat/b/c/ao;->C:I

    .line 463
    sput v5, Lcom/sleepycat/b/c/ao;->D:I

    .line 464
    const/16 v0, 0x80

    sput v0, Lcom/sleepycat/b/c/ao;->E:I

    .line 465
    const/16 v0, 0xa8

    sput v0, Lcom/sleepycat/b/c/ao;->F:I

    .line 466
    const/16 v0, 0x78

    sput v0, Lcom/sleepycat/b/c/ao;->G:I

    .line 467
    sput v6, Lcom/sleepycat/b/c/ao;->H:I

    .line 468
    sput v7, Lcom/sleepycat/b/c/ao;->I:I

    .line 469
    sput v5, Lcom/sleepycat/b/c/ao;->J:I

    .line 470
    sput v5, Lcom/sleepycat/b/c/ao;->K:I

    .line 471
    sput v8, Lcom/sleepycat/b/c/ao;->L:I

    .line 472
    const/16 v0, 0x107

    sput v0, Lcom/sleepycat/b/c/ao;->M:I

    .line 473
    const/16 v0, 0x68

    sput v0, Lcom/sleepycat/b/c/ao;->N:I

    .line 474
    const/16 v0, 0x91

    sput v0, Lcom/sleepycat/b/c/ao;->O:I

    .line 475
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->P:I

    .line 476
    const/16 v0, 0x1d8

    sput v0, Lcom/sleepycat/b/c/ao;->Q:I

    .line 477
    const/16 v0, 0x1c0

    sput v0, Lcom/sleepycat/b/c/ao;->R:I

    .line 478
    sput v5, Lcom/sleepycat/b/c/ao;->S:I

    .line 479
    const/16 v0, 0x80

    sput v0, Lcom/sleepycat/b/c/ao;->T:I

    .line 480
    sput v5, Lcom/sleepycat/b/c/ao;->U:I

    .line 481
    sput v8, Lcom/sleepycat/b/c/ao;->V:I

    .line 482
    sget v0, Lcom/sleepycat/b/c/ao;->al:I

    sput v0, Lcom/sleepycat/b/c/ao;->W:I

    .line 483
    sput v5, Lcom/sleepycat/b/c/ao;->X:I

    .line 672
    :goto_1
    const-wide/32 v0, 0x18000

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/c/ao;->Y:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    .line 38
    goto/16 :goto_0

    .line 485
    :cond_1
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    const-string v0, "je.forceJVMArch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    if-nez v0, :cond_6

    .line 491
    :try_start_0
    const-string v0, "sun.arch.data.model"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_b

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v2, v0

    .line 502
    :goto_3
    invoke-static {}, Lcom/sleepycat/b/c/b;->a()Ljava/lang/Boolean;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_2

    .line 505
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sleepycat/b/c/ao;->an:Z

    .line 506
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ao;->ao:Z

    .line 512
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    const-string v4, "-XX:+UseCompressedOops"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sleepycat/b/c/ao;->am:Z

    .line 520
    :cond_4
    sget-boolean v0, Lcom/sleepycat/b/c/ao;->an:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/sleepycat/b/c/ao;->ao:Z

    .line 524
    :goto_4
    if-eqz v0, :cond_9

    .line 525
    sput v5, Lcom/sleepycat/b/c/ao;->g:I

    .line 526
    sput v6, Lcom/sleepycat/b/c/ao;->h:I

    .line 527
    sput v1, Lcom/sleepycat/b/c/ao;->i:I

    .line 528
    sput v6, Lcom/sleepycat/b/c/ao;->j:I

    .line 529
    const/4 v0, 0x4

    sput v0, Lcom/sleepycat/b/c/ao;->k:I

    .line 530
    sput v7, Lcom/sleepycat/b/c/ao;->m:I

    .line 531
    const/16 v0, 0x90

    sput v0, Lcom/sleepycat/b/c/ao;->n:I

    .line 532
    sput v7, Lcom/sleepycat/b/c/ao;->o:I

    .line 533
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->q:I

    .line 534
    const/16 v0, 0x3f8

    sput v0, Lcom/sleepycat/b/c/ao;->s:I

    .line 535
    const/16 v0, 0x158

    sput v0, Lcom/sleepycat/b/c/ao;->w:I

    .line 536
    const/16 v0, 0x40

    sput v0, Lcom/sleepycat/b/c/ao;->x:I

    .line 537
    sput v7, Lcom/sleepycat/b/c/ao;->y:I

    .line 538
    const/16 v0, 0x50

    sput v0, Lcom/sleepycat/b/c/ao;->z:I

    .line 540
    sput v6, Lcom/sleepycat/b/c/ao;->A:I

    .line 542
    sput v6, Lcom/sleepycat/b/c/ao;->B:I

    .line 543
    sput v5, Lcom/sleepycat/b/c/ao;->C:I

    .line 545
    sput v5, Lcom/sleepycat/b/c/ao;->D:I

    .line 546
    const/16 v0, 0x78

    sput v0, Lcom/sleepycat/b/c/ao;->E:I

    .line 547
    const/16 v0, 0xa8

    sput v0, Lcom/sleepycat/b/c/ao;->F:I

    .line 548
    const/16 v0, 0x127

    sput v0, Lcom/sleepycat/b/c/ao;->G:I

    .line 549
    const/16 v0, 0x80

    sput v0, Lcom/sleepycat/b/c/ao;->l:I

    .line 550
    const/16 v0, 0x100

    sput v0, Lcom/sleepycat/b/c/ao;->p:I

    .line 551
    sput v8, Lcom/sleepycat/b/c/ao;->r:I

    .line 552
    sput v5, Lcom/sleepycat/b/c/ao;->t:I

    .line 553
    const/16 v0, 0x8

    sput v0, Lcom/sleepycat/b/c/ao;->u:I

    .line 554
    sput v8, Lcom/sleepycat/b/c/ao;->v:I

    .line 555
    const/16 v0, 0xe8

    sput v0, Lcom/sleepycat/b/c/ao;->M:I

    .line 556
    const/16 v0, 0x40

    sput v0, Lcom/sleepycat/b/c/ao;->N:I

    .line 557
    sput v6, Lcom/sleepycat/b/c/ao;->H:I

    .line 558
    sput v7, Lcom/sleepycat/b/c/ao;->I:I

    .line 559
    sput v5, Lcom/sleepycat/b/c/ao;->J:I

    .line 560
    sput v5, Lcom/sleepycat/b/c/ao;->K:I

    .line 561
    sput v7, Lcom/sleepycat/b/c/ao;->L:I

    .line 562
    const/16 v0, 0x7d

    sput v0, Lcom/sleepycat/b/c/ao;->O:I

    .line 563
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->P:I

    .line 564
    const/16 v0, 0x1d0

    sput v0, Lcom/sleepycat/b/c/ao;->Q:I

    .line 565
    const/16 v0, 0x1b8

    sput v0, Lcom/sleepycat/b/c/ao;->R:I

    .line 566
    sput v5, Lcom/sleepycat/b/c/ao;->S:I

    .line 567
    const/16 v0, 0x80

    sput v0, Lcom/sleepycat/b/c/ao;->T:I

    .line 568
    sput v5, Lcom/sleepycat/b/c/ao;->U:I

    .line 569
    sput v7, Lcom/sleepycat/b/c/ao;->V:I

    .line 570
    sget v0, Lcom/sleepycat/b/c/ao;->ak:I

    sput v0, Lcom/sleepycat/b/c/ao;->W:I

    .line 571
    sput v5, Lcom/sleepycat/b/c/ao;->X:I

    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 493
    goto/16 :goto_2

    .line 496
    :cond_6
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    :goto_5
    move v2, v0

    .line 500
    goto/16 :goto_3

    :cond_7
    move v0, v1

    .line 496
    goto :goto_5

    .line 499
    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/lang/NumberFormatException;->printStackTrace(Ljava/io/PrintStream;)V

    move v2, v1

    goto/16 :goto_3

    .line 520
    :cond_8
    sget-boolean v0, Lcom/sleepycat/b/c/ao;->am:Z

    goto/16 :goto_4

    .line 572
    :cond_9
    if-eqz v2, :cond_a

    .line 573
    sput v5, Lcom/sleepycat/b/c/ao;->g:I

    .line 574
    sput v5, Lcom/sleepycat/b/c/ao;->h:I

    .line 575
    sput v1, Lcom/sleepycat/b/c/ao;->i:I

    .line 576
    sput v6, Lcom/sleepycat/b/c/ao;->j:I

    .line 577
    const/16 v0, 0x8

    sput v0, Lcom/sleepycat/b/c/ao;->k:I

    .line 578
    const/16 v0, 0x34

    sput v0, Lcom/sleepycat/b/c/ao;->m:I

    .line 579
    const/16 v0, 0xf0

    sput v0, Lcom/sleepycat/b/c/ao;->n:I

    .line 580
    const/16 v0, 0x37

    sput v0, Lcom/sleepycat/b/c/ao;->o:I

    .line 581
    const/16 v0, 0x50

    sput v0, Lcom/sleepycat/b/c/ao;->q:I

    .line 582
    const/16 v0, 0x658

    sput v0, Lcom/sleepycat/b/c/ao;->s:I

    .line 583
    const/16 v0, 0x200

    sput v0, Lcom/sleepycat/b/c/ao;->w:I

    .line 584
    const/16 v0, 0xb0

    sput v0, Lcom/sleepycat/b/c/ao;->E:I

    .line 585
    const/16 v0, 0xe8

    sput v0, Lcom/sleepycat/b/c/ao;->F:I

    .line 586
    const/16 v0, 0x1b7

    sput v0, Lcom/sleepycat/b/c/ao;->G:I

    .line 587
    const/16 v0, 0xdb

    sput v0, Lcom/sleepycat/b/c/ao;->l:I

    .line 588
    const/16 v0, 0x1b6

    sput v0, Lcom/sleepycat/b/c/ao;->p:I

    .line 589
    const/16 v0, 0x48

    sput v0, Lcom/sleepycat/b/c/ao;->x:I

    .line 590
    sput v8, Lcom/sleepycat/b/c/ao;->y:I

    .line 591
    const/16 v0, 0x78

    sput v0, Lcom/sleepycat/b/c/ao;->z:I

    .line 592
    sput v5, Lcom/sleepycat/b/c/ao;->A:I

    .line 594
    sput v5, Lcom/sleepycat/b/c/ao;->B:I

    .line 595
    sput v7, Lcom/sleepycat/b/c/ao;->C:I

    .line 597
    sput v7, Lcom/sleepycat/b/c/ao;->D:I

    .line 598
    const/16 v0, 0x40

    sput v0, Lcom/sleepycat/b/c/ao;->r:I

    .line 599
    sput v7, Lcom/sleepycat/b/c/ao;->t:I

    .line 600
    const/16 v0, 0x8

    sput v0, Lcom/sleepycat/b/c/ao;->u:I

    .line 601
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->v:I

    .line 602
    const/16 v0, 0x161

    sput v0, Lcom/sleepycat/b/c/ao;->M:I

    .line 603
    const/16 v0, 0x67

    sput v0, Lcom/sleepycat/b/c/ao;->N:I

    .line 604
    sput v5, Lcom/sleepycat/b/c/ao;->H:I

    .line 605
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->I:I

    .line 606
    sput v7, Lcom/sleepycat/b/c/ao;->J:I

    .line 607
    sput v7, Lcom/sleepycat/b/c/ao;->K:I

    .line 608
    sput v8, Lcom/sleepycat/b/c/ao;->L:I

    .line 609
    const/16 v0, 0xa1

    sput v0, Lcom/sleepycat/b/c/ao;->O:I

    .line 610
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->P:I

    .line 611
    const/16 v0, 0x1f8

    sput v0, Lcom/sleepycat/b/c/ao;->Q:I

    .line 612
    const/16 v0, 0x1d1

    sput v0, Lcom/sleepycat/b/c/ao;->R:I

    .line 613
    sput v8, Lcom/sleepycat/b/c/ao;->S:I

    .line 614
    const/16 v0, 0xa8

    sput v0, Lcom/sleepycat/b/c/ao;->T:I

    .line 615
    sput v7, Lcom/sleepycat/b/c/ao;->U:I

    .line 616
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->V:I

    .line 617
    sget v0, Lcom/sleepycat/b/c/ao;->aj:I

    sput v0, Lcom/sleepycat/b/c/ao;->W:I

    .line 618
    sput v7, Lcom/sleepycat/b/c/ao;->X:I

    goto/16 :goto_1

    .line 620
    :cond_a
    sput v6, Lcom/sleepycat/b/c/ao;->g:I

    .line 621
    sput v6, Lcom/sleepycat/b/c/ao;->h:I

    .line 622
    const/4 v0, 0x4

    sput v0, Lcom/sleepycat/b/c/ao;->i:I

    .line 623
    const/16 v0, 0x8

    sput v0, Lcom/sleepycat/b/c/ao;->j:I

    .line 624
    const/4 v0, 0x4

    sput v0, Lcom/sleepycat/b/c/ao;->k:I

    .line 625
    const/16 v0, 0x78

    sput v0, Lcom/sleepycat/b/c/ao;->l:I

    .line 626
    sput v5, Lcom/sleepycat/b/c/ao;->m:I

    .line 627
    const/16 v0, 0x88

    sput v0, Lcom/sleepycat/b/c/ao;->n:I

    .line 628
    sput v5, Lcom/sleepycat/b/c/ao;->o:I

    .line 629
    const/16 v0, 0xf0

    sput v0, Lcom/sleepycat/b/c/ao;->p:I

    .line 630
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->q:I

    .line 631
    const/16 v0, 0x398

    sput v0, Lcom/sleepycat/b/c/ao;->s:I

    .line 632
    sput v7, Lcom/sleepycat/b/c/ao;->r:I

    .line 633
    sput v6, Lcom/sleepycat/b/c/ao;->t:I

    .line 634
    const/16 v0, 0x8

    sput v0, Lcom/sleepycat/b/c/ao;->u:I

    .line 635
    sput v7, Lcom/sleepycat/b/c/ao;->v:I

    .line 636
    const/16 v0, 0x180

    sput v0, Lcom/sleepycat/b/c/ao;->w:I

    .line 637
    const/16 v0, 0x30

    sput v0, Lcom/sleepycat/b/c/ao;->x:I

    .line 638
    sput v5, Lcom/sleepycat/b/c/ao;->y:I

    .line 639
    const/16 v0, 0x48

    sput v0, Lcom/sleepycat/b/c/ao;->z:I

    .line 640
    sput v6, Lcom/sleepycat/b/c/ao;->A:I

    .line 642
    sput v6, Lcom/sleepycat/b/c/ao;->B:I

    .line 643
    sput v6, Lcom/sleepycat/b/c/ao;->C:I

    .line 645
    sput v6, Lcom/sleepycat/b/c/ao;->D:I

    .line 646
    const/16 v0, 0x78

    sput v0, Lcom/sleepycat/b/c/ao;->E:I

    .line 647
    const/16 v0, 0x98

    sput v0, Lcom/sleepycat/b/c/ao;->F:I

    .line 648
    const/16 v0, 0x150

    sput v0, Lcom/sleepycat/b/c/ao;->G:I

    .line 649
    const/16 v0, 0xe0

    sput v0, Lcom/sleepycat/b/c/ao;->M:I

    .line 650
    const/16 v0, 0x38

    sput v0, Lcom/sleepycat/b/c/ao;->N:I

    .line 651
    sput v6, Lcom/sleepycat/b/c/ao;->H:I

    .line 652
    sput v5, Lcom/sleepycat/b/c/ao;->I:I

    .line 653
    sput v6, Lcom/sleepycat/b/c/ao;->J:I

    .line 654
    sput v6, Lcom/sleepycat/b/c/ao;->K:I

    .line 655
    sput v7, Lcom/sleepycat/b/c/ao;->L:I

    .line 656
    const/16 v0, 0x6d

    sput v0, Lcom/sleepycat/b/c/ao;->O:I

    .line 657
    sput v8, Lcom/sleepycat/b/c/ao;->P:I

    .line 658
    const/16 v0, 0x1d0

    sput v0, Lcom/sleepycat/b/c/ao;->Q:I

    .line 659
    const/16 v0, 0x1b8

    sput v0, Lcom/sleepycat/b/c/ao;->R:I

    .line 660
    sput v5, Lcom/sleepycat/b/c/ao;->S:I

    .line 661
    const/16 v0, 0x70

    sput v0, Lcom/sleepycat/b/c/ao;->T:I

    .line 662
    sput v6, Lcom/sleepycat/b/c/ao;->U:I

    .line 663
    sput v7, Lcom/sleepycat/b/c/ao;->V:I

    .line 664
    sget v0, Lcom/sleepycat/b/c/ao;->ai:I

    sput v0, Lcom/sleepycat/b/c/ao;->W:I

    .line 665
    sput v5, Lcom/sleepycat/b/c/ao;->X:I

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_2
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/m;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ao;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    .line 698
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ao;->ap:Ljava/util/concurrent/atomic/AtomicLong;

    .line 704
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ao;->aa:Ljava/util/concurrent/atomic/AtomicLong;

    .line 713
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ao;->ab:Ljava/util/concurrent/atomic/AtomicLong;

    .line 719
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ao;->aq:Ljava/util/concurrent/atomic/AtomicLong;

    .line 743
    iput-object p1, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    .line 746
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 3357
    iget-boolean v0, p1, Lcom/sleepycat/b/c/ad;->i:Z

    .line 750
    if-eqz v0, :cond_2

    .line 751
    if-eqz p2, :cond_1

    .line 3508
    iget-object v0, p2, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 752
    iget-object v0, v0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    iput-object v0, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 754
    const-wide/16 v0, -0x1

    .line 763
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sleepycat/b/c/ao;->a(JZLcom/sleepycat/b/c/m;)V

    .line 3774
    sget-boolean v0, Lcom/sleepycat/b/c/ao;->am:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sleepycat/b/c/ao;->an:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sleepycat/b/c/ao;->ao:Z

    if-nez v0, :cond_0

    .line 3777
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    .line 4515
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 3777
    iget-object v1, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    const-string v2, "-XX:+UseCompressedOops was specified but is not in effect, probably because the heap size is too large for this JVM option on this platform.  This is likely to cause an OutOfMemoryError!"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 766
    :cond_0
    return-void

    .line 756
    :cond_1
    new-instance v0, Lcom/sleepycat/b/c/aq;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/c/aq;-><init>(B)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 757
    invoke-static {p3}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/b/c/m;)J

    move-result-wide v0

    goto :goto_0

    .line 760
    :cond_2
    new-instance v0, Lcom/sleepycat/b/c/ap;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/c/ap;-><init>(Lcom/sleepycat/b/c/ao;B)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 761
    invoke-static {p3}, Lcom/sleepycat/b/c/ao;->a(Lcom/sleepycat/b/c/m;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 1253
    sget v0, Lcom/sleepycat/b/c/ao;->h:I

    .line 1254
    sget v1, Lcom/sleepycat/b/c/ao;->i:I

    if-le p0, v1, :cond_0

    .line 1255
    sget v1, Lcom/sleepycat/b/c/ao;->i:I

    sub-int v1, p0, v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 1258
    :cond_0
    return v0
.end method

.method public static a(Lcom/sleepycat/a/a/m;)I
    .locals 2

    .prologue
    .line 1234
    sget v0, Lcom/sleepycat/b/c/ao;->X:I

    .line 10259
    iget-object v1, p0, Lcom/sleepycat/c/d;->b:[B

    .line 1234
    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/sleepycat/b/c/ao;)J
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ao;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lcom/sleepycat/b/c/m;)J
    .locals 8

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 808
    sget-object v0, Lcom/sleepycat/b/b/d;->b:Lcom/sleepycat/b/b/f;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v2

    .line 4988
    const-string v0, "Mac OS X"

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4989
    const-string v0, "java.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4990
    if-eqz v0, :cond_0

    const-string v1, "1.4.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v4

    .line 812
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2

    .line 814
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 815
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sleepycat/b/b/d;->b:Lcom/sleepycat/b/b/f;

    .line 5090
    iget-object v6, v6, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 815
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a value of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but the JVM is only configured for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Consider using je.maxMemoryPercent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4995
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    goto :goto_0

    .line 822
    :cond_1
    const-wide/32 v0, 0x18000

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sleepycat/b/b/d;->b:Lcom/sleepycat/b/b/f;

    .line 6090
    iget-object v4, v4, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 823
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which is less than the minimum: 98304"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    .line 837
    const-wide/32 v0, 0x4000000

    .line 841
    :cond_3
    sget-object v2, Lcom/sleepycat/b/b/d;->c:Lcom/sleepycat/b/b/e;

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v2

    .line 843
    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 846
    :goto_1
    return-wide v0

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " increment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1098
    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    .line 1099
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 1102
    sget-boolean v0, Lcom/sleepycat/b/c/ao;->ag:Z

    if-nez v0, :cond_1

    .line 10122
    sget-boolean v0, Lcom/sleepycat/b/c/ao;->a:Z

    if-eqz v0, :cond_0

    .line 10123
    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1102
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p4, v2, v3, p1, p2}, Lcom/sleepycat/b/c/ao;->a(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 10125
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1104
    :cond_1
    if-eqz p5, :cond_2

    .line 1105
    cmp-long v0, p1, v4

    if-lez v0, :cond_4

    .line 1106
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "INC-------- ="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1114
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/ar;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1115
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->D()V

    .line 1118
    :cond_3
    return-void

    .line 1109
    :cond_4
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "-------DEC="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 1262
    mul-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v0

    return v0
.end method

.method public static c(I)I
    .locals 1

    .prologue
    .line 1270
    sget v0, Lcom/sleepycat/b/c/ao;->k:I

    mul-int/2addr v0, p0

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method final a(J)V
    .locals 5

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->ab:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    .line 1020
    sub-long v0, p1, v0

    .line 1022
    sget-boolean v2, Lcom/sleepycat/b/c/ao;->e:Z

    if-eqz v2, :cond_0

    .line 1023
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RESET = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1025
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/c/ar;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->D()V

    .line 1028
    :cond_1
    return-void
.end method

.method public final a(JI)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1129
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    .line 1130
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->aq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1133
    sget-boolean v0, Lcom/sleepycat/b/c/ao;->ag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->aq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "lockMem"

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->aq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p1, p2}, Lcom/sleepycat/b/c/ao;->a(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1136
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/c/ao;->c:Z

    if-eqz v0, :cond_1

    .line 1137
    cmp-long v0, p1, v2

    if-lez v0, :cond_3

    .line 1138
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INC-------- ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->aq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/ar;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->D()V

    .line 1153
    :cond_2
    return-void

    .line 1143
    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-------DEC="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->aq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(JZLcom/sleepycat/b/c/m;)V
    .locals 15

    .prologue
    .line 864
    iget-wide v6, p0, Lcom/sleepycat/b/c/ao;->ad:J

    .line 869
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_4

    .line 6201
    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 6321
    iget-wide v0, v2, Lcom/sleepycat/b/c/ar;->a:J

    move-wide/from16 p1, v0

    .line 892
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    .line 7357
    iget-boolean v2, v2, Lcom/sleepycat/b/c/ad;->i:Z

    .line 892
    if-eqz v2, :cond_5

    .line 893
    invoke-static {}, Lcom/sleepycat/b/c/n;->a()Lcom/sleepycat/b/c/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/c/n;->b()I

    move-result v2

    .line 894
    if-eqz p3, :cond_0

    .line 895
    add-int/lit8 v2, v2, 0x1

    .line 897
    :cond_0
    int-to-long v2, v2

    div-long v2, p1, v2

    .line 911
    :goto_1
    sget-object v4, Lcom/sleepycat/b/b/d;->H:Lcom/sleepycat/b/b/f;

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v4

    .line 913
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_7

    .line 914
    sget-boolean v4, Lcom/sleepycat/b/c/ad;->ab:Z

    if-eqz v4, :cond_6

    .line 916
    const/4 v4, 0x7

    shr-long v4, v2, v4

    .line 929
    :cond_1
    :goto_2
    sget-object v8, Lcom/sleepycat/b/b/d;->I:Lcom/sleepycat/b/b/e;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v8

    .line 931
    int-to-long v10, v8

    div-long v10, v4, v10

    .line 932
    sget-object v9, Lcom/sleepycat/b/b/d;->J:Lcom/sleepycat/b/b/e;

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v9

    .line 934
    int-to-long v12, v9

    cmp-long v12, v10, v12

    if-lez v12, :cond_8

    .line 935
    int-to-long v4, v9

    .line 936
    int-to-long v8, v8

    mul-long/2addr v4, v8

    .line 943
    :cond_2
    :goto_3
    iget-object v8, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    .line 7392
    iget-object v8, v8, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 943
    sget-object v9, Lcom/sleepycat/b/b/d;->ar:Lcom/sleepycat/b/b/e;

    invoke-virtual {v8, v9}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v8

    int-to-long v8, v8

    mul-long v8, v8, p1

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    .line 948
    iget-object v10, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    .line 8392
    iget-object v10, v10, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 948
    sget-object v11, Lcom/sleepycat/b/b/d;->aW:Lcom/sleepycat/b/b/e;

    invoke-virtual {v10, v11}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v10, v2

    const-wide/16 v12, 0x64

    div-long/2addr v10, v12

    .line 953
    sget-object v12, Lcom/sleepycat/b/b/d;->ah:Lcom/sleepycat/b/b/f;

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v12

    sub-long/2addr v2, v4

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 962
    iput-wide v4, p0, Lcom/sleepycat/b/c/ao;->ad:J

    .line 963
    iget-object v4, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 9325
    iput-wide v8, v4, Lcom/sleepycat/b/c/ar;->b:J

    .line 964
    iput-wide v10, p0, Lcom/sleepycat/b/c/ao;->ae:J

    .line 965
    iput-wide v2, p0, Lcom/sleepycat/b/c/ao;->ar:J

    .line 968
    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    iget-wide v4, p0, Lcom/sleepycat/b/c/ao;->ad:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/c/ar;->a(J)Z

    .line 975
    if-nez p3, :cond_3

    iget-wide v2, p0, Lcom/sleepycat/b/c/ao;->ad:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_3

    .line 976
    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    .line 9371
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 976
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/c/m;)V

    .line 978
    :cond_3
    return-void

    .line 872
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 7317
    move-wide/from16 v0, p1

    iput-wide v0, v2, Lcom/sleepycat/b/c/ar;->a:J

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v2, p1

    .line 899
    goto/16 :goto_1

    .line 918
    :cond_6
    const/4 v4, 0x4

    shr-long v4, v2, v4

    goto :goto_2

    .line 920
    :cond_7
    const-wide/16 v8, 0x2

    div-long v8, v2, v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    .line 921
    const-wide/16 v4, 0x2

    div-long v4, v2, v4

    goto/16 :goto_2

    .line 937
    :cond_8
    const-wide/16 v12, 0x800

    cmp-long v9, v10, v12

    if-gez v9, :cond_2

    .line 940
    int-to-long v4, v8

    const-wide/16 v8, 0x800

    mul-long/2addr v4, v8

    goto :goto_3
.end method

.method public final a()Z
    .locals 4

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/b/c/ao;->ar:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()J
    .locals 4

    .prologue
    .line 1168
    iget-wide v0, p0, Lcom/sleepycat/b/c/ao;->ad:J

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->aa:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->ab:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ao;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    .line 1035
    sub-long v0, p1, v0

    .line 1037
    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/c/ar;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->D()V

    .line 1040
    :cond_0
    return-void
.end method

.method public final c()J
    .locals 4

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->ap:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->aq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 1189
    return-wide v0
.end method

.method public final c(J)V
    .locals 7

    .prologue
    .line 1064
    iget-object v4, p0, Lcom/sleepycat/b/c/ao;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v5, "tree"

    sget-boolean v6, Lcom/sleepycat/b/c/ao;->f:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/c/ao;->a(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V

    .line 1065
    return-void
.end method

.method final d()Lcom/sleepycat/b/p/ai;
    .locals 8

    .prologue
    .line 1274
    new-instance v2, Lcom/sleepycat/b/p/ai;

    const-string v0, "Cache Layout"

    const-string v1, "Allocation of resources in the cache."

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    new-instance v3, Lcom/sleepycat/b/p/z;

    sget-object v4, Lcom/sleepycat/b/c/x;->a:Lcom/sleepycat/b/p/ag;

    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ar;->a()J

    move-result-wide v0

    :goto_0
    invoke-direct {v3, v2, v4, v0, v1}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 1277
    new-instance v0, Lcom/sleepycat/b/p/z;

    sget-object v1, Lcom/sleepycat/b/c/x;->b:Lcom/sleepycat/b/p/ag;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ao;->b()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 1278
    new-instance v0, Lcom/sleepycat/b/p/z;

    sget-object v1, Lcom/sleepycat/b/c/x;->c:Lcom/sleepycat/b/p/ag;

    iget-object v3, p0, Lcom/sleepycat/b/c/ao;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v3, p0, Lcom/sleepycat/b/c/ao;->ab:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 1280
    new-instance v0, Lcom/sleepycat/b/p/z;

    sget-object v1, Lcom/sleepycat/b/c/x;->d:Lcom/sleepycat/b/p/ag;

    iget-object v3, p0, Lcom/sleepycat/b/c/ao;->ab:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 1281
    new-instance v0, Lcom/sleepycat/b/p/z;

    sget-object v1, Lcom/sleepycat/b/c/x;->e:Lcom/sleepycat/b/p/ag;

    iget-object v3, p0, Lcom/sleepycat/b/c/ao;->aa:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 1282
    new-instance v0, Lcom/sleepycat/b/p/z;

    sget-object v1, Lcom/sleepycat/b/c/x;->f:Lcom/sleepycat/b/p/ag;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ao;->c()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 1284
    return-object v2

    .line 1275
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final d(J)V
    .locals 7

    .prologue
    .line 1073
    iget-object v4, p0, Lcom/sleepycat/b/c/ao;->ap:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v5, "txn"

    sget-boolean v6, Lcom/sleepycat/b/c/ao;->d:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/c/ao;->a(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V

    .line 1074
    return-void
.end method

.method public final e(J)V
    .locals 7

    .prologue
    .line 1082
    iget-object v4, p0, Lcom/sleepycat/b/c/ao;->aa:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v5, "admin"

    sget-boolean v6, Lcom/sleepycat/b/c/ao;->b:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/c/ao;->a(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V

    .line 1083
    return-void
.end method

.method public final f(J)V
    .locals 7

    .prologue
    .line 1090
    iget-object v4, p0, Lcom/sleepycat/b/c/ao;->ab:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v5, "treeAdmin"

    sget-boolean v6, Lcom/sleepycat/b/c/ao;->e:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/c/ao;->a(JLjava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Z)V

    .line 1092
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1290
    const-string v1, "treeUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1291
    const-string v1, "treeAdminUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->ab:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1292
    const-string v1, "adminUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->aa:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1293
    const-string v1, "txnUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/c/ao;->ap:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1294
    const-string v1, "lockUsage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ao;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
