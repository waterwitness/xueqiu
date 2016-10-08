.class public Lcom/sleepycat/b/l/y;
.super Lcom/sleepycat/b/l/ac;
.source "LN.java"

# interfaces
.implements Lcom/sleepycat/b/g/ax;


# static fields
.field static final synthetic h:Z


# instance fields
.field public f:[B

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sleepycat/b/l/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/y;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sleepycat/b/l/ac;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    .line 78
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/m;)V
    .locals 6

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sleepycat/b/l/ac;-><init>()V

    .line 3197
    iget-object v1, p1, Lcom/sleepycat/b/m;->a:[B

    .line 112
    if-nez v1, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->l()V

    .line 124
    return-void

    .line 3355
    :cond_0
    iget-boolean v0, p1, Lcom/sleepycat/b/m;->f:Z

    .line 114
    if-eqz v0, :cond_1

    .line 3382
    iget v2, p1, Lcom/sleepycat/b/m;->d:I

    .line 4323
    iget v0, p1, Lcom/sleepycat/b/m;->c:I

    .line 4410
    iget v3, p1, Lcom/sleepycat/b/m;->e:I

    .line 115
    add-int/2addr v3, v0

    .line 5323
    iget v4, p1, Lcom/sleepycat/b/m;->c:I

    .line 5410
    iget v5, p1, Lcom/sleepycat/b/m;->e:I

    move-object v0, p0

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/l/y;->a([BIIII)V

    goto :goto_0

    .line 6382
    :cond_1
    iget v0, p1, Lcom/sleepycat/b/m;->d:I

    .line 6410
    iget v2, p1, Lcom/sleepycat/b/m;->e:I

    .line 121
    invoke-direct {p0, v1, v0, v2}, Lcom/sleepycat/b/l/y;->a([BII)V

    goto :goto_0
.end method

.method constructor <init>([B)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sleepycat/b/l/ac;-><init>()V

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->l()V

    .line 98
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/l/y;->a([BII)V

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/am;ZLcom/sleepycat/b/g/av;)J
    .locals 14

    .prologue
    .line 470
    .line 12330
    iget-boolean v2, p1, Lcom/sleepycat/b/c/ad;->g:Z

    .line 470
    if-eqz v2, :cond_0

    .line 472
    const-string v2, "Cannot log LNs in read-only env."

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 480
    :cond_0
    new-instance v12, Lcom/sleepycat/b/g/ad;

    invoke-direct {v12}, Lcom/sleepycat/b/g/ad;-><init>()V

    .line 482
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v11, v2

    .line 484
    :goto_0
    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/b/n/q;->i_()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 485
    const/4 v2, 0x1

    invoke-virtual {p0, v11, v2}, Lcom/sleepycat/b/l/y;->a(ZZ)Lcom/sleepycat/b/g/af;

    move-result-object v3

    .line 13073
    move-object/from16 v0, p7

    iget-wide v6, v0, Lcom/sleepycat/b/n/am;->a:J

    .line 14065
    move-object/from16 v0, p7

    iget-boolean v8, v0, Lcom/sleepycat/b/n/am;->b:Z

    .line 488
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/b/n/q;->e()Lcom/sleepycat/b/n/z;

    move-result-object v9

    .line 489
    sget-boolean v2, Lcom/sleepycat/b/l/y;->h:Z

    if-nez v2, :cond_2

    if-nez v9, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 482
    :cond_1
    const/4 v2, 0x0

    move v11, v2

    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/b/n/q;->w()Z

    move-result v2

    iput-boolean v2, v12, Lcom/sleepycat/b/g/ad;->h:Z

    .line 498
    :goto_1
    new-instance v13, Lcom/sleepycat/b/g/al;

    invoke-direct {v13}, Lcom/sleepycat/b/g/al;-><init>()V

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p9

    .line 499
    invoke-virtual/range {v2 .. v10}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/c/i;[BJZLcom/sleepycat/b/n/z;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/g/a/k;

    move-result-object v2

    iput-object v2, v13, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    .line 513
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    :goto_2
    iput-object v2, v13, Lcom/sleepycat/b/g/al;->e:Lcom/sleepycat/b/g/au;

    .line 518
    cmp-long v2, p4, v6

    if-eqz v2, :cond_7

    move-wide/from16 v2, p4

    :goto_3
    iput-wide v2, v13, Lcom/sleepycat/b/g/al;->b:J

    .line 520
    move-object/from16 v0, p9

    iput-object v0, v13, Lcom/sleepycat/b/g/al;->f:Lcom/sleepycat/b/g/av;

    .line 521
    move/from16 v0, p8

    iput-boolean v0, v12, Lcom/sleepycat/b/g/ad;->e:Z

    .line 522
    move-object/from16 v0, p2

    iput-object v0, v12, Lcom/sleepycat/b/g/ad;->a:Lcom/sleepycat/b/c/i;

    .line 530
    if-nez v11, :cond_3

    .line 14723
    iget v2, p0, Lcom/sleepycat/b/l/y;->g:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 530
    if-nez v2, :cond_3

    .line 14769
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 14770
    const/4 v2, 0x0

    .line 532
    :goto_4
    if-ltz v2, :cond_3

    .line 533
    iget-object v3, v13, Lcom/sleepycat/b/g/al;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v3}, Lcom/sleepycat/b/g/a/m;->d_()I

    move-result v3

    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->a()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v2}, Lcom/sleepycat/b/l/y;->b(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/l/y;->a(I)V

    .line 540
    :cond_3
    if-eqz v9, :cond_4

    cmp-long v2, p4, v6

    if-nez v2, :cond_4

    .line 15723
    iget v2, p0, Lcom/sleepycat/b/l/y;->g:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 541
    move-object/from16 v0, p7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/n/am;->a(Lcom/sleepycat/b/c/i;I)V

    .line 545
    :cond_4
    if-eqz v9, :cond_a

    .line 552
    :try_start_0
    monitor-enter v9
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    .line 16371
    :try_start_1
    iget-object v2, p1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 553
    invoke-virtual {v2, v13, v12}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V

    .line 554
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    :goto_5
    if-eqz p6, :cond_e

    .line 593
    iget-wide v4, v13, Lcom/sleepycat/b/g/al;->d:J

    sget-object v6, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    const/4 v7, 0x0

    move-object/from16 v3, p6

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/n/q;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v2

    .line 597
    sget-boolean v3, Lcom/sleepycat/b/l/y;->h:Z

    if-nez v3, :cond_d

    .line 18027
    iget-object v3, v2, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 597
    sget-object v4, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v3, v4, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    iget-wide v4, v13, Lcom/sleepycat/b/g/al;->d:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 492
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v11, v2}, Lcom/sleepycat/b/l/y;->a(ZZ)Lcom/sleepycat/b/g/af;

    move-result-object v3

    .line 493
    const-wide/16 v6, -0x1

    .line 494
    const/4 v8, 0x0

    .line 495
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 513
    :cond_6
    sget-object v2, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    goto/16 :goto_2

    .line 518
    :cond_7
    const-wide/16 v2, -0x1

    goto/16 :goto_3

    .line 14772
    :cond_8
    const/4 v2, -0x1

    goto :goto_4

    .line 554
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Lcom/sleepycat/b/n; {:try_start_3 .. :try_end_3} :catch_0

    .line 558
    :catch_0
    move-exception v2

    .line 559
    invoke-static {}, Lcom/sleepycat/b/g/m;->a()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 566
    if-eqz p6, :cond_9

    .line 567
    new-instance v3, Lcom/sleepycat/b/l/z;

    move-object/from16 v0, p6

    invoke-direct {v3, v0, v2}, Lcom/sleepycat/b/l/z;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/Exception;)V

    .line 569
    :cond_9
    throw v2

    .line 17371
    :cond_a
    :try_start_4
    iget-object v2, p1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 556
    invoke-virtual {v2, v13, v12}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V
    :try_end_4
    .catch Lcom/sleepycat/b/n; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 577
    :cond_b
    invoke-virtual {p1}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 578
    new-instance v3, Lcom/sleepycat/b/aa;

    sget-object v4, Lcom/sleepycat/b/c/ac;->l:Lcom/sleepycat/b/c/ac;

    const-string v5, "LN could not be logged"

    invoke-direct {v3, p1, v4, v5, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 583
    :cond_c
    throw v2

    .line 18063
    :cond_d
    if-eqz p7, :cond_e

    .line 18073
    move-object/from16 v0, p7

    iget-wide v4, v0, Lcom/sleepycat/b/n/am;->a:J

    .line 19065
    move-object/from16 v0, p7

    iget-boolean v3, v0, Lcom/sleepycat/b/n/am;->b:Z

    .line 19102
    move-object/from16 v0, p7

    iget-boolean v6, v0, Lcom/sleepycat/b/n/am;->f:Z

    .line 18064
    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/sleepycat/b/n/m;->a(JZZ)V

    .line 20050
    iget-object v3, v2, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    if-eqz v3, :cond_e

    .line 20051
    iget-object v2, v2, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/n/am;->a(Lcom/sleepycat/b/n/am;)V

    .line 20170
    :cond_e
    iget v2, p0, Lcom/sleepycat/b/l/y;->g:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Lcom/sleepycat/b/l/y;->g:I

    .line 602
    iget-wide v2, v13, Lcom/sleepycat/b/g/al;->d:J

    return-wide v2
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/l/y;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/sleepycat/b/l/ap;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/l/ap;-><init>(Lcom/sleepycat/b/m;)V

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/l/y;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/l/y;-><init>(Lcom/sleepycat/b/m;)V

    goto :goto_0
.end method

.method public static a(Lcom/sleepycat/b/c/ad;[B)Lcom/sleepycat/b/l/y;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/sleepycat/b/l/ap;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/l/ap;-><init>([B)V

    .line 88
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/l/y;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/l/y;-><init>([B)V

    goto :goto_0
.end method

.method public static a(Lcom/sleepycat/b/m;[B)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 907
    if-eqz p1, :cond_4

    .line 22355
    iget-boolean v2, p0, Lcom/sleepycat/b/m;->f:Z

    .line 909
    if-eqz v2, :cond_0

    .line 23323
    iget v0, p0, Lcom/sleepycat/b/m;->c:I

    move v3, v0

    .line 910
    :goto_0
    if-eqz v2, :cond_1

    .line 24291
    iget v0, p0, Lcom/sleepycat/b/m;->b:I

    .line 911
    :goto_1
    add-int v2, v3, v0

    array-length v4, p1

    if-le v2, v4, :cond_5

    .line 912
    array-length v0, p1

    if-le v3, v0, :cond_2

    move v0, v1

    :goto_2
    move v2, v0

    .line 916
    :goto_3
    if-nez v2, :cond_3

    .line 917
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    .line 922
    :goto_4
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/m;->a([B)V

    .line 24398
    iput v1, p0, Lcom/sleepycat/b/m;->d:I

    .line 24426
    iput v2, p0, Lcom/sleepycat/b/m;->e:I

    .line 930
    :goto_5
    return-void

    :cond_0
    move v3, v1

    .line 909
    goto :goto_0

    .line 910
    :cond_1
    array-length v0, p1

    goto :goto_1

    .line 912
    :cond_2
    array-length v0, p1

    sub-int/2addr v0, v3

    goto :goto_2

    .line 919
    :cond_3
    new-array v0, v2, [B

    .line 920
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 926
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/m;->a([B)V

    .line 25398
    iput v1, p0, Lcom/sleepycat/b/m;->d:I

    .line 25426
    iput v1, p0, Lcom/sleepycat/b/m;->e:I

    goto :goto_5

    :cond_5
    move v2, v0

    goto :goto_3
.end method

.method private a([BII)V
    .locals 6

    .prologue
    .line 141
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/l/y;->a([BIIII)V

    .line 142
    return-void
.end method

.method private a([BIIII)V
    .locals 1

    .prologue
    .line 132
    if-nez p3, :cond_0

    .line 133
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    .line 136
    iget-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    invoke-static {p1, p2, v0, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 2

    .prologue
    .line 771
    invoke-super {p0}, Lcom/sleepycat/b/l/ac;->a()I

    move-result v0

    .line 773
    if-gez p1, :cond_0

    .line 774
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 780
    :goto_0
    return v0

    .line 776
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static b(Lcom/sleepycat/b/m;)[B
    .locals 5

    .prologue
    .line 937
    sget-boolean v0, Lcom/sleepycat/b/l/y;->h:Z

    if-nez v0, :cond_0

    .line 26355
    iget-boolean v0, p0, Lcom/sleepycat/b/m;->f:Z

    .line 937
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26410
    :cond_0
    iget v1, p0, Lcom/sleepycat/b/m;->e:I

    .line 939
    if-nez v1, :cond_1

    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    .line 27197
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/m;->a:[B

    .line 27382
    iget v3, p0, Lcom/sleepycat/b/m;->d:I

    .line 941
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 943
    return-object v0

    .line 939
    :cond_1
    new-array v0, v1, [B

    goto :goto_0
.end method

.method public static b(Lcom/sleepycat/b/m;[B)[B
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 952
    sget-boolean v0, Lcom/sleepycat/b/l/y;->h:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28291
    :cond_0
    iget v5, p0, Lcom/sleepycat/b/m;->b:I

    .line 28323
    iget v2, p0, Lcom/sleepycat/b/m;->c:I

    .line 955
    if-eqz p1, :cond_3

    array-length v1, p1

    .line 957
    :goto_0
    add-int v0, v2, v5

    if-le v0, v1, :cond_4

    add-int v0, v2, v5

    .line 958
    :goto_1
    sub-int/2addr v0, v5

    .line 28410
    iget v3, p0, Lcom/sleepycat/b/m;->e:I

    .line 958
    add-int/2addr v0, v3

    .line 961
    if-nez v0, :cond_5

    .line 962
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    move-object v3, v0

    .line 969
    :goto_2
    if-ge v2, v1, :cond_6

    move v0, v2

    .line 970
    :goto_3
    if-lez v0, :cond_1

    .line 971
    invoke-static {p1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    :cond_1
    add-int/lit8 v0, v2, 0x0

    .line 29410
    iget v4, p0, Lcom/sleepycat/b/m;->e:I

    .line 30197
    iget-object v6, p0, Lcom/sleepycat/b/m;->a:[B

    .line 30382
    iget v7, p0, Lcom/sleepycat/b/m;->d:I

    .line 977
    invoke-static {v6, v7, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 979
    add-int/2addr v0, v4

    .line 982
    add-int v4, v2, v5

    sub-int/2addr v1, v4

    .line 983
    if-lez v1, :cond_2

    .line 984
    add-int/2addr v2, v5

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    :cond_2
    return-object v3

    :cond_3
    move v1, v4

    .line 955
    goto :goto_0

    :cond_4
    move v0, v1

    .line 957
    goto :goto_1

    .line 964
    :cond_5
    new-array v0, v0, [B

    move-object v3, v0

    goto :goto_2

    :cond_6
    move v0, v1

    .line 969
    goto :goto_3
.end method


# virtual methods
.method public final S()Lcom/sleepycat/b/g/af;
    .locals 2

    .prologue
    .line 657
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/l/y;->a(ZZ)Lcom/sleepycat/b/g/af;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/y;->b(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/am;Lcom/sleepycat/b/g/av;)J
    .locals 10

    .prologue
    .line 369
    invoke-virtual {p2}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10696
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    move-wide v2, p4

    .line 10706
    :goto_0
    if-eqz p6, :cond_2

    .line 10707
    sget-object v4, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    const/4 v5, 0x0

    move-object/from16 v1, p6

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/q;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 10710
    sget-boolean v1, Lcom/sleepycat/b/l/y;->h:Z

    if-nez v1, :cond_2

    .line 12027
    iget-object v0, v0, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 10710
    sget-object v1, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 11396
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->ac:Lcom/sleepycat/b/c/as;

    .line 10699
    invoke-virtual {v0}, Lcom/sleepycat/b/c/as;->a()J

    move-result-wide v2

    goto :goto_0

    .line 372
    :cond_1
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/am;ZLcom/sleepycat/b/g/av;)J

    move-result-wide v2

    :cond_2
    return-wide v2
.end method

.method public final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJZLcom/sleepycat/b/g/av;)J
    .locals 10

    .prologue
    .line 411
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/am;ZLcom/sleepycat/b/g/av;)J

    move-result-wide v0

    return-wide v0
.end method

.method a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/c/i;[BJZLcom/sleepycat/b/n/z;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/g/a/k;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/g/af;",
            "Lcom/sleepycat/b/c/i;",
            "[BJZ",
            "Lcom/sleepycat/b/n/z;",
            "Lcom/sleepycat/b/g/av;",
            ")",
            "Lcom/sleepycat/b/g/a/k",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 635
    new-instance v1, Lcom/sleepycat/b/g/a/k;

    .line 20496
    iget-object v4, p2, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move-object v2, p1

    move-object v3, p0

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 635
    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/b/g/a/k;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[BJZLcom/sleepycat/b/n/z;)V

    return-object v1
.end method

.method public a(ZZ)Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    sget-boolean v0, Lcom/sleepycat/b/l/y;->h:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 664
    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/sleepycat/b/g/af;->E:Lcom/sleepycat/b/g/af;

    .line 675
    :goto_0
    return-object v0

    .line 664
    :cond_1
    sget-object v0, Lcom/sleepycat/b/g/af;->F:Lcom/sleepycat/b/g/af;

    goto :goto_0

    .line 669
    :cond_2
    if-eqz p1, :cond_4

    .line 670
    if-eqz p2, :cond_3

    sget-object v0, Lcom/sleepycat/b/g/af;->G:Lcom/sleepycat/b/g/af;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sleepycat/b/g/af;->H:Lcom/sleepycat/b/g/af;

    goto :goto_0

    .line 675
    :cond_4
    if-eqz p2, :cond_5

    sget-object v0, Lcom/sleepycat/b/g/af;->I:Lcom/sleepycat/b/g/af;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/sleepycat/b/g/af;->J:Lcom/sleepycat/b/g/af;

    goto :goto_0
.end method

.method public a(IZ)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    if-eqz p2, :cond_0

    .line 8025
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :cond_0
    add-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    invoke-super {p0, v1, v2}, Lcom/sleepycat/b/l/ac;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    iget-object v1, p0, Lcom/sleepycat/b/l/y;->f:[B

    if-eqz v1, :cond_1

    .line 336
    add-int/lit8 v1, p1, 0x2

    .line 9025
    const-string v2, "                                                                                                                                "

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const-string v1, "<data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    sget-object v1, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    iget-object v2, p0, Lcom/sleepycat/b/l/y;->f:[B

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/l/x;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, "</data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :cond_1
    if-eqz p2, :cond_2

    .line 10025
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 731
    iget v0, p0, Lcom/sleepycat/b/l/y;->g:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/b/l/y;->g:I

    .line 732
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/ad;Z)V
    .locals 2

    .prologue
    .line 649
    .line 20692
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 21043
    iget-object v1, v0, Lcom/sleepycat/b/d/b;->g:Lcom/sleepycat/b/p/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/d;->g()V

    .line 21044
    if-eqz p2, :cond_0

    .line 21045
    iget-object v0, v0, Lcom/sleepycat/b/d/b;->j:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 650
    :cond_0
    return-void
.end method

.method final a(Lcom/sleepycat/b/c/al;)V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method final a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/a/s;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method final a(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/l/j;)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public a(Lcom/sleepycat/b/l/a;)V
    .locals 0

    .prologue
    .line 882
    return-void
.end method

.method public final a(Lcom/sleepycat/b/m;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 893
    sget-boolean v0, Lcom/sleepycat/b/l/y;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    array-length v0, v0

    .line 895
    new-array v1, v0, [B

    .line 896
    iget-object v2, p0, Lcom/sleepycat/b/l/y;->f:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    invoke-virtual {p1, v1}, Lcom/sleepycat/b/m;->a([B)V

    .line 898
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/ac;->a(Ljava/lang/StringBuilder;Z)V

    .line 850
    iget-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    if-eqz v0, :cond_0

    .line 851
    const-string v0, "<data>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    if-eqz p2, :cond_1

    .line 853
    sget-object v0, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    iget-object v1, p0, Lcom/sleepycat/b/l/y;->f:[B

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/x;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    :goto_0
    const-string v0, "</data>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/y;->b(Ljava/lang/StringBuilder;Z)V

    .line 862
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    return-void

    .line 855
    :cond_1
    const-string v0, "hidden"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public a(Ljava/lang/StringBuilder;[B)V
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 788
    invoke-super {p0, p1}, Lcom/sleepycat/b/l/ac;->a(Ljava/nio/ByteBuffer;)V

    .line 790
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 796
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 794
    iget-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;[B)V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 804
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/l/ac;->a(Ljava/nio/ByteBuffer;I)V

    .line 806
    const/16 v0, 0x8

    if-ge p2, v0, :cond_0

    .line 808
    if-ge p2, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    .line 811
    :cond_0
    if-ge p2, v3, :cond_3

    .line 812
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->h(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 813
    if-eqz v0, :cond_1

    .line 814
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    .line 822
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 808
    goto :goto_0

    .line 817
    :cond_3
    invoke-static {p1, v2}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    .line 818
    if-ltz v0, :cond_1

    .line 819
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    goto :goto_1
.end method

.method public a(Lcom/sleepycat/b/g/at;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 829
    instance-of v1, p1, Lcom/sleepycat/b/l/y;

    if-nez v1, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v0

    .line 833
    :cond_1
    check-cast p1, Lcom/sleepycat/b/l/y;

    .line 21145
    iget-object v1, p0, Lcom/sleepycat/b/l/y;->f:[B

    .line 22145
    iget-object v2, p1, Lcom/sleepycat/b/l/y;->f:[B

    .line 835
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(J)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public b(Ljava/lang/StringBuilder;Z)V
    .locals 0

    .prologue
    .line 875
    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 755
    invoke-static {p0, p1, p2}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 756
    return-void
.end method

.method c(J)Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    const-string v0, "<ln>"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    const-string v0, "</ln>"

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    .line 159
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sleepycat/b/l/y;->f:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/sleepycat/b/l/y;->g:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/sleepycat/b/l/y;->g:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/l/y;->g:I

    .line 167
    return-void
.end method

.method public m()J
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 7101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 183
    return-wide v0
.end method

.method n()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public o()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method final t()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public final u_()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public v_()J
    .locals 2

    .prologue
    .line 289
    sget v0, Lcom/sleepycat/b/c/ao;->t:I

    .line 290
    iget-object v1, p0, Lcom/sleepycat/b/l/y;->f:[B

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/sleepycat/b/l/y;->f:[B

    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_0
    int-to-long v0, v0

    return-wide v0
.end method
