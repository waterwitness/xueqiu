.class public Lcom/sleepycat/b/a/h;
.super Lcom/sleepycat/b/p/h;
.source "FileProcessor.java"


# static fields
.field static final synthetic f:Z


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:J

.field public a:Lcom/sleepycat/b/c/ad;

.field public b:Lcom/sleepycat/b/a/c;

.field public c:Lcom/sleepycat/b/a/k;

.field public d:Lcom/sleepycat/b/a/ad;

.field public e:Lcom/sleepycat/b/a/aa;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/sleepycat/b/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/h;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;Lcom/sleepycat/b/a/ad;Lcom/sleepycat/b/a/aa;Lcom/sleepycat/b/a/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sleepycat/b/p/h;-><init>(JLjava/lang/String;Lcom/sleepycat/b/c/ad;)V

    .line 92
    iput v2, p0, Lcom/sleepycat/b/a/h;->h:I

    .line 93
    iput v2, p0, Lcom/sleepycat/b/a/h;->i:I

    .line 94
    iput v2, p0, Lcom/sleepycat/b/a/h;->j:I

    .line 95
    iput v2, p0, Lcom/sleepycat/b/a/h;->k:I

    .line 96
    iput v2, p0, Lcom/sleepycat/b/a/h;->t:I

    .line 97
    iput v2, p0, Lcom/sleepycat/b/a/h;->u:I

    .line 98
    iput v2, p0, Lcom/sleepycat/b/a/h;->v:I

    .line 99
    iput v2, p0, Lcom/sleepycat/b/a/h;->w:I

    .line 100
    iput v2, p0, Lcom/sleepycat/b/a/h;->x:I

    .line 101
    iput v2, p0, Lcom/sleepycat/b/a/h;->y:I

    .line 102
    iput v2, p0, Lcom/sleepycat/b/a/h;->z:I

    .line 103
    iput v2, p0, Lcom/sleepycat/b/a/h;->A:I

    .line 104
    iput v2, p0, Lcom/sleepycat/b/a/h;->B:I

    .line 105
    iput v2, p0, Lcom/sleepycat/b/a/h;->C:I

    .line 106
    iput v2, p0, Lcom/sleepycat/b/a/h;->D:I

    .line 117
    iput-object p2, p0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 118
    iput-object p3, p0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    .line 119
    iput-object p6, p0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    .line 120
    iput-object p4, p0, Lcom/sleepycat/b/a/h;->d:Lcom/sleepycat/b/a/ad;

    .line 121
    iput-object p5, p0, Lcom/sleepycat/b/a/h;->e:Lcom/sleepycat/b/a/aa;

    .line 122
    return-void
.end method

.method private static a(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;J)Lcom/sleepycat/b/l/j;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1273
    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35429
    new-instance v0, Lcom/sleepycat/b/a/j;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sleepycat/b/a/j;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;J)V

    .line 35430
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    .line 1275
    if-nez v0, :cond_0

    move-object v0, v6

    .line 1371
    :cond_0
    :goto_0
    return-object v0

    .line 1289
    :cond_1
    sget-object v0, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    invoke-virtual {p2, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 1292
    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    .line 35610
    iget v4, p2, Lcom/sleepycat/b/l/j;->j:I

    .line 1292
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/a;ILjava/util/List;)Lcom/sleepycat/b/l/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1299
    :try_start_1
    iget-boolean v0, v1, Lcom/sleepycat/b/l/ae;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_3

    .line 1373
    if-eqz v1, :cond_2

    iget-boolean v0, v1, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v0, :cond_2

    .line 1374
    iget-object v0, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    :cond_2
    move-object v0, v6

    .line 1300
    goto :goto_0

    .line 1304
    :cond_3
    :try_start_2
    iget-object v0, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v2, v1, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/j;->k(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    .line 1310
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 1373
    if-eqz v1, :cond_4

    iget-boolean v0, v1, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v0, :cond_4

    .line 1374
    iget-object v0, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    :cond_4
    move-object v0, v6

    .line 1311
    goto :goto_0

    .line 1321
    :cond_5
    cmp-long v0, v2, p3

    if-nez v0, :cond_7

    .line 1322
    :try_start_3
    iget-object v0, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v2, v1, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 1323
    if-nez v0, :cond_6

    .line 1325
    invoke-virtual {p2, p1, p3, p4}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/c/i;J)V

    .line 1326
    iget-object v0, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v2, v1, Lcom/sleepycat/b/l/ae;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;[B)V

    move-object v0, p2

    .line 1329
    :cond_6
    sget-object v2, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1373
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v2, :cond_0

    .line 1374
    iget-object v1, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    :goto_1
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_0

    .line 1344
    :cond_7
    :try_start_4
    invoke-virtual {p2}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1350
    iget-object v0, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v2, v1, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/j;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 36468
    iget-wide v2, v0, Lcom/sleepycat/b/l/j;->m:J

    .line 1356
    :cond_8
    invoke-static {v2, v3, p3, p4}, Lcom/sleepycat/b/p/j;->b(JJ)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    .line 1358
    if-lez v0, :cond_a

    .line 1373
    if-eqz v1, :cond_9

    iget-boolean v0, v1, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v0, :cond_9

    .line 1374
    iget-object v0, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    :cond_9
    move-object v0, v6

    .line 1360
    goto/16 :goto_0

    .line 1368
    :cond_a
    :try_start_5
    iget-object v0, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v2, v1, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/j;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 1370
    sget-object v2, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1373
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v2, :cond_0

    .line 1374
    iget-object v1, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    goto :goto_1

    .line 1373
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_b

    iget-boolean v1, v6, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v1, :cond_b

    .line 1374
    iget-object v1, v6, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->C()V

    .line 1373
    :cond_b
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2
.end method

