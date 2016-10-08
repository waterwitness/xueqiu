.class public Lcom/sleepycat/b/c/c;
.super Ljava/lang/Object;
.source "CursorImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final synthetic j:Z

.field private static l:J


# instance fields
.field public volatile a:Lcom/sleepycat/b/l/a;

.field public volatile b:I

.field public volatile c:Lcom/sleepycat/b/l/a;

.field public final d:Lcom/sleepycat/b/c/i;

.field public e:Lcom/sleepycat/b/n/q;

.field public final f:Z

.field public g:B

.field public h:Lcom/sleepycat/b/a;

.field public i:Z

.field private final k:I

.field private m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/sleepycat/b/l/am;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lcom/sleepycat/b/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    .line 104
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sleepycat/b/c/c;->l:J

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Z)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Z)V
    .locals 4

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3219
    sget-wide v0, Lcom/sleepycat/b/c/c;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sleepycat/b/c/c;->l:J

    .line 186
    long-to-int v0, v0

    iput v0, p0, Lcom/sleepycat/b/c/c;->k:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/c/c;->b:I

    .line 190
    iput-boolean p3, p0, Lcom/sleepycat/b/c/c;->f:Z

    .line 193
    iput-object p1, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 194
    iput-object p2, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 195
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/c/c;)V

    .line 202
    sget-object v0, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    iput-object v0, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    .line 204
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/sleepycat/b/c/c;->g:B

    .line 212
    return-void
.end method

.method private a([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/d;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    .locals 24

    .prologue
    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 21133
    iget-object v3, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v9

    .line 1207
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/b/c/d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 21387
    :cond_0
    move-object/from16 v0, p6

    iget-wide v6, v0, Lcom/sleepycat/b/c/d;->a:J

    .line 1209
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v2, v6, v4

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1228
    :cond_1
    if-nez p4, :cond_2

    .line 22355
    :try_start_0
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/m;->f:Z

    .line 1228
    if-nez v2, :cond_2

    .line 22504
    iget-object v2, v3, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 23480
    iget-boolean v2, v2, Lcom/sleepycat/b/a/c;->O:Z

    .line 1228
    if-nez v2, :cond_2

    invoke-virtual {v9}, Lcom/sleepycat/b/c/w;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1233
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v4}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/y;

    .line 1238
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v5

    .line 1239
    if-eqz v2, :cond_4

    .line 24145
    iget-object v4, v2, Lcom/sleepycat/b/l/y;->f:[B

    move-object v8, v4

    .line 24355
    :goto_1
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/sleepycat/b/m;->f:Z

    .line 1240
    if-eqz v4, :cond_5

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/sleepycat/b/l/y;->b(Lcom/sleepycat/b/m;[B)[B

    move-result-object v4

    .line 1251
    :goto_2
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 25097
    iget-object v10, v10, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 1251
    move-object/from16 v0, p1

    invoke-static {v5, v0, v10}, Lcom/sleepycat/b/l/w;->a([B[BLjava/util/Comparator;)I

    move-result v10

    if-eqz v10, :cond_6

    .line 1254
    new-instance v2, Lcom/sleepycat/b/t;

    const-string v3, "Can\'t replace a duplicate with data that is unequal according to the duplicate comparator."

    invoke-direct {v2, v3}, Lcom/sleepycat/b/t;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v2

    .line 1236
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v4}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/y;

    goto :goto_0

    .line 1239
    :cond_4
    const/4 v4, 0x0

    move-object v8, v4

    goto :goto_1

    .line 1240
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/b/l/y;->b(Lcom/sleepycat/b/m;)[B

    move-result-object v4

    goto :goto_2

    .line 1259
    :cond_6
    if-eqz p4, :cond_8

    .line 1260
    sget-boolean v10, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v10, :cond_7

    if-nez v8, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1261
    :cond_7
    move-object/from16 v0, p4

    invoke-static {v0, v8}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;[B)V

    .line 1263
    :cond_8
    if-eqz p3, :cond_9

    .line 1264
    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;[B)V

    .line 1272
    :cond_9
    if-eqz v2, :cond_d

    .line 1274
    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->v_()J

    move-result-wide v8

    .line 25240
    iput-object v4, v2, Lcom/sleepycat/b/l/y;->f:[B

    .line 25241
    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->l()V

    move-wide v14, v8

    .line 1290
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    if-eqz p1, :cond_a

    move-object/from16 v5, p1

    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual/range {p6 .. p6}, Lcom/sleepycat/b/c/d;->b()Lcom/sleepycat/b/n/am;

    move-result-object v9

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/am;Lcom/sleepycat/b/g/av;)J

    move-result-wide v12

    .line 1295
    if-eqz p5, :cond_b

    .line 1296
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;)V

    .line 1302
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sleepycat/b/c/c;->b:I

    move-wide v10, v14

    move-object/from16 v14, p1

    move-object v15, v2

    invoke-virtual/range {v8 .. v15}, Lcom/sleepycat/b/l/a;->a(IJJ[BLcom/sleepycat/b/l/ac;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->e(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1317
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/c;->c()V

    .line 1321
    sget-object v16, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v17, "Mod:"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sleepycat/b/c/c;->b:I

    move/from16 v19, v0

    move-object/from16 v15, p0

    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    invoke-direct/range {v15 .. v23}, Lcom/sleepycat/b/c/c;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/l/a;IJJ)V

    .line 1323
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    return-object v2

    .line 1278
    :cond_d
    :try_start_2
    invoke-virtual {v9, v3, v4}, Lcom/sleepycat/b/c/w;->a(Lcom/sleepycat/b/c/ad;[B)Lcom/sleepycat/b/l/y;

    move-result-object v2

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sleepycat/b/c/c;->b:I

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v2, v9}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;[B)V

    .line 1281
    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->v_()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    move-wide v14, v8

    goto/16 :goto_3
.end method

.method private a(Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/c/d;
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2571
    new-instance v9, Lcom/sleepycat/b/c/d;

    invoke-direct {v9}, Lcom/sleepycat/b/c/d;-><init>()V

    .line 2572
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v0

    .line 45387
    iput-wide v0, v9, Lcom/sleepycat/b/c/d;->a:J

    .line 2573
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v8

    .line 46387
    :goto_0
    iput-boolean v0, v9, Lcom/sleepycat/b/c/d;->c:Z

    .line 47387
    iget-wide v0, v9, Lcom/sleepycat/b/c/d;->a:J

    .line 2577
    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    .line 2578
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v7

    .line 2573
    goto :goto_0

    .line 48387
    :cond_2
    iput-boolean v8, v9, Lcom/sleepycat/b/c/d;->b:Z

    move-object v0, v9

    .line 2664
    :goto_1
    return-object v0

    .line 2588
    :cond_3
    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 49133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 49496
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 50189
    iget-object v0, v0, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    .line 50190
    iget-wide v2, v9, Lcom/sleepycat/b/c/d;->a:J

    .line 2588
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n/l;->b(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2593
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    iget-object v1, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/c/i;)V

    .line 50191
    iput-boolean v8, v9, Lcom/sleepycat/b/c/d;->d:Z

    .line 2595
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/c;->d(Lcom/sleepycat/b/n/o;)Z

    :cond_4
    move-object v0, v9

    .line 2596
    goto :goto_1

    .line 2608
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2610
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 50192
    iget-wide v2, v9, Lcom/sleepycat/b/c/d;->a:J

    .line 2610
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/q;->a(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 50193
    iput-object v0, v9, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;
    :try_end_0
    .catch Lcom/sleepycat/b/an; {:try_start_0 .. :try_end_0} :catch_0

    .line 50196
    :goto_2
    iget-object v0, v9, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    .line 50197
    iget-object v0, v0, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 2627
    sget-object v1, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-eq v0, v1, :cond_8

    .line 2629
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/c;->d(Lcom/sleepycat/b/n/o;)Z

    :cond_6
    move-object v0, v9

    .line 2630
    goto :goto_1

    .line 2612
    :catch_0
    move-exception v0

    .line 2619
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    .line 2620
    throw v0

    .line 2623
    :cond_7
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 50194
    iget-wide v2, v9, Lcom/sleepycat/b/c/d;->a:J

    .line 2623
    iget-object v6, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/q;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 50195
    iput-object v0, v9, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    goto :goto_2

    .line 2641
    :cond_8
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    .line 2642
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 50198
    iget-wide v2, v9, Lcom/sleepycat/b/c/d;->a:J

    .line 2642
    iget-object v6, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/q;->a(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 50199
    iput-object v0, v9, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    .line 2646
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 2647
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v8

    .line 50200
    :goto_3
    iput-boolean v0, v9, Lcom/sleepycat/b/c/d;->c:Z

    .line 2649
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v0

    .line 50201
    iget-wide v2, v9, Lcom/sleepycat/b/c/d;->a:J

    .line 2650
    cmp-long v2, v2, v0

    if-eqz v2, :cond_c

    .line 2652
    invoke-direct {p0, v9}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/d;)V

    .line 50202
    iput-wide v0, v9, Lcom/sleepycat/b/c/d;->a:J

    .line 2655
    cmp-long v0, v0, v10

    if-nez v0, :cond_8

    .line 2656
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    move v0, v7

    .line 2647
    goto :goto_3

    .line 50203
    :cond_b
    iput-boolean v8, v9, Lcom/sleepycat/b/c/d;->b:Z

    move-object v0, v9

    .line 2658
    goto/16 :goto_1

    .line 2663
    :cond_c
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/c;->d(Lcom/sleepycat/b/n/o;)Z

    :cond_d
    move-object v0, v9

    .line 2664
    goto/16 :goto_1
.end method

.method private a(Lcom/sleepycat/b/c/d;)V
    .locals 4

    .prologue
    .line 2821
    .line 50207
    iget-object v0, p1, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    .line 2821
    if-eqz v0, :cond_2

    .line 50208
    iget-wide v0, p1, Lcom/sleepycat/b/c/d;->a:J

    .line 50209
    iget-object v2, p1, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    .line 50219
    iget-object v2, v2, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 50211
    sget-object v3, Lcom/sleepycat/b/n/h;->a:Lcom/sleepycat/b/n/h;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sleepycat/b/n/h;->b:Lcom/sleepycat/b/n/h;

    if-ne v2, v3, :cond_3

    .line 50213
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/n/q;->d(J)Z

    .line 50222
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sleepycat/b/c/d;->e:Lcom/sleepycat/b/n/m;

    .line 2825
    :cond_2
    return-void

    .line 50214
    :cond_3
    sget-object v3, Lcom/sleepycat/b/n/h;->c:Lcom/sleepycat/b/n/h;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/sleepycat/b/n/h;->d:Lcom/sleepycat/b/n/h;

    if-ne v2, v3, :cond_1

    .line 50216
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 50220
    iget-object v3, v2, Lcom/sleepycat/b/n/q;->j:Lcom/sleepycat/b/n/l;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sleepycat/b/n/l;->b(JLcom/sleepycat/b/n/q;)V

    goto :goto_0
.end method

.method public static a(Lcom/sleepycat/b/c/i;JJLcom/sleepycat/b/n/q;)V
    .locals 9

    .prologue
    .line 2705
    .line 50204
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50205
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 50206
    iget-object v0, v0, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    .line 2707
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n/l;->a(Ljava/lang/Long;)Ljava/util/Set;

    move-result-object v7

    .line 2708
    if-nez v7, :cond_1

    .line 2726
    :cond_0
    return-void

    .line 2712
    :cond_1
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 2713
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v1

    .line 2714
    if-eq v1, p5, :cond_2

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p0

    .line 2715
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/q;->a(JJLcom/sleepycat/b/c/i;)V

    goto :goto_0

    .line 2719
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/j;

    .line 2720
    invoke-virtual {v0}, Lcom/sleepycat/b/n/j;->f()Lcom/sleepycat/b/n/q;

    move-result-object v0

    .line 2721
    if-eq v0, p5, :cond_4

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->q()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2723
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/n/q;->d(J)Z

    goto :goto_1
.end method

.method public static a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/g;)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 2898
    new-instance v1, Lcom/sleepycat/b/m;

    invoke-direct {v1}, Lcom/sleepycat/b/m;-><init>()V

    .line 2899
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 50224
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50225
    invoke-static {v0}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 2905
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/c/c;

    invoke-direct {v0, p0, v8}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50226
    :try_start_2
    iput-boolean p2, v0, Lcom/sleepycat/b/c/c;->i:Z

    .line 2907
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/c;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2908
    invoke-virtual {v0, v1, v2, p1}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;

    move-result-object v3

    move-object v4, v3

    move v3, v9

    .line 2911
    :goto_0
    if-nez v3, :cond_0

    .line 2918
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v4, v5, :cond_5

    .line 2919
    invoke-interface {p3, v0, v1}, Lcom/sleepycat/b/c/g;->a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/m;)Z

    move-result v5

    if-nez v5, :cond_5

    move v9, v10

    .line 2923
    :goto_1
    if-nez v9, :cond_4

    .line 2924
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 2928
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v3, v4, :cond_3

    move-object v4, v3

    move v3, v10

    .line 2929
    goto :goto_0

    .line 2936
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->c()V

    .line 50228
    invoke-virtual {v0, v7}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 50230
    invoke-virtual {v8, v10}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 2940
    return-void

    .line 2935
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    :goto_2
    if-eqz v1, :cond_1

    .line 2936
    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->c()V

    .line 50232
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 2939
    :cond_1
    if-eqz v2, :cond_2

    .line 50234
    invoke-virtual {v2, v10}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 2940
    :cond_2
    throw v0

    .line 2935
    :catchall_1
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v8

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_2

    :cond_3
    move-object v4, v3

    move v3, v9

    goto :goto_0

    :cond_4
    move v3, v9

    goto :goto_0

    :cond_5
    move v9, v3

    goto :goto_1
.end method

.method private a(Lcom/sleepycat/b/l/a;)V
    .locals 1

    .prologue
    .line 493
    if-eqz p1, :cond_1

    .line 494
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 495
    :cond_0
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/c/c;)V

    .line 497
    :cond_1
    return-void
.end method

.method private a(Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/m;)V
    .locals 2

    .prologue
    .line 925
    if-eqz p2, :cond_0

    .line 926
    invoke-virtual {p1, p2}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;)V

    .line 18223
    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/sleepycat/b/c/c;->g:B

    .line 936
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->e(I)V

    .line 941
    :cond_1
    return-void
.end method

.method private a(Ljava/util/logging/Level;Lcom/sleepycat/b/l/a;JI)V
    .locals 5

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 50249
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50250
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 3041
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3043
    const-string v2, "Ins:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    const-string v2, " bin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50251
    iget-wide v2, p2, Lcom/sleepycat/b/l/j;->c:J

    .line 3045
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3046
    const-string v2, " lnLsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    invoke-static {p3, p4}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3049
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50252
    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 3051
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, p1, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3054
    :cond_0
    return-void
.end method

.method private a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/l/a;IJJ)V
    .locals 5

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 50245
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50246
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 3014
    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3016
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    const-string v2, " bin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50247
    iget-wide v2, p3, Lcom/sleepycat/b/l/j;->c:J

    .line 3018
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3019
    const-string v2, " lnIdx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3021
    const-string v2, " oldLnLsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    invoke-static {p5, p6}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    const-string v2, " newLnLsn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    invoke-static {p7, p8}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50248
    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 3026
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, p1, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3029
    :cond_0
    return-void
.end method

.method private a(Lcom/sleepycat/b/l/y;[BLcom/sleepycat/b/g/av;)Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    .line 952
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 19133
    iget-object v1, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 961
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    iget-object v2, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/c/i;)V

    .line 964
    new-instance v0, Lcom/sleepycat/b/l/e;

    invoke-direct {v0, p1, p2, v10, v11}, Lcom/sleepycat/b/l/e;-><init>(Lcom/sleepycat/b/l/ac;[BJ)V

    .line 967
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->j()V

    .line 969
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/l/a;->b(Lcom/sleepycat/b/l/e;)I

    move-result v0

    .line 970
    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    .line 976
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 19378
    iput v0, p0, Lcom/sleepycat/b/c/c;->b:I

    .line 977
    const/4 v0, 0x0

    .line 1025
    :goto_0
    return v0

    .line 984
    :cond_0
    const v2, -0x20001

    and-int/2addr v0, v2

    .line 20378
    iput v0, p0, Lcom/sleepycat/b/c/c;->b:I

    .line 20433
    new-instance v7, Lcom/sleepycat/b/n/am;

    invoke-direct {v7}, Lcom/sleepycat/b/n/am;-><init>()V

    .line 21106
    iput-boolean v9, v7, Lcom/sleepycat/b/n/am;->f:Z

    .line 990
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    move-object v0, p1

    move-object v3, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/am;Lcom/sleepycat/b/g/av;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 994
    cmp-long v0, v4, v10

    if-nez v0, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->b(I)V

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/sleepycat/b/l/a;->c(IJ)V

    .line 1022
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/l/a;)V

    .line 1024
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v6, p0, Lcom/sleepycat/b/c/c;->b:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/c/c;->a(Ljava/util/logging/Level;Lcom/sleepycat/b/l/a;JI)V

    move v0, v9

    .line 1025
    goto :goto_0

    .line 994
    :catchall_0
    move-exception v0

    cmp-long v1, v10, v10

    if-nez v1, :cond_2

    .line 1005
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v2, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/l/a;->b(I)V

    :cond_2
    throw v0
.end method

.method private b(Lcom/sleepycat/b/c/c;)V
    .locals 5

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 5133
    iget-object v2, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 634
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    sget-object v1, Lcom/sleepycat/b/a;->e:Lcom/sleepycat/b/a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    sget-object v1, Lcom/sleepycat/b/a;->f:Lcom/sleepycat/b/a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    sget-object v1, Lcom/sleepycat/b/a;->d:Lcom/sleepycat/b/a;

    if-ne v0, v1, :cond_0

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6692
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 7143
    iget-object v0, v0, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    .line 8140
    iget-boolean v0, v0, Lcom/sleepycat/b/d/a;->d:Z

    .line 634
    if-nez v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_0

    .line 647
    if-eqz p1, :cond_2

    .line 648
    iget-object v0, p1, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 649
    iget v1, p1, Lcom/sleepycat/b/c/c;->b:I

    .line 654
    :goto_1
    sget-object v3, Lcom/sleepycat/b/c/c$1;->a:[I

    iget-object v4, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    invoke-virtual {v4}, Lcom/sleepycat/b/a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 690
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 651
    :cond_2
    const/4 v0, 0x0

    .line 652
    const/4 v1, -0x1

    goto :goto_1

    .line 657
    :pswitch_0
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/sleepycat/b/c/c;->b:I

    if-eq v0, v1, :cond_0

    .line 658
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->f()V

    goto :goto_0

    .line 662
    :pswitch_1
    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-ne v3, v0, :cond_4

    .line 664
    iget v0, p0, Lcom/sleepycat/b/c/c;->b:I

    if-eq v0, v1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->f()V

    goto :goto_0

    .line 8692
    :cond_4
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 669
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    sget-object v2, Lcom/sleepycat/b/d/e;->d:Lcom/sleepycat/b/d/e;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/d/e;)V

    goto :goto_0

    .line 674
    :pswitch_2
    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eq v3, v0, :cond_5

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->G()Z

    move-result v0

    if-nez v0, :cond_6

    .line 680
    :cond_5
    iget v0, p0, Lcom/sleepycat/b/c/c;->b:I

    if-eq v0, v1, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->f()V

    goto :goto_0

    .line 9692
    :cond_6
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 685
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    sget-object v2, Lcom/sleepycat/b/d/e;->d:Lcom/sleepycat/b/d/e;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/d/e;)V

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d(Lcom/sleepycat/b/n/o;)Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 2789
    sget-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    if-ne p1, v0, :cond_1

    .line 2815
    :cond_0
    return v4

    .line 2794
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/c/c;->b:I

    if-ltz v0, :cond_0

    .line 2799
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 2800
    if-eqz v0, :cond_0

    .line 2809
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v2, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v1

    .line 2810
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v2

    .line 2811
    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v0

    .line 2813
    sget-boolean v3, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Deleted state mismatch LNDeleted = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " PD = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " KD = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private d(Z)Z
    .locals 1

    .prologue
    .line 3063
    if-eqz p1, :cond_0

    .line 3064
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_0

    .line 3065
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v0

    .line 3068
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private i()Lcom/sleepycat/b/l/am;
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lcom/sleepycat/b/c/ad;->s()I

    move-result v0

    if-lez v0, :cond_1

    .line 3232
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->m:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 3233
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/c;->m:Ljava/lang/ThreadLocal;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/am;

    .line 243
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/a;)V

    .line 506
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/l/a;->b(Lcom/sleepycat/b/c/c;)V

    .line 527
    invoke-virtual {v0}, Lcom/sleepycat/b/l/a;->C()V

    .line 529
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    iget-object v1, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/a;)V

    .line 1704
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/l/a;->b(Lcom/sleepycat/b/c/c;)V

    .line 1705
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/a;->C()V

    .line 1706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    .line 1707
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I
    .locals 1

    .prologue
    .line 2034
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;Ljava/util/Comparator;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/c/e;",
            "Lcom/sleepycat/b/n/o;",
            "Ljava/util/Comparator",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2100
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2103
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2105
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->k()V

    .line 2108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 42131
    iget-boolean v9, p2, Lcom/sleepycat/b/c/e;->e:Z

    .line 2114
    new-instance v3, Lcom/sleepycat/b/l/b;

    invoke-direct {v3}, Lcom/sleepycat/b/l/b;-><init>()V

    .line 2117
    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/b/l/w;->a(Lcom/sleepycat/b/m;)[B

    move-result-object v1

    .line 2118
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 42485
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 2118
    sget-object v2, Lcom/sleepycat/b/l/aj;->a:Lcom/sleepycat/b/l/aj;

    iget-object v4, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/l/aj;Lcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/a;

    iput-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 2122
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_b

    .line 2123
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/a;)V

    .line 2130
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v9, p4}, Lcom/sleepycat/b/l/a;->a([BZZLjava/util/Comparator;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/c/c;->b:I

    .line 2141
    if-nez v9, :cond_3

    move v0, v6

    .line 2143
    :goto_0
    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    if-ltz v1, :cond_a

    .line 2144
    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 2159
    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/sleepycat/b/c/c;->b:I

    move v1, v6

    .line 2167
    :goto_1
    if-eqz v9, :cond_8

    .line 43443
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/c/d;

    move-result-object v0

    .line 2169
    invoke-virtual {v0}, Lcom/sleepycat/b/c/d;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    .line 2183
    :goto_2
    sget-object v0, Lcom/sleepycat/b/c/e;->c:Lcom/sleepycat/b/c/e;

    if-ne p2, v0, :cond_5

    if-eqz v2, :cond_5

    iget-boolean v0, v3, Lcom/sleepycat/b/l/b;->a:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sleepycat/b/c/c;->b:I

    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 44345
    iget v3, v3, Lcom/sleepycat/b/l/j;->f:I

    .line 2183
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_5

    move v0, v6

    :goto_3
    move v10, v0

    move v0, v1

    move v1, v10

    .line 45223
    :goto_4
    const/4 v3, 0x2

    iput-byte v3, p0, Lcom/sleepycat/b/c/c;->g:B

    .line 2192
    if-eqz v2, :cond_6

    :goto_5
    if-eqz v0, :cond_7

    move v0, v8

    :goto_6
    or-int/2addr v0, v6

    if-eqz v1, :cond_2

    const/4 v7, 0x4

    :cond_2
    or-int/2addr v0, v7

    return v0

    :cond_3
    move v0, v7

    .line 2141
    goto :goto_0

    .line 2173
    :cond_4
    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/d;)V
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v7

    goto :goto_2

    :cond_5
    move v0, v7

    .line 2183
    goto :goto_3

    :cond_6
    move v6, v7

    .line 2192
    goto :goto_5

    :cond_7
    move v0, v7

    goto :goto_6

    .line 2195
    :catch_0
    move-exception v0

    .line 2197
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    .line 2198
    throw v0

    :cond_8
    move v2, v0

    goto :goto_2

    :cond_9
    move v1, v7

    goto :goto_1

    :cond_a
    move v1, v7

    move v2, v0

    move v0, v7

    goto :goto_4

    :cond_b
    move v1, v7

    move v0, v7

    move v2, v7

    goto :goto_4
.end method

.method public final a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    .locals 24

    .prologue
    .line 1336
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1337
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 26133
    iget-object v3, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 1338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v4

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-nez v2, :cond_1

    .line 1341
    sget-object v2, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    .line 1440
    :goto_0
    return-object v2

    .line 1347
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 1354
    :try_start_0
    sget-object v2, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/c/d;

    move-result-object v10

    .line 1356
    invoke-virtual {v10}, Lcom/sleepycat/b/c/d;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1357
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/d;)V

    .line 1359
    sget-object v2, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/c;->c()V

    goto :goto_0

    .line 26387
    :cond_2
    :try_start_1
    iget-wide v6, v10, Lcom/sleepycat/b/c/d;->a:J

    .line 1362
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_3

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1435
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v2

    .line 26504
    :cond_3
    :try_start_2
    iget-object v2, v3, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 27480
    iget-boolean v2, v2, Lcom/sleepycat/b/a/c;->O:Z

    .line 1376
    if-nez v2, :cond_4

    invoke-virtual {v4}, Lcom/sleepycat/b/c/w;->d()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1379
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v5}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/y;

    .line 1389
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v5, v8}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v5

    .line 1391
    if-eqz v2, :cond_7

    .line 1393
    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->v_()J

    move-result-wide v8

    .line 28235
    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->h()V

    .line 28236
    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->l()V

    move-wide/from16 v16, v8

    .line 1409
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v10}, Lcom/sleepycat/b/c/d;->b()Lcom/sleepycat/b/n/am;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual/range {v2 .. v10}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/am;Lcom/sleepycat/b/g/av;)J

    move-result-wide v12

    .line 1417
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sleepycat/b/c/c;->b:I

    const/4 v14, 0x0

    move-wide/from16 v10, v16

    move-object v15, v2

    invoke-virtual/range {v8 .. v15}, Lcom/sleepycat/b/l/a;->a(IJJ[BLcom/sleepycat/b/l/ac;)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->m(I)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->e(I)V

    .line 1433
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/l/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/c;->c()V

    .line 1438
    sget-object v16, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v17, "Delete"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sleepycat/b/c/c;->b:I

    move/from16 v19, v0

    move-object/from16 v15, p0

    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    invoke-direct/range {v15 .. v23}, Lcom/sleepycat/b/c/c;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/l/a;IJJ)V

    .line 1440
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    goto/16 :goto_0

    .line 1382
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v5}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/y;

    goto/16 :goto_1

    .line 1397
    :cond_7
    invoke-virtual {v4, v3}, Lcom/sleepycat/b/c/w;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/l/y;

    move-result-object v2

    .line 1399
    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->v_()J

    move-result-wide v8

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sleepycat/b/c/c;->b:I

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v2, v12}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide/from16 v16, v8

    goto/16 :goto_2