.method private a(Lcom/sleepycat/b/a/r;JJLcom/sleepycat/b/l/a;I)V
    .locals 22

    .prologue
    .line 922
    .line 30034
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sleepycat/b/a/r;->a:Lcom/sleepycat/b/l/y;

    move-object/from16 v18, v0

    .line 30042
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sleepycat/b/a/r;->c:[B

    move-object/from16 v19, v0

    .line 30717
    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 926
    invoke-virtual {v10}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v20

    .line 929
    const/4 v11, 0x0

    .line 930
    const/16 v16, 0x0

    .line 931
    const/4 v4, 0x0

    .line 932
    const/16 v21, 0x0

    .line 934
    const/4 v5, 0x0

    .line 31485
    :try_start_0
    iget-object v6, v10, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 937
    sget-boolean v7, Lcom/sleepycat/b/a/h;->f:Z

    if-nez v7, :cond_1

    if-nez v6, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v5, :cond_0

    .line 33654
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1143
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    const-string v6, "CleanLN:"

    move-object/from16 v7, v18

    move-wide/from16 v8, p2

    move/from16 v10, v21

    move/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    .line 1120
    throw v4

    .line 967
    :cond_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v6

    if-eqz v6, :cond_2

    cmp-long v6, p4, p2

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->g:I

    const/4 v7, 0x2

    if-gt v6, v7, :cond_2

    .line 978
    const/4 v11, 0x1

    .line 979
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->z:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sleepycat/b/a/h;->z:I

    .line 980
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/b/l/a;->m(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v4

    move/from16 v17, v11

    .line 1036
    :goto_1
    if-nez v17, :cond_10

    if-nez v6, :cond_10

    .line 1037
    :try_start_2
    sget-boolean v4, Lcom/sleepycat/b/a/h;->f:Z

    if-nez v4, :cond_7

    cmp-long v4, p4, p2

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1120
    :catchall_1
    move-exception v4

    move/from16 v11, v17

    goto :goto_0

    .line 981
    :cond_2
    const-wide/16 v6, -0x1

    cmp-long v6, p4, v6

    if-nez v6, :cond_3

    .line 987
    const/4 v11, 0x1

    move v6, v4

    move/from16 v17, v11

    goto :goto_1

    .line 988
    :cond_3
    cmp-long v6, p4, p2

    if-eqz v6, :cond_4

    if-eqz v20, :cond_4

    .line 998
    :try_start_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->z:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sleepycat/b/a/h;->z:I

    .line 999
    const/4 v11, 0x1

    move v6, v4

    move/from16 v17, v11

    goto :goto_1

    .line 1000
    :cond_4
    cmp-long v6, p4, p2

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-boolean v6, v6, Lcom/sleepycat/b/a/c;->P:Z

    if-nez v6, :cond_11

    :cond_5
    if-nez v20, :cond_11

    .line 1012
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;

    move-result-object v5

    .line 32279
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sleepycat/b/n/q;->r:Z

    .line 1015
    sget-object v8, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    const/4 v9, 0x0

    move-wide/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Lcom/sleepycat/b/n/a;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v6

    .line 33027
    iget-object v6, v6, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 1017
    sget-object v7, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v6, v7, :cond_6

    .line 1023
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->A:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->A:I

    .line 1024
    const/4 v4, 0x1

    move v6, v4

    move/from16 v17, v11

    goto :goto_1

    .line 1025
    :cond_6
    cmp-long v6, p4, p2

    if-eqz v6, :cond_11

    .line 1027
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->z:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sleepycat/b/a/h;->z:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1028
    const/4 v11, 0x1

    move v6, v4

    move/from16 v17, v11

    goto :goto_1

    .line 1067
    :cond_7
    :try_start_4
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1068
    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/i;J)V

    .line 1070
    move-object/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;[B)V

    .line 1073
    :cond_8
    if-eqz v20, :cond_a

    .line 1074
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/y;

    invoke-virtual {v4}, Lcom/sleepycat/b/l/y;->l()V

    .line 1075
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/a;->a(Z)V

    .line 1076
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->C:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->C:I

    .line 1114
    :goto_2
    sget-object v4, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/a;->d(Lcom/sleepycat/b/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1116
    const/4 v12, 0x1

    .line 1118
    :goto_3
    const/4 v4, 0x1

    .line 1120
    if-eqz v5, :cond_9

    .line 33654
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1130
    :cond_9
    if-eqz v6, :cond_f

    .line 1131
    sget-boolean v5, Lcom/sleepycat/b/a/h;->f:Z

    if-nez v5, :cond_e

    if-eqz v20, :cond_e

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1077
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-boolean v4, v4, Lcom/sleepycat/b/a/c;->P:Z

    if-eqz v4, :cond_b

    .line 1078
    const/4 v4, 0x1

    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 1079
    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/a;->a(Z)V

    .line 1080
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->C:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->C:I

    goto :goto_2

    .line 1082
    :cond_b
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/b/l/y;

    .line 1083
    sget-boolean v4, Lcom/sleepycat/b/a/h;->f:Z

    if-nez v4, :cond_c

    if-nez v8, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1084
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v11

    const/4 v14, 0x1

    invoke-static {v8}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/l/y;)Lcom/sleepycat/b/g/av;

    move-result-object v15

    move-wide/from16 v12, p2

    invoke-virtual/range {v8 .. v15}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJZLcom/sleepycat/b/g/av;)J

    move-result-wide v13

    .line 1088
    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v0, v1, v13, v14}, Lcom/sleepycat/b/l/a;->c(IJ)V

    .line 1090
    move-object/from16 v0, v18

    if-ne v0, v8, :cond_d

    .line 1091
    invoke-virtual/range {p6 .. p7}, Lcom/sleepycat/b/l/a;->e(I)V

    :cond_d
    move-wide/from16 v11, p2

    move-object v15, v5

    .line 1094
    invoke-static/range {v10 .. v15}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/i;JJLcom/sleepycat/b/n/q;)V

    .line 1096
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->B:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->B:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 1140
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    .line 34496
    iget-object v9, v10, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move-wide/from16 v6, p4

    move-object/from16 v8, v18

    move-object/from16 v10, v19

    .line 1140
    invoke-virtual/range {v5 .. v10}, Lcom/sleepycat/b/a/k;->a(JLcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)Z

    .line 1143
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    const-string v6, "CleanLN:"

    move-object/from16 v7, v18

    move-wide/from16 v8, p2

    move v10, v4

    move/from16 v11, v17

    invoke-virtual/range {v5 .. v12}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    .line 1145
    return-void

    :cond_10
    move/from16 v12, v16

    goto/16 :goto_3

    :cond_11
    move v6, v4

    move/from16 v17, v11

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Long;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/a/i;Ljava/util/Map;Ljava/util/Set;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/l/al;",
            "Lcom/sleepycat/b/a/i;",
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 788
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/a/h;->y:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->y:I

    .line 26504
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/a/i;->a:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 792
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/a/i;->a(Ljava/lang/Long;)Lcom/sleepycat/b/a/r;

    move-result-object v12

    .line 27034
    iget-object v0, v12, Lcom/sleepycat/b/a/r;->a:Lcom/sleepycat/b/l/y;

    move-object/from16 v19, v0

    .line 27042
    iget-object v4, v12, Lcom/sleepycat/b/a/r;->c:[B

    .line 797
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v20

    .line 28038
    iget-object v2, v12, Lcom/sleepycat/b/a/r;->b:Lcom/sleepycat/b/c/h;

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 28379
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 812
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-wide v6, v5, Lcom/sleepycat/b/a/c;->E:J

    move-object/from16 v0, p4

    invoke-virtual {v3, v2, v6, v7, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;

    move-result-object v3

    .line 814
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 815
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/a/h;->x:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sleepycat/b/a/h;->x:I

    .line 816
    if-eqz p5, :cond_1

    .line 817
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_1
    :goto_0
    return-void

    .line 823
    :cond_2
    const/4 v11, 0x1

    .line 824
    const/16 v22, 0x0

    .line 825
    const/4 v10, 0x0

    .line 827
    const/4 v8, 0x0

    .line 28485
    :try_start_0
    iget-object v2, v3, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 830
    sget-boolean v3, Lcom/sleepycat/b/a/h;->f:Z

    if-nez v3, :cond_5

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :catchall_0
    move-exception v2

    move-object v3, v8

    move v4, v11

    move v8, v10

    :goto_1
    if-eqz v3, :cond_3

    .line 889
    invoke-virtual {v3}, Lcom/sleepycat/b/l/a;->C()V

    .line 892
    :cond_3
    if-eqz v4, :cond_4

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    const-string v4, "CleanLN:"

    const/4 v10, 0x0

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    move/from16 v9, v22

    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    .line 888
    :cond_4
    throw v2

    .line 833
    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_1
    sget-object v7, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/al;[BZZLcom/sleepycat/b/a;)Z

    move-result v2

    .line 836
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    :try_start_2
    move-object/from16 v0, p2

    iget v9, v0, Lcom/sleepycat/b/l/al;->b:I

    .line 839
    if-nez v2, :cond_7

    .line 841
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/a/h;->z:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->z:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 842
    const/4 v9, 0x1

    .line 843
    const/4 v2, 0x1

    .line 888
    if-eqz v8, :cond_6

    .line 889
    invoke-virtual {v8}, Lcom/sleepycat/b/l/a;->C()V

    .line 893
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    const-string v4, "CleanLN:"

    :goto_2
    const/4 v10, 0x0

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    move v8, v2

    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    goto :goto_0

    .line 851
    :cond_7
    :try_start_3
    invoke-virtual {v8, v9}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 852
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/a/h;->z:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->z:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 853
    const/4 v9, 0x1

    .line 854
    const/4 v2, 0x1

    .line 888
    if-eqz v8, :cond_8

    .line 889
    invoke-virtual {v8}, Lcom/sleepycat/b/l/a;->C()V

    .line 893
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    const-string v4, "CleanLN:"

    goto :goto_2

    .line 859
    :cond_9
    const/16 v18, 0x0

    .line 860
    :try_start_4
    invoke-virtual {v8, v9}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v6

    move-object/from16 v2, p0

    move-object v3, v12

    move-wide/from16 v4, v20

    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/b/a/h;->a(Lcom/sleepycat/b/a/r;JJLcom/sleepycat/b/l/a;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 861
    const/4 v3, 0x1

    .line 867
    const/16 v17, 0x0

    .line 29345
    :goto_3
    :try_start_5
    iget v2, v8, Lcom/sleepycat/b/l/j;->f:I

    .line 867
    move/from16 v0, v17

    if-ge v0, v2, :cond_b

    .line 868
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v12

    .line 869
    move/from16 v0, v17

    if-eq v0, v9, :cond_a

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v2

    if-nez v2, :cond_a

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {v12, v13}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_a

    .line 874
    invoke-static {v12, v13}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 875
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/a/i;->a(Ljava/lang/Long;)Lcom/sleepycat/b/a/r;

    move-result-object v11

    .line 878
    if-eqz v11, :cond_a

    .line 879
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/a/h;->D:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->D:I

    .line 880
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/a/h;->y:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->y:I

    move-object/from16 v10, p0

    move-wide v14, v12

    move-object/from16 v16, v8

    .line 881
    invoke-direct/range {v10 .. v17}, Lcom/sleepycat/b/a/h;->a(Lcom/sleepycat/b/a/r;JJLcom/sleepycat/b/l/a;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 867
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 888
    :cond_b
    if-eqz v8, :cond_1

    .line 889
    invoke-virtual {v8}, Lcom/sleepycat/b/l/a;->C()V

    goto/16 :goto_0

    .line 888
    :catchall_1
    move-exception v2

    move-object v3, v8

    move v4, v11

    move v8, v10

    goto/16 :goto_1

    :catchall_2
    move-exception v2

    move-object v3, v8

    move/from16 v4, v18

    move v8, v10

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    move/from16 v4, v18

    move/from16 v23, v3

    move-object v3, v8

    move/from16 v8, v23

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Long;Lcom/sleepycat/b/a/o;Lcom/sleepycat/b/a/q;Z)Z
    .locals 34

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->d:Lcom/sleepycat/b/a/ad;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/a/ad;->b(Ljava/lang/Long;)Lcom/sleepycat/b/a/w;

    move-result-object v5

    .line 444
    invoke-virtual {v5}, Lcom/sleepycat/b/a/w;->c()Lcom/sleepycat/b/a/x;

    move-result-object v23

    .line 445
    const-wide/16 v18, -0x1

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget v7, v4, Lcom/sleepycat/b/a/c;->F:I

    .line 449
    if-eqz p4, :cond_3

    const/4 v4, 0x0

    .line 457
    :goto_0
    mul-int/lit8 v6, v7, 0x2

    invoke-virtual {v5}, Lcom/sleepycat/b/a/w;->a()I

    move-result v5

    add-int/2addr v5, v6

    add-int v24, v5, v4

    .line 460
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 8508
    iget-object v0, v5, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    move-object/from16 v25, v0

    .line 461
    move/from16 v0, v24

    int-to-long v8, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sleepycat/b/c/ad;->b(Z)V

    .line 473
    if-eqz p4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v22, v4

    .line 481
    :goto_1
    if-eqz p4, :cond_5

    const/4 v4, 0x0

    move-object/from16 v17, v4

    .line 489
    :goto_2
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 9379
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    move-object/from16 v27, v0

    .line 494
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 497
    new-instance v5, Lcom/sleepycat/b/g/e;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v4, 0x0

    invoke-static {v8, v9, v4}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v8

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v5 .. v12}, Lcom/sleepycat/b/g/e;-><init>(Lcom/sleepycat/b/c/ad;IJLjava/lang/Long;Lcom/sleepycat/b/a/o;Lcom/sleepycat/b/a/q;)V

    .line 10190
    const/4 v4, 0x1

    iput-boolean v4, v5, Lcom/sleepycat/b/g/s;->q:Z

    .line 503
    :try_start_0
    new-instance v8, Lcom/sleepycat/b/l/al;

    invoke-direct {v8}, Lcom/sleepycat/b/l/al;-><init>()V

    .line 505
    const/4 v6, 0x0

    .line 506
    const/4 v4, 0x0

    move/from16 v21, v6

    move-wide/from16 v10, v18

    .line 507
    :goto_3
    invoke-virtual {v5}, Lcom/sleepycat/b/g/e;->f()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 508
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v6, v6, Lcom/sleepycat/b/a/c;->z:Lcom/sleepycat/b/p/z;

    invoke-virtual {v6}, Lcom/sleepycat/b/p/z;->f()V

    .line 509
    add-int/lit8 v20, v4, 0x1

    .line 510
    invoke-virtual {v5}, Lcom/sleepycat/b/g/e;->c()J

    move-result-wide v30

    .line 511
    invoke-static/range {v30 .. v31}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v32

    .line 10223
    iget-byte v4, v5, Lcom/sleepycat/b/g/e;->b:B

    if-nez v4, :cond_6

    const/4 v4, 0x1

    move v15, v4

    .line 11209
    :goto_4
    iget-byte v4, v5, Lcom/sleepycat/b/g/e;->b:B

    const/4 v6, 0x1

    if-ne v4, v6, :cond_7

    const/4 v4, 0x1

    move v14, v4

    .line 11216
    :goto_5
    iget-byte v4, v5, Lcom/sleepycat/b/g/e;->b:B

    const/4 v6, 0x2

    if-ne v4, v6, :cond_8

    const/4 v4, 0x1

    move v13, v4

    .line 11230
    :goto_6
    iget-byte v4, v5, Lcom/sleepycat/b/g/e;->b:B

    const/4 v6, 0x3

    if-ne v4, v6, :cond_9

    const/4 v4, 0x1

    move v12, v4

    .line 516
    :goto_7
    const/4 v6, 0x0

    .line 11269
    iget-byte v4, v5, Lcom/sleepycat/b/g/e;->b:B

    if-nez v4, :cond_a

    .line 11270
    iget-object v4, v5, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v4, Lcom/sleepycat/b/g/a/k;

    .line 11552
    iget-object v4, v4, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    move-object v7, v4

    .line 520
    :goto_8
    const/4 v4, 0x0

    .line 521
    if-eqz v7, :cond_31

    .line 522
    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget v4, v4, Lcom/sleepycat/b/a/c;->Q:I

    rem-int v4, v20, v4

    if-nez v4, :cond_0

    .line 531
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 532
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->clear()V

    .line 535
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-wide v0, v4, Lcom/sleepycat/b/a/c;->E:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    move-object/from16 v3, v26

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;

    move-result-object v4

    .line 543
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v9

    if-eqz v9, :cond_30

    .line 544
    :cond_1
    const/4 v6, 0x1

    move-object v9, v4

    .line 12234
    :goto_9
    iget-byte v4, v5, Lcom/sleepycat/b/g/e;->b:B

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v4, v0, :cond_d

    const/4 v4, 0x1

    .line 549
    :goto_a
    if-eqz v4, :cond_2

    .line 12262
    iget-object v4, v5, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v4}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/g/l;

    check-cast v4, Lcom/sleepycat/b/g/l;

    .line 13050
    iget v4, v4, Lcom/sleepycat/b/g/l;->c:I

    .line 550
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->g:I

    .line 554
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 13585
    iget-boolean v4, v4, Lcom/sleepycat/b/c/ad;->b:Z
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 554
    if-eqz v4, :cond_e

    .line 742
    rsub-int/lit8 v4, v24, 0x0

    int-to-long v4, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 745
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 555
    const/4 v4, 0x0

    .line 754
    :goto_b
    return v4

    .line 449
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget v4, v4, Lcom/sleepycat/b/a/c;->G:I

    goto/16 :goto_0

    .line 473
    :cond_4
    new-instance v5, Lcom/sleepycat/b/a/i;

    invoke-direct {v5, v4}, Lcom/sleepycat/b/a/i;-><init>(I)V

    move-object/from16 v22, v5

    goto/16 :goto_1

    .line 481
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v17, v4

    goto/16 :goto_2

    .line 10223
    :cond_6
    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_4

    .line 11209
    :cond_7
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_5

    .line 11216
    :cond_8
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_6

    .line 11230
    :cond_9
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_7

    .line 11271
    :cond_a
    :try_start_1
    iget-byte v4, v5, Lcom/sleepycat/b/g/e;->b:B

    const/4 v7, 0x1

    if-ne v4, v7, :cond_b

    .line 11272
    iget-object v4, v5, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v4, Lcom/sleepycat/b/g/a/j;

    .line 12204
    iget-object v4, v4, Lcom/sleepycat/b/g/a/j;->d:Lcom/sleepycat/b/c/h;

    move-object v7, v4

    .line 11272
    goto/16 :goto_8

    .line 11273
    :cond_b
    iget-byte v4, v5, Lcom/sleepycat/b/g/e;->b:B

    const/4 v7, 0x2

    if-ne v4, v7, :cond_c

    .line 11274
    iget-object v4, v5, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v4, Lcom/sleepycat/b/g/a/b;

    invoke-virtual {v4}, Lcom/sleepycat/b/g/a/b;->a()Lcom/sleepycat/b/c/h;

    move-result-object v4

    move-object v7, v4

    goto/16 :goto_8

    .line 11276
    :cond_c
    const/4 v4, 0x0

    move-object v7, v4

    goto/16 :goto_8

    .line 12234
    :cond_d
    const/4 v4, 0x0

    goto :goto_a

    .line 13831
    :cond_e
    iget-object v4, v5, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 14252
    iget v0, v4, Lcom/sleepycat/b/g/u;->h:I

    move/from16 v16, v0

    .line 14253
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/sleepycat/b/g/u;->h:I

    .line 560
    if-lez v16, :cond_10

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 15139
    iget v0, v4, Lcom/sleepycat/b/c/ad;->M:I

    move/from16 v18, v0

    .line 15140
    if-lez v18, :cond_10

    .line 15141
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->Q:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_1
    .catch Lcom/sleepycat/b/g/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15142
    :try_start_2
    iget v0, v4, Lcom/sleepycat/b/c/ad;->O:I

    move/from16 v29, v0

    add-int v16, v16, v29

    move/from16 v0, v16

    iput v0, v4, Lcom/sleepycat/b/c/ad;->O:I

    .line 15143
    iget v0, v4, Lcom/sleepycat/b/c/ad;->O:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    .line 15144
    iget v0, v4, Lcom/sleepycat/b/c/ad;->L:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Lcom/sleepycat/b/c/ad;->L:I

    .line 15146
    iget v0, v4, Lcom/sleepycat/b/c/ad;->O:I

    move/from16 v16, v0

    sub-int v16, v16, v18

    move/from16 v0, v16

    iput v0, v4, Lcom/sleepycat/b/c/ad;->O:I

    .line 15147
    sget-boolean v16, Lcom/sleepycat/b/c/ad;->ai:Z

    if-nez v16, :cond_f

    iget v4, v4, Lcom/sleepycat/b/c/ad;->O:I

    if-gez v4, :cond_f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 15149
    :catchall_0
    move-exception v4

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Lcom/sleepycat/b/g/c; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 737
    :catch_0
    move-exception v4

    .line 738
    :try_start_4
    new-instance v5, Lcom/sleepycat/b/aa;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    sget-object v7, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    invoke-direct {v5, v6, v7, v4}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 742
    :catchall_1
    move-exception v4

    rsub-int/lit8 v5, v24, 0x0

    int-to-long v6, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 745
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 742
    throw v4

    .line 15149
    :cond_f
    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 565
    :cond_10
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v4}, Lcom/sleepycat/b/c/ad;->g()V

    move-wide/from16 v18, v10

    .line 568
    :goto_c
    cmp-long v4, v18, v32

    if-gez v4, :cond_11

    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/b/a/x;->a()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 569
    invoke-virtual/range {v23 .. v23}, Lcom/sleepycat/b/a/x;->b()J

    move-result-wide v10

    move-wide/from16 v18, v10

    goto :goto_c

    .line 571
    :cond_11
    cmp-long v4, v18, v32

    if-nez v4, :cond_12

    .line 572
    const/4 v6, 0x1

    .line 576
    :cond_12
    if-nez v6, :cond_13

    if-nez v15, :cond_13

    if-nez v14, :cond_13

    if-nez v13, :cond_13

    if-nez v12, :cond_13

    .line 582
    const/4 v6, 0x1

    .line 594
    :cond_13
    if-nez v6, :cond_14

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->g:I

    const/16 v10, 0x8

    if-ge v4, v10, :cond_14

    .line 597
    const/4 v6, 0x1

    .line 606
    :cond_14
    if-nez v6, :cond_15

    if-eqz v14, :cond_15

    invoke-virtual {v9}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->g:I

    const/16 v10, 0x8

    if-ge v4, v10, :cond_15

    .line 610
    const/4 v6, 0x1

    .line 622
    :cond_15
    if-nez v6, :cond_2f

    if-eqz v15, :cond_2f

    .line 15247
    iget-object v4, v5, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v4, Lcom/sleepycat/b/g/a/k;

    invoke-virtual {v4}, Lcom/sleepycat/b/g/a/k;->f()Z

    move-result v4

    .line 622
    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->g:I

    const/4 v10, 0x2

    if-le v4, v10, :cond_2f

    .line 627
    const/4 v4, 0x1

    .line 631
    :goto_d
    if-eqz v4, :cond_1a

    .line 633
    if-nez p4, :cond_16

    .line 634
    if-eqz v15, :cond_18

    .line 635
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->x:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->x:I

    .line 643
    :cond_16
    :goto_e
    if-eqz v17, :cond_17

    if-eqz v7, :cond_17

    .line 644
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_17
    invoke-virtual {v5}, Lcom/sleepycat/b/g/e;->b()V

    move/from16 v4, v20

    move-wide/from16 v10, v18

    .line 648
    goto/16 :goto_3

    .line 636
    :cond_18
    if-eqz v13, :cond_19

    .line 637
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->t:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->t:I

    goto :goto_e

    .line 638
    :cond_19
    if-eqz v14, :cond_16

    .line 639
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->h:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->h:I

    goto :goto_e

    .line 655
    :cond_1a
    if-nez p4, :cond_2e

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sleepycat/b/c/ad;->b(Z)V

    .line 665
    if-eqz v15, :cond_1e

    .line 16243
    iget-object v4, v5, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v4, Lcom/sleepycat/b/g/a/k;

    .line 668
    invoke-virtual {v4, v9}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V

    .line 669
    invoke-virtual {v4}, Lcom/sleepycat/b/g/a/k;->j()Lcom/sleepycat/b/l/y;

    move-result-object v6

    .line 670
    invoke-virtual {v4}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v4

    .line 672
    invoke-static/range {v30 .. v31}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/sleepycat/b/a/r;

    invoke-direct {v10, v6, v7, v4}, Lcom/sleepycat/b/a/r;-><init>(Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)V

    .line 16508
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/sleepycat/b/a/i;->a:Ljava/util/SortedMap;

    invoke-interface {v4, v9, v10}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16509
    move-object/from16 v0, v22

    iget v4, v0, Lcom/sleepycat/b/a/i;->c:I

    invoke-virtual {v10}, Lcom/sleepycat/b/a/r;->a()I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, v22

    iput v4, v0, Lcom/sleepycat/b/a/i;->c:I

    .line 16510
    move-object/from16 v0, v22

    iget v4, v0, Lcom/sleepycat/b/a/i;->c:I

    sget v6, Lcom/sleepycat/b/c/ao;->r:I

    add-int/2addr v4, v6

    move-object/from16 v0, v22

    iput v4, v0, Lcom/sleepycat/b/a/i;->c:I

    .line 17500
    move-object/from16 v0, v22

    iget v4, v0, Lcom/sleepycat/b/a/i;->c:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/sleepycat/b/a/i;->b:I

    if-lt v4, v6, :cond_1d

    const/4 v4, 0x1

    .line 676
    :goto_f
    if-eqz v4, :cond_1b

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, v22

    move-object/from16 v10, v26

    move-object/from16 v11, v17

    .line 677
    invoke-direct/range {v6 .. v11}, Lcom/sleepycat/b/a/h;->a(Ljava/lang/Long;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/a/i;Ljava/util/Map;Ljava/util/Set;)V

    .line 685
    :cond_1b
    add-int/lit8 v4, v21, 0x1

    .line 686
    rem-int/lit8 v6, v4, 0x64

    if-nez v6, :cond_1c

    .line 687
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    invoke-virtual {v6}, Lcom/sleepycat/b/a/c;->e()V

    :cond_1c
    move/from16 v21, v4

    move-wide/from16 v10, v18

    move/from16 v4, v20

    .line 690
    goto/16 :goto_3

    .line 17500
    :cond_1d
    const/4 v4, 0x0

    goto :goto_f

    .line 690
    :cond_1e
    if-eqz v14, :cond_21

    .line 18254
    iget-object v4, v5, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v4, Lcom/sleepycat/b/g/a/j;

    .line 19190
    iget-object v7, v4, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    .line 19724
    iput-object v9, v7, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;
    :try_end_6
    .catch Lcom/sleepycat/b/g/c; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 20221
    const/4 v11, 0x0

    .line 20222
    const/4 v12, 0x0

    .line 20223
    const/4 v10, 0x0

    .line 20226
    :try_start_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->i:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->i:I

    .line 20485
    iget-object v4, v9, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 20229
    sget-boolean v6, Lcom/sleepycat/b/a/h;->f:Z

    if-nez v6, :cond_1f

    if-nez v4, :cond_1f

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 20253
    :catchall_2
    move-exception v4

    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    const-string v6, "CleanIN:"

    move-wide/from16 v8, v30

    invoke-virtual/range {v5 .. v12}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    throw v4
    :try_end_8
    .catch Lcom/sleepycat/b/g/c; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 20231
    :cond_1f
    :try_start_9
    move-wide/from16 v0, v30

    invoke-static {v4, v9, v7, v0, v1}, Lcom/sleepycat/b/a/h;->a(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;J)Lcom/sleepycat/b/l/j;

    move-result-object v4

    .line 20233
    if-nez v4, :cond_20

    .line 20235
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->j:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->j:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 20236
    const/4 v15, 0x1

    move/from16 v16, v12

    .line 20251
    :goto_10
    const/4 v14, 0x1

    .line 20253
    :try_start_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    const-string v10, "CleanIN:"

    move-object v11, v7

    move-wide/from16 v12, v30

    invoke-virtual/range {v9 .. v16}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    :try_end_a
    .catch Lcom/sleepycat/b/g/c; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v4, v20

    move-wide/from16 v10, v18

    .line 20255
    goto/16 :goto_3

    .line 20244
    :cond_20
    :try_start_b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->k:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sleepycat/b/a/h;->k:I

    .line 20245
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 20246
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->i()V

    .line 20247
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 20248
    const/16 v16, 0x1

    move v15, v11

    goto :goto_10

    .line 697
    :cond_21
    if-eqz v13, :cond_26

    .line 21258
    :try_start_c
    iget-object v4, v5, Lcom/sleepycat/b/g/e;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v4, Lcom/sleepycat/b/g/a/b;

    .line 22102
    iget-object v4, v4, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 21258
    check-cast v4, Lcom/sleepycat/b/l/c;

    .line 22157
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->u:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sleepycat/b/a/h;->u:I

    .line 23130
    sget-boolean v6, Lcom/sleepycat/b/l/c;->e:Z

    if-nez v6, :cond_22

    iget-object v6, v4, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_22

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 23131
    :cond_22
    iget-object v4, v4, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/g;

    .line 24104
    iget-object v10, v4, Lcom/sleepycat/b/l/g;->a:[B

    .line 24485
    iget-object v9, v9, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 22169
    sget-object v11, Lcom/sleepycat/b/l/aj;->a:Lcom/sleepycat/b/l/aj;

    const/4 v12, 0x0

    sget-object v13, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/l/aj;Lcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/a;

    .line 22173
    if-nez v4, :cond_23

    .line 22175
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/a/h;->v:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->v:I
    :try_end_c
    .catch Lcom/sleepycat/b/g/c; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move/from16 v4, v20

    move-wide/from16 v10, v18

    .line 22176
    goto/16 :goto_3

    .line 22181
    :cond_23
    :try_start_d
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->g()J

    move-result-wide v6

    .line 22183
    const-wide/16 v10, -0x1

    cmp-long v9, v6, v10

    if-nez v9, :cond_24

    .line 22185
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->v:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sleepycat/b/a/h;->v:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 22208
    :try_start_e
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V
    :try_end_e
    .catch Lcom/sleepycat/b/g/c; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move/from16 v4, v20

    move-wide/from16 v10, v18

    .line 22186
    goto/16 :goto_3

    .line 22189
    :cond_24
    :try_start_f
    move-wide/from16 v0, v30

    invoke-static {v6, v7, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v6

    .line 22191
    if-lez v6, :cond_25

    .line 22193
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->v:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sleepycat/b/a/h;->v:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 22208
    :try_start_10
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V
    :try_end_10
    .catch Lcom/sleepycat/b/g/c; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move/from16 v4, v20

    move-wide/from16 v10, v18

    .line 22194
    goto/16 :goto_3

    .line 22204
    :cond_25
    const/4 v6, 0x1

    :try_start_11
    invoke-virtual {v4, v6}, Lcom/sleepycat/b/l/a;->a(Z)V

    .line 22205
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sleepycat/b/a/h;->w:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sleepycat/b/a/h;->w:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 22208
    :try_start_12
    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V

    move/from16 v4, v20

    move-wide/from16 v10, v18

    .line 22209
    goto/16 :goto_3

    .line 22208
    :catchall_3
    move-exception v5

    invoke-virtual {v4}, Lcom/sleepycat/b/l/a;->C()V

    throw v5

    .line 702
    :cond_26
    if-eqz v12, :cond_28

    .line 704
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 25268
    iget-object v4, v6, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/a;->a()V
    :try_end_12
    .catch Lcom/sleepycat/b/g/c; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 25270
    :try_start_13
    iget-wide v10, v6, Lcom/sleepycat/b/c/ad;->r:J

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v10, v11}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v4

    if-nez v4, :cond_27

    .line 25276
    iget-object v4, v6, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    sget-object v7, Lcom/sleepycat/b/g/af;->p:Lcom/sleepycat/b/g/af;

    iget-object v9, v6, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    invoke-static {v7, v9}, Lcom/sleepycat/b/g/a/q;->a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;

    move-result-object v7

    sget-object v9, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v4, v7, v9}, Lcom/sleepycat/b/g/am;->b(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/sleepycat/b/c/ad;->r:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 25282
    :cond_27
    :try_start_14
    iget-object v4, v6, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/a;->c()V

    move/from16 v4, v20

    move-wide/from16 v10, v18

    .line 25283
    goto/16 :goto_3

    .line 25282
    :catchall_4
    move-exception v4

    iget-object v5, v6, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v5}, Lcom/sleepycat/b/f/a;->c()V

    throw v4

    .line 706
    :cond_28
    sget-boolean v4, Lcom/sleepycat/b/a/h;->f:Z

    if-nez v4, :cond_29

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_29
    move/from16 v4, v20

    move-wide/from16 v10, v18

    .line 708
    goto/16 :goto_3

    .line 711
    :cond_2a
    if-eqz v22, :cond_2b

    .line 25496
    :goto_11
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/sleepycat/b/a/i;->a:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    .line 712
    if-nez v4, :cond_2b

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sleepycat/b/c/ad;->b(Z)V

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, v22

    move-object/from16 v10, v26

    move-object/from16 v11, v17

    .line 716
    invoke-direct/range {v6 .. v11}, Lcom/sleepycat/b/a/h;->a(Ljava/lang/Long;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/a/i;Ljava/util/Map;Ljava/util/Set;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v4}, Lcom/sleepycat/b/c/ad;->g()V

    goto :goto_11

    .line 724
    :cond_2b
    if-eqz v17, :cond_2c

    .line 725
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 726
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 727
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/c/h;

    .line 728
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-wide v8, v7, Lcom/sleepycat/b/a/c;->E:J

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v8, v9, v1}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;

    move-result-object v4

    .line 730
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    invoke-virtual {v7, v4}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/c/i;)V

    goto :goto_12

    .line 26197
    :cond_2c
    iget v4, v5, Lcom/sleepycat/b/g/s;->j:I

    .line 735
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sleepycat/b/a/h;->E:I

    .line 26201
    iget-object v4, v5, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 26258
    iget-wide v6, v4, Lcom/sleepycat/b/g/u;->g:J

    .line 736
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/a/h;->F:J
    :try_end_14
    .catch Lcom/sleepycat/b/g/c; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 742
    rsub-int/lit8 v4, v24, 0x0

    int-to-long v6, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 745
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 749
    if-nez p4, :cond_2d

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    .line 26285
    iget-object v5, v5, Lcom/sleepycat/b/g/e;->c:Lcom/sleepycat/b/p/au;

    .line 750
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v4, v0, v1, v5, v2}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;Ljava/util/Set;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/c/ao;)V

    .line 754
    :cond_2d
    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_2e
    move/from16 v4, v20

    move-wide/from16 v10, v18

    goto/16 :goto_3

    :cond_2f
    move v4, v6

    goto/16 :goto_d

    :cond_30
    move-object v9, v4

    goto/16 :goto_9

    :cond_31
    move-object v9, v4

    goto/16 :goto_9
.end method

.method private declared-synchronized c()I
    .locals 26

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x0

    .line 403
    :goto_0
    monitor-exit p0

    return v2

    .line 177
    :cond_0
    :try_start_1
    sget-boolean v2, Lcom/sleepycat/b/a/h;->f:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 2858
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->ag:Lcom/sleepycat/b/k/a/c;

    .line 177
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 184
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->d:Lcom/sleepycat/b/a/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/ad;->b()Ljava/util/SortedMap;

    move-result-object v2

    .line 188
    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v16

    .line 189
    const/4 v4, 0x0

    move-object v6, v2

    .line 193
    :goto_1
    move/from16 v0, v16

    if-lt v4, v0, :cond_3

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Maximum files cleaned for one run. "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v5, v6}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2
    move v2, v4

    .line 403
    goto :goto_0

    .line 3264
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sleepycat/b/p/h;->o:Z

    .line 201
    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 3585
    iget-boolean v2, v2, Lcom/sleepycat/b/c/ad;->b:Z

    .line 201
    if-nez v2, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/c;->e()V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-boolean v2, v2, Lcom/sleepycat/b/a/c;->J:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-boolean v2, v2, Lcom/sleepycat/b/a/c;->K:Z

    if-eqz v2, :cond_8

    :cond_4
    const/4 v2, 0x1

    .line 220
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->e:Lcom/sleepycat/b/a/aa;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget v7, v7, Lcom/sleepycat/b/a/c;->L:I

    invoke-virtual {v3, v5, v6, v2, v7}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/a/aa;Ljava/util/SortedMap;ZI)Ljava/lang/Long;

    move-result-object v3

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/c;->d()V

    .line 231
    const/4 v2, 0x0

    .line 232
    if-nez v3, :cond_13

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->e:Lcom/sleepycat/b/a/aa;

    invoke-virtual {v2, v3, v6}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/a/aa;Ljava/util/SortedMap;)Ljava/lang/Long;

    move-result-object v3

    .line 235
    const/4 v2, 0x1

    move v14, v2

    move-object v15, v3

    .line 242
    :goto_3
    if-eqz v15, :cond_2

    .line 248
    invoke-interface {v6, v15}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 249
    invoke-interface {v6, v15}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/a/o;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/o;->c()Lcom/sleepycat/b/a/o;

    move-result-object v8

    .line 253
    :goto_4
    new-instance v9, Lcom/sleepycat/b/a/o;

    invoke-direct {v9}, Lcom/sleepycat/b/a/o;-><init>()V

    .line 254
    new-instance v17, Lcom/sleepycat/b/a/q;

    invoke-direct/range {v17 .. v17}, Lcom/sleepycat/b/a/q;-><init>()V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    .line 4472
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    .line 5260
    iget v0, v3, Lcom/sleepycat/b/a/aa;->a:F

    move/from16 v18, v0

    .line 259
    const/4 v13, 0x0

    .line 5437
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->h:I

    .line 5438
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->i:I

    .line 5439
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->j:I

    .line 5440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->k:I

    .line 5441
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->t:I

    .line 5442
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->u:I

    .line 5443
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->v:I

    .line 5444
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->w:I

    .line 5445
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->x:I

    .line 5446
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->y:I

    .line 5447
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->z:I

    .line 5448
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->B:I

    .line 5449
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->C:I

    .line 5450
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->D:I

    .line 5451
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->A:I

    .line 5452
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sleepycat/b/a/h;->E:I

    .line 5453
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/sleepycat/b/a/h;->F:J

    .line 265
    const/4 v2, 0x0

    .line 266
    const/4 v12, 0x0

    .line 267
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v5, v5, Lcom/sleepycat/b/a/c;->c:Lcom/sleepycat/b/p/z;

    invoke-virtual {v5}, Lcom/sleepycat/b/p/z;->f()V

    .line 269
    if-eqz v14, :cond_5

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v5, v5, Lcom/sleepycat/b/a/c;->d:Lcom/sleepycat/b/p/z;

    invoke-virtual {v5}, Lcom/sleepycat/b/p/z;->f()V

    .line 272
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v5, v5, Lcom/sleepycat/b/a/c;->af:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v22

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 5508
    iget-object v0, v5, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    move-object/from16 v19, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v5, v5, Lcom/sleepycat/b/a/c;->ag:Lcom/sleepycat/b/p/ao;

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "CleanerRun "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " on file 0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " begins probe="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " backlog="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    .line 6457
    sget-object v10, Lcom/sleepycat/b/a/n;->a:Lcom/sleepycat/b/a/n;

    invoke-virtual {v7, v10}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/a/n;)I

    move-result v7

    .line 278
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/h;->q:Lcom/sleepycat/b/c/ad;

    invoke-static {v7, v5}, Lcom/sleepycat/b/g/aw;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/h;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v7, v10, v11, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v9, v1, v14}, Lcom/sleepycat/b/a/h;->a(Ljava/lang/Long;Lcom/sleepycat/b/a/o;Lcom/sleepycat/b/a/q;Z)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v5

    if-eqz v5, :cond_12

    .line 293
    add-int/lit8 v11, v4, 0x1

    .line 6460
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->f:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->h:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->g:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->i:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->h:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->j:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->i:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->k:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->j:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->t:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->k:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->u:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->l:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->v:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->m:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->w:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->n:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->x:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6469
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->o:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->y:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->p:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->z:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->r:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->B:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->s:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->C:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->t:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->D:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->q:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->A:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 6475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-object v4, v4, Lcom/sleepycat/b/a/c;->A:Lcom/sleepycat/b/p/z;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sleepycat/b/a/h;->F:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 295
    const/4 v10, 0x1

    .line 296
    if-eqz v8, :cond_11

    .line 297
    :try_start_5
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v6}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v3 .. v9}, Lcom/sleepycat/b/a/aa;->a(JJLcom/sleepycat/b/a/o;Lcom/sleepycat/b/a/o;)Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-nez v2, :cond_11

    .line 300
    const/4 v2, 0x1

    .line 332
    :goto_5
    if-nez v10, :cond_6

    if-nez v14, :cond_6

    .line 333
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    invoke-virtual {v4, v15}, Lcom/sleepycat/b/a/k;->b(Ljava/lang/Long;)V

    .line 337
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CleanerRun "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ends on file 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " probe="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " invokedFromDaemon=true finished="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fileDeleted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nEntriesRead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->E:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nINsObsolete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nINsCleaned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nINsDead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nINsMigrated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nBINDeltasObsolete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->t:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nBINDeltasCleaned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nBINDeltasDead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->v:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nBINDeltasMigrated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->w:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsObsolete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsCleaned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsDead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->z:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsMigrated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->B:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsMarked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->C:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNQueueHits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->D:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsLocked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->A:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->q:Lcom/sleepycat/b/c/ad;

    invoke-static {v4, v6}, Lcom/sleepycat/b/g/aw;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->r:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 366
    if-eqz v8, :cond_10

    .line 367
    invoke-virtual {v8}, Lcom/sleepycat/b/a/o;->h()I

    move-result v5

    .line 7324
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/sleepycat/b/a/o;->a(F)I

    move-result v4

    int-to-long v12, v4

    iget v4, v8, Lcom/sleepycat/b/a/o;->b:I

    int-to-long v14, v4

    invoke-static {v12, v13, v14, v15}, Lcom/sleepycat/b/a/o;->a(JJ)I

    move-result v4

    .line 375
    :goto_6
    invoke-virtual {v9}, Lcom/sleepycat/b/a/o;->h()I

    move-result v7

    .line 377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " logSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    .line 7497
    iget-object v10, v10, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    invoke-virtual {v10}, Lcom/sleepycat/b/a/aa;->a()Lcom/sleepycat/b/a/d;

    move-result-object v10

    .line 377
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " inSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " estFileSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " recalcFileSummary="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " lnSizeCorrection="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " newLnSizeCorrection="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8260
    iget v3, v3, Lcom/sleepycat/b/a/aa;->a:F

    .line 377
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " estimatedUtilization="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " correctedUtilization="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recalcUtilization="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " correctionRejected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v3, v4, v5, v2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 399
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->d:Lcom/sleepycat/b/a/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/ad;->b()Ljava/util/SortedMap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    move v4, v11

    move-object v6, v2

    .line 401
    goto/16 :goto_1

    .line 217
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 251
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 318
    :catch_0
    move-exception v5

    :goto_8
    const/4 v5, 0x1

    .line 319
    :try_start_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->d:Lcom/sleepycat/b/a/ad;

    .line 7293
    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Lcom/sleepycat/b/a/ad;->a(Ljava/util/Collection;Ljava/util/Set;)V

    .line 7294
    invoke-virtual {v6, v15}, Lcom/sleepycat/b/a/ad;->a(Ljava/lang/Long;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    move-object/from16 v0, v19

    invoke-virtual {v6, v15, v0}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;Lcom/sleepycat/b/c/ao;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 332
    if-nez v2, :cond_a

    .line 337
    :cond_a
    :try_start_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CleanerRun "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ends on file 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " probe="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " invokedFromDaemon=true finished="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " fileDeleted="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nEntriesRead="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->E:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nINsObsolete="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->h:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nINsCleaned="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->i:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nINsDead="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->j:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nINsMigrated="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->k:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nBINDeltasObsolete="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->t:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nBINDeltasCleaned="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->u:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nBINDeltasDead="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->v:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nBINDeltasMigrated="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->w:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nLNsObsolete="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->x:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nLNsCleaned="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->y:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nLNsDead="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->z:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nLNsMigrated="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->B:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nLNsMarked="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->C:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nLNQueueHits="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->D:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nLNsLocked="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->A:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->q:Lcom/sleepycat/b/c/ad;

    invoke-static {v2, v6}, Lcom/sleepycat/b/g/aw;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/h;->r:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 366
    if-eqz v8, :cond_f

    .line 367
    invoke-virtual {v8}, Lcom/sleepycat/b/a/o;->h()I

    move-result v5

    .line 7324
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/sleepycat/b/a/o;->a(F)I

    move-result v2

    int-to-long v10, v2

    iget v2, v8, Lcom/sleepycat/b/a/o;->b:I

    int-to-long v14, v2

    invoke-static {v10, v11, v14, v15}, Lcom/sleepycat/b/a/o;->a(JJ)I

    move-result v2

    .line 375
    :goto_9
    invoke-virtual {v9}, Lcom/sleepycat/b/a/o;->h()I

    move-result v7

    .line 377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " logSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    .line 7497
    iget-object v10, v10, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    invoke-virtual {v10}, Lcom/sleepycat/b/a/aa;->a()Lcom/sleepycat/b/a/d;

    move-result-object v10

    .line 377
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " inSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " estFileSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " recalcFileSummary="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " lnSizeCorrection="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " newLnSizeCorrection="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8260
    iget v3, v3, Lcom/sleepycat/b/a/aa;->a:F

    .line 377
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " estimatedUtilization="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " correctedUtilization="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " recalcUtilization="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " correctionRejected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/h;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v3, v5, v6, v2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    move v11, v4

    .line 391
    goto/16 :goto_7

    .line 321
    :catch_1
    move-exception v4

    move v10, v2

    move-object v2, v4

    .line 322
    :goto_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    const-string v5, "Cleaner"

    const-string v6, "doClean"

    const-string v7, ""

    invoke-static {v4, v5, v6, v7, v2}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    new-instance v4, Lcom/sleepycat/b/aa;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    sget-object v6, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-direct {v4, v5, v6, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 332
    :catchall_1
    move-exception v2

    move v4, v12

    :goto_b
    if-nez v10, :cond_c

    if-nez v4, :cond_c

    if-nez v14, :cond_c

    .line 333
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    invoke-virtual {v5, v15}, Lcom/sleepycat/b/a/k;->b(Ljava/lang/Long;)V

    .line 337
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "CleanerRun "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ends on file 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " probe="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invokedFromDaemon=true finished="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fileDeleted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nEntriesRead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->E:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nINsObsolete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nINsCleaned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nINsDead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->j:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nINsMigrated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nBINDeltasObsolete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->t:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nBINDeltasCleaned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nBINDeltasDead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->v:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nBINDeltasMigrated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->w:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsObsolete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsCleaned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsDead="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->z:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsMigrated="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->B:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsMarked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->C:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNQueueHits="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->D:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nLNsLocked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/a/h;->A:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->q:Lcom/sleepycat/b/c/ad;

    invoke-static {v4, v6}, Lcom/sleepycat/b/g/aw;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->r:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 366
    if-eqz v8, :cond_e

    .line 367
    invoke-virtual {v8}, Lcom/sleepycat/b/a/o;->h()I

    move-result v5

    .line 7324
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/sleepycat/b/a/o;->a(F)I

    move-result v4

    int-to-long v10, v4

    iget v4, v8, Lcom/sleepycat/b/a/o;->b:I

    int-to-long v14, v4

    invoke-static {v10, v11, v14, v15}, Lcom/sleepycat/b/a/o;->a(JJ)I

    move-result v4

    .line 375
    :goto_c
    invoke-virtual {v9}, Lcom/sleepycat/b/a/o;->h()I

    move-result v7

    .line 377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " logSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    .line 7497
    iget-object v10, v10, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    invoke-virtual {v10}, Lcom/sleepycat/b/a/aa;->a()Lcom/sleepycat/b/a/d;

    move-result-object v10

    .line 377
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " inSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " estFileSummary="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " recalcFileSummary="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " lnSizeCorrection="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " newLnSizeCorrection="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 8260
    iget v3, v3, Lcom/sleepycat/b/a/aa;->a:F

    .line 377
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " estimatedUtilization="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " correctedUtilization="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recalcUtilization="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " correctionRejected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {v4, v5, v6, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 332
    :cond_d
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 326
    :catch_2
    move-exception v4

    move v10, v2

    move-object v2, v4

    .line 328
    :goto_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    const-string v5, "Cleaner"

    const-string v6, "doClean"

    const-string v7, ""

    invoke-static {v4, v5, v6, v7, v2}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 372
    :cond_e
    const/4 v5, -0x1

    .line 373
    const/4 v4, -0x1

    goto/16 :goto_c

    .line 372
    :cond_f
    const/4 v5, -0x1

    .line 373
    const/4 v2, -0x1

    goto/16 :goto_9

    .line 372
    :cond_10
    const/4 v5, -0x1

    .line 373
    const/4 v4, -0x1

    goto/16 :goto_6

    .line 332
    :catchall_2
    move-exception v4

    move v10, v2

    move-object v2, v4

    move v4, v12

    goto/16 :goto_b

    :catchall_3
    move-exception v4

    move v10, v2

    move-object v2, v4

    move v4, v5

    goto/16 :goto_b

    .line 326
    :catch_3
    move-exception v2

    goto :goto_d

    .line 321
    :catch_4
    move-exception v2

    goto/16 :goto_a

    .line 318
    :catch_5
    move-exception v4

    move v4, v11

    goto/16 :goto_8

    :catch_6
    move-exception v2

    move v2, v10

    move v4, v11

    goto/16 :goto_8

    :cond_11
    move v2, v13

    goto/16 :goto_5

    :cond_12
    move v10, v2

    move v11, v4

    move v2, v13

    goto/16 :goto_5

    :cond_13
    move v14, v2

    move-object v15, v3

    goto/16 :goto_3
.end method


# virtual methods
.method protected final a()J
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    iget-wide v0, v0, Lcom/sleepycat/b/a/c;->H:J

    return-wide v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/sleepycat/b/a/h;->c()I

    .line 151
    return-void
.end method