.end method

.method public final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;
    .locals 2

    .prologue
    .line 1455
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-nez v0, :cond_1

    .line 1459
    sget-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    .line 1464
    :goto_0
    return-object v0

    .line 1462
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 1464
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1576
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1577
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p5}, Lcom/sleepycat/b/c/c;->d(Z)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1579
    :cond_1
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    move v0, p5

    .line 1582
    :cond_2
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v4, :cond_13

    .line 1585
    sget-boolean v4, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/c;->d(Z)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v1, :cond_11

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1586
    :cond_3
    if-nez v0, :cond_6

    .line 1587
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 1597
    :goto_1
    if-eqz p4, :cond_4

    iget v4, p0, Lcom/sleepycat/b/c/c;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sleepycat/b/c/c;->b:I

    iget-object v5, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 34345
    iget v5, v5, Lcom/sleepycat/b/l/j;->f:I

    .line 1597
    if-lt v4, v5, :cond_5

    :cond_4
    if-nez p4, :cond_a

    iget v4, p0, Lcom/sleepycat/b/c/c;->b:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sleepycat/b/c/c;->b:I

    if-ltz v4, :cond_a

    .line 1600
    :cond_5
    if-eqz p6, :cond_7

    iget-object v4, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v5, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v4

    invoke-interface {p6, v4}, Lcom/sleepycat/b/c/au;->a([B)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1602
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 1603
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    :goto_2
    sget-boolean v1, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v1, :cond_f

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    move v0, v2

    .line 1589
    goto :goto_1

    .line 1607
    :cond_7
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;

    move-result-object v4

    .line 1609
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v4, v5, :cond_8

    .line 35248
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->i()Lcom/sleepycat/b/l/am;

    .line 1611
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    goto :goto_2

    .line 1614
    :cond_8
    sget-boolean v4, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v4, :cond_9

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v4

    if-eqz v4, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1616
    :cond_9
    iget-object v4, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    if-eqz v4, :cond_2

    .line 1617
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->l()V

    goto/16 :goto_0

    .line 1650
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_b

    .line 1651
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    .line 1652
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->l()V

    .line 1653
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 1655
    :cond_b
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iput-object v0, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    .line 1656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 1666
    if-eqz p4, :cond_c

    .line 1667
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 35485
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 1667
    iget-object v4, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    iget-object v5, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/a;Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/a;

    move-result-object v0

    .line 1673
    :goto_3
    if-nez v0, :cond_d

    .line 1674
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    goto :goto_2

    .line 1670
    :cond_c
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 36485
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 1670
    iget-object v4, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    iget-object v5, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    .line 36951
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/a;

    goto :goto_3

    .line 1677
    :cond_d
    if-eqz p4, :cond_e

    .line 1678
    const/4 v4, -0x1

    iput v4, p0, Lcom/sleepycat/b/c/c;->b:I

    .line 1682
    :goto_4
    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/a;)V

    .line 1684
    iput-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    move v0, v3

    .line 1687
    goto/16 :goto_0

    .line 37345
    :cond_e
    iget v4, v0, Lcom/sleepycat/b/l/j;->f:I

    .line 1680
    iput v4, p0, Lcom/sleepycat/b/c/c;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 1692
    :cond_f
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    if-eqz v1, :cond_10

    .line 1693
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->l()V

    .line 1697
    :cond_10
    return-object v0

    .line 1692
    :cond_11
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->c:Lcom/sleepycat/b/l/a;

    if-eqz v1, :cond_12

    .line 1693
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->l()V

    :cond_12
    throw v0

    :cond_13
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public final a([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 838
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 839
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, p3

    .line 841
    invoke-virtual/range {v0 .. v7}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/y;[BZLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/p/ab;

    move-result-object v0

    .line 10024
    iget-object v0, v0, Lcom/sleepycat/b/p/ab;->a:Ljava/lang/Object;

    .line 844
    check-cast v0, Lcom/sleepycat/b/av;

    return-object v0
.end method

.method public final a([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1151
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1153
    :cond_0
    if-eqz p3, :cond_1

    .line 1154
    invoke-virtual {p3, v1}, Lcom/sleepycat/b/m;->a([B)V

    .line 1156
    :cond_1
    if-eqz p4, :cond_2

    .line 1157
    invoke-virtual {p4, v1}, Lcom/sleepycat/b/m;->a([B)V

    .line 1159
    :cond_2
    if-eqz p5, :cond_3

    .line 1160
    invoke-virtual {p5, v1}, Lcom/sleepycat/b/m;->a([B)V

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-nez v0, :cond_4

    .line 1164
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 1186
    :goto_0
    return-object v0

    .line 1169
    :cond_4
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 1172
    :try_start_0
    sget-object v0, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/c/d;

    move-result-object v6

    .line 1173
    invoke-virtual {v6}, Lcom/sleepycat/b/c/d;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1175
    invoke-direct {p0, v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/d;)V

    .line 1176
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    goto :goto_0

    .line 1180
    :catchall_0
    move-exception v0

    .line 1182
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 1186
    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/d;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ZLcom/sleepycat/b/a;Lcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;
    .locals 3

    .prologue
    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 314
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/c;

    .line 316
    invoke-virtual {v0, p2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/a;)V

    .line 318
    iget-boolean v1, p0, Lcom/sleepycat/b/c/c;->f:Z

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v1}, Lcom/sleepycat/b/n/q;->f()Lcom/sleepycat/b/n/q;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 322
    :cond_0
    iget-object v1, v0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/c/c;)V

    .line 323
    if-eqz p3, :cond_1

    iget-byte v1, p3, Lcom/sleepycat/b/c/c;->g:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 325
    iget-object v1, p3, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iput-object v1, v0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 326
    iget v1, p3, Lcom/sleepycat/b/c/c;->b:I

    iput v1, v0, Lcom/sleepycat/b/c/c;->b:I

    .line 329
    :cond_1
    if-eqz p1, :cond_2

    .line 330
    invoke-direct {v0}, Lcom/sleepycat/b/c/c;->j()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_2
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    .line 339
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->a()V

    .line 341
    :goto_0
    return-object v0

    .line 335
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;
    .locals 2

    .prologue
    .line 1492
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1494
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-nez v0, :cond_1

    .line 1495
    const/4 v0, 0x0

    .line 1498
    :goto_0
    return-object v0

    .line 1497
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 1498
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/l/y;[BZLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/p/ab;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/y;",
            "[BZ",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/m;",
            "Lcom/sleepycat/b/g/av;",
            ")",
            "Lcom/sleepycat/b/p/ab",
            "<",
            "Lcom/sleepycat/b/av;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    if-eqz p5, :cond_0

    .line 868
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/m;->a([B)V

    .line 870
    :cond_0
    if-eqz p6, :cond_1

    .line 871
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/m;->a([B)V

    .line 875
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 10485
    iget-object v4, v2, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 11140
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    move-result-object v2

    .line 11141
    if-eqz v2, :cond_3

    .line 11142
    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->P()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/l/a;->b([B)Z

    move-result v3

    if-nez v3, :cond_7

    .line 11145
    :cond_2
    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->C()V

    .line 11158
    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 11159
    :try_start_0
    iget-object v2, v4, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->c()V

    .line 11160
    invoke-virtual {v4}, Lcom/sleepycat/b/l/ah;->c()Z

    move-result v2

    if-nez v2, :cond_8

    .line 11161
    iget-object v2, v4, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 11162
    iget-object v2, v4, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->a()V

    .line 11163
    invoke-virtual {v4}, Lcom/sleepycat/b/l/ah;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11164
    iget-object v2, v4, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11259
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_4

    .line 11260
    iget-object v3, v4, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->d()V

    .line 11259
    :cond_4
    throw v2

    .line 11403
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    .line 11170
    iget-object v2, v4, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 12133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 12371
    iget-object v6, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 12492
    iget-object v7, v2, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 11186
    new-instance v2, Lcom/sleepycat/b/l/a;

    iget-object v8, v4, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    iget v9, v4, Lcom/sleepycat/b/l/ah;->c:I

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-direct {v2, v8, v0, v9, v10}, Lcom/sleepycat/b/l/a;-><init>(Lcom/sleepycat/b/c/i;[BII)V

    .line 11187
    invoke-virtual {v2, v5}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/a;)V

    .line 11188
    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/l/j;)J

    move-result-wide v8

    .line 11203
    new-instance v10, Lcom/sleepycat/b/l/j;

    iget-object v11, v4, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    iget v12, v4, Lcom/sleepycat/b/l/ah;->c:I

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-direct {v10, v11, v0, v12, v13}, Lcom/sleepycat/b/l/j;-><init>(Lcom/sleepycat/b/c/i;[BII)V

    .line 11210
    invoke-virtual {v10, v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 11211
    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/sleepycat/b/l/j;->c(Z)V

    .line 11213
    new-instance v5, Lcom/sleepycat/b/l/e;

    move-object/from16 v0, p2

    invoke-direct {v5, v2, v0, v8, v9}, Lcom/sleepycat/b/l/e;-><init>(Lcom/sleepycat/b/l/ac;[BJ)V

    invoke-virtual {v10, v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/e;)Z

    move-result v5

    .line 11215
    sget-boolean v8, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v8, :cond_6

    if-nez v5, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 11217
    :cond_6
    invoke-virtual {v10, v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;)J

    move-result-wide v8

    .line 11218
    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/sleepycat/b/l/j;->a(Z)V

    .line 11220
    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-virtual {v4, v10, v5, v8, v9}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ac;[BJ)Lcom/sleepycat/b/l/e;

    move-result-object v5

    iput-object v5, v4, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 11224
    invoke-virtual {v10}, Lcom/sleepycat/b/l/j;->C()V

    .line 11227
    invoke-virtual {v7, v2}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/l/j;)V

    .line 11228
    invoke-virtual {v7, v10}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/l/j;)V

    .line 11229
    iget-object v5, v4, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v5}, Lcom/sleepycat/b/f/f;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14395
    :goto_1
    iput-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 876
    :cond_7
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_9

    .line 15382
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 876
    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 11234
    :cond_8
    :try_start_2
    iget-object v2, v4, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 11235
    const/4 v3, 0x0

    .line 13403
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    .line 11246
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v2}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;

    move-result-object v2

    .line 11248
    if-eqz v2, :cond_3

    .line 11253
    check-cast v2, Lcom/sleepycat/b/l/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 880
    :cond_9
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/y;[BLcom/sleepycat/b/g/av;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 881
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/m;)V

    .line 882
    new-instance v2, Lcom/sleepycat/b/p/ab;

    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/b/p/ab;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 920
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    :goto_2
    return-object v2

    .line 16105
    :cond_a
    :try_start_4
    sget-object v2, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/c/d;

    move-result-object v3

    .line 16109
    invoke-virtual {v3}, Lcom/sleepycat/b/c/d;->a()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 16112
    :goto_3
    new-instance v4, Lcom/sleepycat/b/c/f;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sleepycat/b/c/f;-><init>(Lcom/sleepycat/b/c/c;B)V

    .line 16113
    iput-object v3, v4, Lcom/sleepycat/b/c/f;->b:Lcom/sleepycat/b/c/d;

    .line 16115
    if-eqz v2, :cond_d

    .line 16117
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/sleepycat/b/c/f;->a:Z

    .line 16118
    sget-boolean v2, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v2, :cond_b

    .line 893
    :cond_b
    :goto_4
    iget-boolean v2, v4, Lcom/sleepycat/b/c/f;->a:Z

    if-eqz v2, :cond_e

    .line 894
    iget-object v2, v4, Lcom/sleepycat/b/c/f;->b:Lcom/sleepycat/b/c/d;

    .line 17037
    iget-object v3, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 17133
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 17044
    iget-object v4, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    const-wide/16 v6, -0x1

    iget-object v8, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/d;->b()Lcom/sleepycat/b/n/am;

    move-result-object v9

    move-object v2, p1

    move-object/from16 v5, p2

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJLcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/am;Lcom/sleepycat/b/g/av;)J

    move-result-wide v6

    .line 17062
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->r(I)V

    .line 17063
    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v4, p0, Lcom/sleepycat/b/c/c;->b:I

    move-object v5, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;J[B)V

    .line 17064
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->c(I)V

    .line 17065
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->n(I)V

    .line 17067
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    iget-object v5, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v8, p0, Lcom/sleepycat/b/c/c;->b:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/b/c/c;->a(Ljava/util/logging/Level;Lcom/sleepycat/b/l/a;JI)V

    .line 895
    move-object/from16 v0, p6

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/m;)V

    .line 896
    new-instance v2, Lcom/sleepycat/b/p/ab;

    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/b/p/ab;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 920
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    goto :goto_2

    .line 16109
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 16121
    :cond_d
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, v4, Lcom/sleepycat/b/c/f;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 920
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v2

    .line 901
    :cond_e
    if-nez p3, :cond_f

    .line 902
    :try_start_6
    new-instance v2, Lcom/sleepycat/b/p/ab;

    sget-object v3, Lcom/sleepycat/b/av;->b:Lcom/sleepycat/b/av;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/b/p/ab;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 920
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    goto/16 :goto_2

    .line 17223
    :cond_f
    const/4 v2, 0x2

    :try_start_7
    iput-byte v2, p0, Lcom/sleepycat/b/c/c;->g:B

    .line 915
    const/4 v5, 0x0

    iget-object v8, v4, Lcom/sleepycat/b/c/f;->b:Lcom/sleepycat/b/c/d;

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/d;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 918
    new-instance v2, Lcom/sleepycat/b/p/ab;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/b/p/ab;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 920
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/sleepycat/b/c/c;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    sget-object v1, Lcom/sleepycat/b/a;->d:Lcom/sleepycat/b/a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    sget-object v1, Lcom/sleepycat/b/a;->f:Lcom/sleepycat/b/a;

    if-eq v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 4133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 279
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->E()V

    .line 282
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/a;)V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 4813
    sget-boolean v1, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4814
    :cond_0
    sget-object v1, Lcom/sleepycat/b/a;->g:Lcom/sleepycat/b/a;

    if-ne p1, v1, :cond_4

    .line 4817
    iget-object v1, v0, Lcom/sleepycat/b/c/i;->v:Lcom/sleepycat/b/b;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/sleepycat/b/c/i;->v:Lcom/sleepycat/b/b;

    .line 4820
    :goto_0
    if-nez v0, :cond_2

    .line 4821
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CacheMode.DYNAMIC may not be used without also configuring a CacheModeStrategy for the Database or Environment."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4817
    :cond_1
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 5114
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->l:Lcom/sleepycat/b/b;

    goto :goto_0

    .line 4825
    :cond_2
    invoke-interface {v0}, Lcom/sleepycat/b/b;->a()Lcom/sleepycat/b/a;

    move-result-object p1

    .line 4826
    if-eqz p1, :cond_3

    sget-object v1, Lcom/sleepycat/b/a;->g:Lcom/sleepycat/b/a;

    if-ne p1, v1, :cond_4

    .line 4827
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was illegally returned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :cond_4
    iput-object p1, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    .line 415
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/c;)V
    .locals 2

    .prologue
    .line 594
    sget-boolean v0, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 597
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->k()V

    .line 598
    invoke-direct {p0, p1}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/c/c;)V

    .line 600
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/n/q;->b(Lcom/sleepycat/b/c/c;)V

    .line 602
    iget-boolean v0, p0, Lcom/sleepycat/b/c/c;->f:Z

    if-nez v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->h()V

    .line 606
    :cond_1
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/sleepycat/b/c/c;->g:B

    .line 609
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->a()V

    .line 610
    return-void
.end method

.method public final a(Z)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1975
    sget-boolean v1, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v8}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1980
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->k()V

    .line 1981
    if-eqz p1, :cond_2

    .line 1982
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 37485
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 1982
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1987
    :goto_0
    if-eqz v2, :cond_6

    .line 1989
    :try_start_1
    sget-boolean v1, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v1, :cond_3

    instance-of v1, v2, Lcom/sleepycat/b/l/a;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_0

    .line 2022
    :catch_0
    move-exception v1

    .line 2024
    :goto_1
    if-eqz v2, :cond_1

    .line 2025
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    .line 2027
    :cond_1
    throw v1

    .line 1984
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 38485
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 1984
    iget-object v5, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    .line 38655
    const/4 v2, 0x0

    sget-object v3, Lcom/sleepycat/b/l/aj;->c:Lcom/sleepycat/b/l/aj;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/l/aj;Lcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;
    :try_end_2
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0

    .line 1991
    :cond_3
    :try_start_3
    move-object v0, v2

    check-cast v0, Lcom/sleepycat/b/l/a;

    move-object v1, v0

    iput-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 1992
    if-eqz p1, :cond_5

    :goto_2
    iput v8, p0, Lcom/sleepycat/b/c/c;->b:I

    .line 1993
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-direct {p0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/a;)V

    .line 1995
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->i()Lcom/sleepycat/b/l/am;

    move-result-object v1

    .line 1998
    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 40345
    iget v3, v3, Lcom/sleepycat/b/l/j;->f:I

    .line 1998
    if-eqz v3, :cond_4

    .line 2007
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/l/a;->l(I)Z

    .line 2017
    :cond_4
    const/4 v1, 0x1

    .line 41223
    :goto_3
    const/4 v3, 0x2

    iput-byte v3, p0, Lcom/sleepycat/b/c/c;->g:B

    .line 2021
    return v1

    .line 1992
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 39345
    iget v1, v1, Lcom/sleepycat/b/l/j;->f:I
    :try_end_3
    .catch Lcom/sleepycat/b/n; {:try_start_3 .. :try_end_3} :catch_0

    .line 1992
    add-int/lit8 v8, v1, -0x1

    goto :goto_2

    .line 2022
    :catch_1
    move-exception v1

    move-object v2, v7

    goto :goto_1

    :cond_6
    move v1, v8

    goto :goto_3
.end method

.method public final b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1476
    sget-boolean v3, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1477
    :cond_0
    sget-boolean v3, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/c;->d(Z)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 29212
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->i()Lcom/sleepycat/b/l/am;

    .line 29215
    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-nez v3, :cond_2

    .line 29216
    sget-object v0, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    return-object v0

    .line 29219
    :cond_2
    :try_start_1
    sget-boolean v3, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1482
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v0

    .line 29225
    :cond_3
    :try_start_2
    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    if-ltz v3, :cond_5

    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    iget-object v4, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 29345
    iget v4, v4, Lcom/sleepycat/b/l/j;->f:I

    .line 29225
    if-ge v3, v4, :cond_5

    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v4, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v4, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 29228
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/a;->q()V

    .line 29240
    :cond_5
    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/sleepycat/b/c/c;->b:I

    iget-object v4, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 30345
    iget v4, v4, Lcom/sleepycat/b/l/j;->f:I

    .line 29240
    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v4, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 29247
    :cond_6
    sget-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    goto :goto_0

    .line 29255
    :cond_7
    if-eqz p2, :cond_9

    .line 30355
    iget-boolean v3, p2, Lcom/sleepycat/b/m;->f:Z

    .line 29255
    if-eqz v3, :cond_8

    .line 31291
    iget v3, p2, Lcom/sleepycat/b/m;->b:I

    .line 29255
    if-eqz v3, :cond_9

    .line 29263
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-direct {p0, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/a;)V

    .line 31443
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/c/d;

    move-result-object v2

    .line 29273
    invoke-virtual {v2}, Lcom/sleepycat/b/c/d;->a()Z

    move-result v3

    if-nez v3, :cond_a

    .line 29274
    invoke-direct {p0, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/d;)V

    .line 29278
    sget-object v0, Lcom/sleepycat/b/av;->c:Lcom/sleepycat/b/av;

    goto :goto_0

    :cond_9
    move v0, v2

    .line 29255
    goto :goto_1

    .line 29280
    :cond_a
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v2, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/sleepycat/b/l/y;

    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 29281
    if-eqz v0, :cond_e

    .line 32145
    iget-object v0, v0, Lcom/sleepycat/b/l/y;->f:[B

    .line 29294
    :goto_3
    if-eqz p1, :cond_b

    .line 29295
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v2, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;[B)V

    .line 29299
    :cond_b
    if-eqz p2, :cond_10

    .line 32355
    iget-boolean v1, p2, Lcom/sleepycat/b/m;->f:Z

    .line 29299
    if-eqz v1, :cond_c

    .line 33291
    iget v1, p2, Lcom/sleepycat/b/m;->b:I

    .line 29299
    if-eqz v1, :cond_10

    .line 29302
    :cond_c
    sget-boolean v1, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v1, :cond_f

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    move-object v0, v1

    .line 29280
    goto :goto_2

    :cond_e
    move-object v0, v1

    .line 29281
    goto :goto_3

    .line 29303
    :cond_f
    invoke-static {p2, v0}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/m;[B)V

    .line 29306
    :cond_10
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final b()Lcom/sleepycat/b/l/a;
    .locals 2

    .prologue
    .line 470
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 472
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->h:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/a;)V

    .line 473
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-ne v1, v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 479
    :goto_1
    return-object v0

    .line 476
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/l/a;->C()V

    goto :goto_0

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1510
    :try_start_0
    sget-boolean v1, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/c/c;->b(Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v0

    .line 1511
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/sleepycat/b/c/c;->j:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sleepycat/b/c/c;->d(Z)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1513
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 1528
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    :goto_0
    return-object v0

    .line 1517
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-direct {p0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/l/a;)V

    .line 33443
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/c/d;

    move-result-object v1

    .line 1520
    invoke-virtual {v1}, Lcom/sleepycat/b/c/d;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1521
    invoke-direct {p0, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1528
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    goto :goto_0

    .line 1525
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/y;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1528
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    goto :goto_0
.end method

.method public final b(Z)Z
    .locals 1

    .prologue
    .line 2747
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/c;->c(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2748
    const/4 v0, 0x1

    .line 2750
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/a;->D()V

    .line 486
    :cond_0
    return-void
.end method

.method public final c(Lcom/sleepycat/b/n/o;)V
    .locals 7

    .prologue
    .line 2850
    iget-object v1, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    iget-object v0, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    .line 50223
    iget-wide v2, v0, Lcom/sleepycat/b/c/i;->h:J

    .line 2850
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sleepycat/b/c/c;->d:Lcom/sleepycat/b/c/i;

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/q;->a(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    .line 2852
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 2761
    iget-byte v0, p0, Lcom/sleepycat/b/c/c;->g:B

    packed-switch v0, :pswitch_data_0

    .line 2777
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown cursor status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/sleepycat/b/c/c;->g:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2763
    :pswitch_0
    if-eqz p1, :cond_0

    .line 2764
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2775
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2780
    :cond_0
    :pswitch_2
    return-void

    .line 2761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 546
    iget-byte v1, p0, Lcom/sleepycat/b/c/c;->g:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 561
    invoke-direct {p0}, Lcom/sleepycat/b/c/c;->k()V

    .line 562
    invoke-direct {p0, v1}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/c/c;)V

    .line 564
    iget-boolean v0, p0, Lcom/sleepycat/b/c/c;->f:Z

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/q;->k_()V

    .line 568
    :cond_0
    iput-object v1, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 569
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/c/c;->b:I

    .line 571
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/sleepycat/b/c/c;->g:B

    .line 574
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->a()V

    .line 575
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 754
    .line 9765
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 9767
    iget v0, p0, Lcom/sleepycat/b/c/c;->b:I

    if-ltz v0, :cond_0

    .line 9768
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->e(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9772
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    return-void

    .line 9771
    :catchall_0
    move-exception v0

    .line 9772
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v0
.end method

.method public final g()[B
    .locals 2

    .prologue
    .line 2318
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 2320
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/c/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_1

    .line 2325
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2323
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    iget v1, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->h(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2325
    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/c;->c()V

    throw v0
.end method

.method public final h()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2982
    const-string v0, "<Cursor idx=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sleepycat/b/c/c;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    const-string v0, " status=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v0, p0, Lcom/sleepycat/b/c/c;->g:B

    .line 50236
    packed-switch v0, :pswitch_data_0

    .line 50244
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UNKNOWN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2983
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    const-string v0, ">\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2986
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    const-string v0, "\n</Cursor>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2990
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50238
    :pswitch_0
    const-string v0, "CURSOR_NOT_INITIALIZED"

    goto :goto_0

    .line 50240
    :pswitch_1
    const-string v0, "CURSOR_INITIALIZED"

    goto :goto_0

    .line 50242
    :pswitch_2
    const-string v0, "CURSOR_CLOSED"

    goto :goto_0

    .line 2986
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/l/a;->a(IZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/sleepycat/b/c/c;->k:I

    return v0
.end method
