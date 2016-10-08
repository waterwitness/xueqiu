.class public Lcom/sleepycat/b/h/d;
.super Lcom/sleepycat/b/p/h;
.source "Checkpointer.java"

# interfaces
.implements Lcom/sleepycat/b/c/ab;


# static fields
.field public static a:Lcom/sleepycat/b/p/ao;

.field public static b:Lcom/sleepycat/b/p/ao;

.field public static c:Lcom/sleepycat/b/p/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/p/ao",
            "<",
            "Lcom/sleepycat/b/l/j;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic k:Z


# instance fields
.field public d:Lcom/sleepycat/b/c/ad;

.field public final e:J

.field public final f:J

.field g:J

.field public h:J

.field i:J

.field public final j:Lcom/sleepycat/b/h/h;

.field private t:J

.field private final u:J

.field private v:Z

.field private w:J

.field private final x:Lcom/sleepycat/b/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    const-class v0, Lcom/sleepycat/b/h/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/h/d;->k:Z

    .line 329
    sput-object v1, Lcom/sleepycat/b/h/d;->a:Lcom/sleepycat/b/p/ao;

    .line 331
    sput-object v1, Lcom/sleepycat/b/h/d;->b:Lcom/sleepycat/b/p/ao;

    .line 333
    sput-object v1, Lcom/sleepycat/b/h/d;->c:Lcom/sleepycat/b/p/ao;

    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;JLjava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 367
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sleepycat/b/p/h;-><init>(JLjava/lang/String;Lcom/sleepycat/b/c/ad;)V

    .line 368
    iput-object p1, p0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 369
    sget-object v1, Lcom/sleepycat/b/b/d;->av:Lcom/sleepycat/b/b/f;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/h/d;->e:J

    .line 4392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 372
    sget-object v1, Lcom/sleepycat/b/b/d;->N:Lcom/sleepycat/b/b/f;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/h/d;->f:J

    .line 374
    iput-wide p2, p0, Lcom/sleepycat/b/h/d;->u:J

    .line 375
    iput-wide v2, p0, Lcom/sleepycat/b/h/d;->g:J

    .line 377
    iput-wide v2, p0, Lcom/sleepycat/b/h/d;->w:J

    .line 378
    new-instance v0, Lcom/sleepycat/b/h/f;

    invoke-direct {v0}, Lcom/sleepycat/b/h/f;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    .line 380
    new-instance v0, Lcom/sleepycat/b/h/h;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/h/h;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    .line 5392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 6392
    sget-object v1, Lcom/sleepycat/b/b/d;->ay:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/h/d;->v:Z

    .line 384
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 385
    return-void
.end method

.method public static a(Lcom/sleepycat/b/c/m;)J
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 430
    sget-object v0, Lcom/sleepycat/b/b/d;->aw:Lcom/sleepycat/b/b/c;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v0, v0

    .line 432
    sget-object v4, Lcom/sleepycat/b/b/d;->av:Lcom/sleepycat/b/b/f;

    invoke-virtual {p0, v4}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v4

    .line 436
    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/b/b/d;->av:Lcom/sleepycat/b/b/f;

    .line 7090
    iget-object v2, v2, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/b/d;->aw:Lcom/sleepycat/b/b/c;

    .line 8090
    iget-object v2, v2, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot both be 0. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    .line 450
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/h/e;Lcom/sleepycat/b/h/h;IIZZLcom/sleepycat/b/h/f;Z)V
    .locals 25

    .prologue
    .line 1057
    move-object/from16 v14, p9

    move/from16 v13, p8

    move/from16 v12, p7

    move-object/from16 v2, p0

    .line 35485
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 1058
    const/4 v4, 0x0

    .line 1059
    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/sleepycat/b/h/e;->c:Z

    if-eqz v5, :cond_0

    .line 1062
    new-instance v4, Lcom/sleepycat/b/h/g;

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/sleepycat/b/h/e;->b:J

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1, v6, v7}, Lcom/sleepycat/b/h/g;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/am;J)V

    .line 1064
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;

    .line 35571
    iget-boolean v5, v4, Lcom/sleepycat/b/h/g;->a:Z

    .line 35575
    iget-boolean v4, v4, Lcom/sleepycat/b/h/g;->b:Z

    .line 1077
    if-eqz v5, :cond_0

    .line 36379
    iget-object v5, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1079
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/i;)V

    .line 1080
    iget-wide v6, v14, Lcom/sleepycat/b/h/f;->d:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v14, Lcom/sleepycat/b/h/f;->d:J

    .line 1081
    iget-wide v6, v14, Lcom/sleepycat/b/h/f;->a:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v14, Lcom/sleepycat/b/h/f;->a:J

    .line 1093
    :cond_0
    if-nez v4, :cond_16

    .line 1099
    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/sleepycat/b/h/e;->b:J

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/sleepycat/b/h/e;->d:[B

    const/4 v7, 0x0

    sget-object v8, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/sleepycat/b/l/ah;->a(J[BZLcom/sleepycat/b/a;ILjava/util/List;Z)Lcom/sleepycat/b/l/ae;

    move-result-object v18

    .line 1120
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    if-eqz v3, :cond_16

    .line 1121
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 36610
    iget v0, v4, Lcom/sleepycat/b/l/j;->j:I

    move/from16 v16, v0

    .line 1123
    const/4 v5, 0x0

    .line 1130
    const v3, 0xffff

    and-int v3, v3, v16

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    const/4 v3, 0x1

    .line 1140
    :goto_1
    move/from16 v0, p5

    move/from16 v1, p6

    if-lt v0, v1, :cond_5

    .line 1141
    sget-object v7, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    .line 1153
    :goto_2
    if-eqz v3, :cond_7

    if-eqz p10, :cond_7

    const/4 v15, 0x1

    .line 1162
    :goto_3
    if-eqz v15, :cond_8

    if-eqz v13, :cond_8

    .line 37553
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sleepycat/b/c/i;->e:Z

    .line 1162
    if-nez v3, :cond_8

    const/4 v3, 0x1

    move v9, v3

    .line 1172
    :goto_4
    const/4 v11, 0x0

    .line 1180
    const/4 v10, 0x0

    .line 1183
    :try_start_0
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v3, :cond_b

    .line 1189
    move-object/from16 v0, v18

    iget v3, v0, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v4, v3}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/l/j;

    .line 1191
    if-nez v3, :cond_9

    .line 1193
    const/4 v3, 0x1

    move v8, v11

    move/from16 v17, v15

    move v11, v3

    .line 1231
    :goto_5
    if-eqz v17, :cond_18

    .line 1245
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1246
    const/4 v3, 0x0

    move v6, v3

    .line 38345
    :goto_6
    iget v3, v4, Lcom/sleepycat/b/l/j;->f:I

    .line 1247
    if-ge v6, v3, :cond_c

    .line 1249
    invoke-virtual {v4, v6}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/l/j;

    .line 1250
    if-eqz v3, :cond_3

    .line 39342
    iget-wide v0, v3, Lcom/sleepycat/b/l/j;->c:J

    move-wide/from16 v20, v0

    .line 1251
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1252
    if-eqz v8, :cond_1

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/sleepycat/b/h/e;->b:J

    move-wide/from16 v20, v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v15, v20, v22

    if-eqz v15, :cond_2

    .line 39610
    :cond_1
    iget v3, v3, Lcom/sleepycat/b/l/j;->j:I

    .line 1252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v10}, Lcom/sleepycat/b/h/h;->a(Ljava/lang/Integer;Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1257
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v10, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    :cond_3
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_6

    .line 1130
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1142
    :cond_5
    if-eqz v3, :cond_6

    .line 1143
    sget-object v7, Lcom/sleepycat/b/g/au;->b:Lcom/sleepycat/b/g/au;

    goto :goto_2

    .line 1145
    :cond_6
    sget-object v7, Lcom/sleepycat/b/g/au;->c:Lcom/sleepycat/b/g/au;

    goto :goto_2

    .line 1153
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 1162
    :cond_8
    const/4 v3, 0x0

    move v9, v3

    goto :goto_4

    .line 1195
    :cond_9
    if-eqz v9, :cond_a

    .line 1196
    const/4 v3, 0x1

    move v8, v3

    move v11, v5

    move/from16 v17, v15

    goto :goto_5

    .line 1198
    :cond_a
    :try_start_1
    move-object/from16 v0, v18

    iget v3, v0, Lcom/sleepycat/b/l/ae;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    move-object/from16 v3, p4

    move v6, v12

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/h/h;Lcom/sleepycat/b/l/j;Ljava/util/Collection;ZLcom/sleepycat/b/g/au;Lcom/sleepycat/b/h/f;)Z

    move-result v3

    or-int/lit8 v3, v3, 0x0

    move v8, v11

    move/from16 v17, v15

    move v11, v3

    .line 1205
    goto :goto_5

    .line 1209
    :cond_b
    const/4 v6, 0x0

    .line 1211
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/sleepycat/b/l/ae;->c:Z

    if-eqz v3, :cond_19

    .line 1224
    move/from16 v0, v16

    move/from16 v1, p5

    if-le v0, v1, :cond_19

    .line 1225
    const/4 v3, 0x1

    move v8, v11

    move/from16 v17, v6

    move v11, v3

    goto/16 :goto_5

    .line 1262
    :cond_c
    if-eqz v9, :cond_17

    .line 1264
    invoke-interface {v5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v5

    move-object/from16 v3, p4

    move v6, v12

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/h/h;Lcom/sleepycat/b/l/j;Ljava/util/Collection;ZLcom/sleepycat/b/g/au;Lcom/sleepycat/b/h/f;)Z

    move-result v3

    or-int v5, v11, v3

    .line 1285
    const/4 v3, 0x0

    move-object/from16 v24, v3

    move v3, v5

    move-object/from16 v5, v24

    .line 1289
    :goto_7
    if-eqz v3, :cond_10

    .line 1292
    sget-boolean v3, Lcom/sleepycat/b/h/d;->k:Z

    if-nez v3, :cond_f

    .line 40357
    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/sleepycat/b/l/ae;->c:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, v18

    iget-boolean v3, v0, Lcom/sleepycat/b/l/ae;->a:Z

    if-nez v3, :cond_d

    .line 40364
    const/4 v3, 0x1

    .line 1292
    :goto_8
    if-nez v3, :cond_f

    new-instance v2, Ljava/lang/AssertionError;

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/sleepycat/b/h/e;->b:J

    .line 41376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41378
    const-string v5, " result="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41379
    const-string v5, " parent node="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 42342
    iget-wide v8, v4, Lcom/sleepycat/b/l/j;->c:J

    .line 41379
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41380
    const-string v5, " level="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 42610
    iget v8, v4, Lcom/sleepycat/b/l/j;->j:I

    .line 41380
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41381
    const-string v5, " child node="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41382
    const-string v5, " level="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41383
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1292
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    :catchall_0
    move-exception v2

    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V

    throw v2

    .line 40368
    :cond_d
    :try_start_2
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 40610
    iget v3, v3, Lcom/sleepycat/b/l/j;->j:I

    .line 40368
    add-int/lit8 v6, p5, 0x1

    if-ne v3, v6, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    .line 1301
    :cond_f
    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v3}, Lcom/sleepycat/b/h/h;->a(Lcom/sleepycat/b/l/j;Z)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1304
    :cond_10
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V

    .line 1313
    if-eqz v5, :cond_15

    .line 1314
    sget-boolean v3, Lcom/sleepycat/b/h/d;->k:Z

    if-nez v3, :cond_11

    if-nez v17, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1315
    :cond_11
    sget-boolean v3, Lcom/sleepycat/b/h/d;->k:Z

    if-nez v3, :cond_12

    if-eqz v9, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1316
    :cond_12
    invoke-interface {v5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_13
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1317
    sget-boolean v3, Lcom/sleepycat/b/h/d;->k:Z

    if-nez v3, :cond_14

    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/sleepycat/b/h/e;->b:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1318
    :cond_14
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v5}, Lcom/sleepycat/b/h/h;->b(Ljava/lang/Integer;Ljava/lang/Long;)Lcom/sleepycat/b/h/e;

    move-result-object v8

    .line 1320
    if-eqz v8, :cond_13

    .line 1321
    const/4 v15, 0x0

    move-object v5, v2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v15}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/h/e;Lcom/sleepycat/b/h/h;IIZZLcom/sleepycat/b/h/f;Z)V

    goto :goto_9

    .line 1337
    :cond_15
    if-eqz v17, :cond_16

    move/from16 v0, v16

    move/from16 v1, p6

    if-gt v0, v1, :cond_16

    .line 1338
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 43342
    iget-wide v4, v4, Lcom/sleepycat/b/l/j;->c:J

    .line 1338
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/b/h/h;->b(Ljava/lang/Integer;Ljava/lang/Long;)Lcom/sleepycat/b/h/e;

    move-result-object p3

    .line 1340
    if-eqz p3, :cond_16

    .line 1341
    const/16 p10, 0x0

    move/from16 p5, v16

    goto/16 :goto_0

    .line 1349
    :cond_16
    return-void

    :cond_17
    move v3, v11

    goto/16 :goto_7

    :cond_18
    move-object v5, v10

    move v3, v11

    goto/16 :goto_7

    :cond_19
    move v8, v11

    move/from16 v17, v6

    move v11, v5

    goto/16 :goto_5
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Z)V
    .locals 8

    .prologue
    .line 841
    .line 30330
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 841
    if-eqz v0, :cond_0

    .line 873
    :goto_0
    return-void

    .line 845
    :cond_0
    new-instance v2, Lcom/sleepycat/b/h/h;

    invoke-direct {v2, p0}, Lcom/sleepycat/b/h/h;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 846
    new-instance v7, Lcom/sleepycat/b/h/f;

    invoke-direct {v7}, Lcom/sleepycat/b/h/f;-><init>()V

    .line 30331
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v0, :cond_1

    iget v0, v2, Lcom/sleepycat/b/h/h;->c:I

    sget v1, Lcom/sleepycat/b/h/i;->a:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    :try_start_1
    const-string v1, "Checkpointer"

    const-string v3, "syncDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 870
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/sleepycat/b/h/h;->a()V

    throw v0

    .line 30496
    :cond_1
    :try_start_2
    iget-object v1, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 30335
    iget-object v0, v2, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 31492
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 30335
    invoke-virtual {v0}, Lcom/sleepycat/b/c/al;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 31748
    iget-object v4, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 32496
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 30336
    invoke-virtual {v4, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 30337
    sget-object v4, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V
    :try_end_2
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30339
    :try_start_3
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30340
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/sleepycat/b/h/h;->a(Lcom/sleepycat/b/l/j;Z)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30343
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    throw v1

    .line 30352
    :cond_4
    iget-object v0, v2, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    iget-object v1, v2, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 33379
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 30352
    invoke-static {p1}, Lcom/sleepycat/b/c/p;->d(Lcom/sleepycat/b/c/i;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30357
    invoke-virtual {v2}, Lcom/sleepycat/b/h/h;->c()V

    .line 851
    invoke-virtual {v2}, Lcom/sleepycat/b/h/h;->e()I

    move-result v0

    if-lez v0, :cond_5

    .line 853
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/h/h;ZJZLcom/sleepycat/b/h/f;)V

    .line 862
    if-eqz p2, :cond_5

    .line 34371
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 863
    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V
    :try_end_4
    .catch Lcom/sleepycat/b/n; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 872
    :cond_5
    invoke-virtual {v2}, Lcom/sleepycat/b/h/h;->a()V

    goto/16 :goto_0
.end method

.method private static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/h/h;ZJZLcom/sleepycat/b/h/f;)V
    .locals 19

    .prologue
    .line 904
    .line 35371
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 35379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 907
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 910
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/h/h;->b()I

    move-result v4

    if-lez v4, :cond_3

    .line 915
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/h/h;->d()Ljava/lang/Integer;

    move-result-object v17

    .line 916
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 923
    const/high16 v4, 0x20000

    if-ne v9, v4, :cond_0

    .line 924
    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/h/h;->a(J)V

    .line 929
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/h/h;->b(Ljava/lang/Integer;)Lcom/sleepycat/b/h/e;

    move-result-object v7

    .line 931
    if-eqz v7, :cond_2

    .line 940
    iget-object v4, v7, Lcom/sleepycat/b/h/e;->a:Lcom/sleepycat/b/c/h;

    const-wide/16 v10, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v10, v11, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;

    move-result-object v5

    .line 942
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v4

    if-nez v4, :cond_1

    .line 945
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sleepycat/b/h/h;->a(Lcom/sleepycat/b/c/i;)I

    move-result v10

    .line 946
    if-gt v9, v10, :cond_1

    .line 949
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/ad;->b(Z)V

    .line 951
    const/4 v14, 0x1

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    move/from16 v11, p2

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-static/range {v4 .. v14}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/h/e;Lcom/sleepycat/b/h/h;IIZZLcom/sleepycat/b/h/f;Z)V

    .line 961
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/ad;->g()V

    .line 971
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/c/ad;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 978
    :catchall_0
    move-exception v4

    invoke-virtual/range {v15 .. v16}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    throw v4

    .line 975
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/h/h;->a(Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 978
    :cond_3
    invoke-virtual/range {v15 .. v16}, Lcom/sleepycat/b/c/p;->a(Ljava/util/Map;)V

    .line 979
    return-void
.end method

.method private a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    const-string v1, "Checkpoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/d;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 823
    const-string v1, ": source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string v1, " success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 825
    const-string v1, " nFullINFlushThisRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    iget-object v1, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    iget-wide v2, v1, Lcom/sleepycat/b/h/f;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 827
    const-string v1, " nDeltaINFlushThisRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget-object v1, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    iget-wide v2, v1, Lcom/sleepycat/b/h/f;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 829
    iget-object v1, p0, Lcom/sleepycat/b/h/d;->r:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v2, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method private static a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/h/h;Lcom/sleepycat/b/l/j;Ljava/util/Collection;ZLcom/sleepycat/b/g/au;Lcom/sleepycat/b/h/f;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ad;",
            "Lcom/sleepycat/b/h/h;",
            "Lcom/sleepycat/b/l/j;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Lcom/sleepycat/b/g/au;",
            "Lcom/sleepycat/b/h/f;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1396
    .line 43371
    iget-object v4, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 1398
    new-instance v5, Lcom/sleepycat/b/l/p;

    invoke-direct {v5}, Lcom/sleepycat/b/l/p;-><init>()V

    .line 43717
    iget-object v2, p2, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 1399
    iput-object v2, v5, Lcom/sleepycat/b/l/p;->a:Lcom/sleepycat/b/c/i;

    .line 1400
    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/sleepycat/b/l/p;->e:Z

    .line 1401
    move/from16 v0, p4

    iput-boolean v0, v5, Lcom/sleepycat/b/l/p;->l:Z

    .line 1403
    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/sleepycat/b/l/p;->m:Z

    .line 1405
    const/4 v3, 0x0

    .line 1406
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    :try_start_0
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1410
    invoke-virtual {p2, v8}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/j;

    .line 44610
    iget v9, v2, Lcom/sleepycat/b/l/j;->j:I

    .line 1413
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 45342
    iget-wide v10, v2, Lcom/sleepycat/b/l/j;->c:J

    .line 1413
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/sleepycat/b/h/h;->b(Ljava/lang/Integer;Ljava/lang/Long;)Lcom/sleepycat/b/h/e;

    .line 1419
    sget-object v9, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v2, v9}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 1420
    new-instance v9, Lcom/sleepycat/b/l/q;

    invoke-direct {v9}, Lcom/sleepycat/b/l/q;-><init>()V

    .line 1421
    iput v8, v9, Lcom/sleepycat/b/l/q;->k:I

    .line 1422
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 45717
    iget-object v8, v2, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 46553
    iget-boolean v8, v8, Lcom/sleepycat/b/c/i;->e:Z

    .line 1426
    if-eqz v8, :cond_0

    .line 1443
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->x()V

    .line 1447
    :cond_0
    move-object/from16 v0, p5

    iput-object v0, v9, Lcom/sleepycat/b/l/q;->e:Lcom/sleepycat/b/g/au;

    .line 1448
    sget-object v8, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    iput-object v8, v9, Lcom/sleepycat/b/l/q;->f:Lcom/sleepycat/b/g/av;

    .line 1449
    iput-object p2, v9, Lcom/sleepycat/b/l/q;->j:Lcom/sleepycat/b/l/j;

    .line 1457
    invoke-virtual {v2, v9, v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/q;Lcom/sleepycat/b/l/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1504
    :catchall_0
    move-exception v2

    move-object v3, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/q;

    .line 1505
    iget v2, v2, Lcom/sleepycat/b/l/q;->k:I

    invoke-virtual {p2, v2}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/j;

    .line 1506
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_1

    .line 1460
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1461
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    .line 1464
    const/4 v3, 0x1

    .line 1466
    goto :goto_0

    .line 1473
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sleepycat/b/g/al;

    .line 1474
    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sleepycat/b/g/al;

    invoke-virtual {v4, v2, v5}, Lcom/sleepycat/b/g/am;->a([Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V

    .line 1476
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/q;

    .line 1477
    iget v3, v2, Lcom/sleepycat/b/l/q;->k:I

    invoke-virtual {p2, v3}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/l/j;

    .line 1480
    invoke-virtual {v3, v2}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/q;)V

    .line 1483
    sget-boolean v5, Lcom/sleepycat/b/h/d;->k:Z

    if-nez v5, :cond_3

    iget-wide v8, v2, Lcom/sleepycat/b/l/q;->d:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1484
    :cond_3
    iget v5, v2, Lcom/sleepycat/b/l/q;->k:I

    iget-wide v8, v2, Lcom/sleepycat/b/l/q;->d:J

    invoke-virtual {p2, v5, v8, v9}, Lcom/sleepycat/b/l/j;->c(IJ)V

    .line 1487
    iget-boolean v2, v2, Lcom/sleepycat/b/l/q;->l:Z

    if-eqz v2, :cond_5

    .line 1488
    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/sleepycat/b/h/f;->f:J

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    move-object/from16 v0, p6

    iput-wide v2, v0, Lcom/sleepycat/b/h/f;->f:J

    .line 1489
    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/sleepycat/b/h/f;->c:J

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    move-object/from16 v0, p6

    iput-wide v2, v0, Lcom/sleepycat/b/h/f;->c:J

    .line 1500
    :cond_4
    :goto_3
    const/4 v2, 0x1

    move v3, v2

    .line 1501
    goto :goto_2

    .line 1491
    :cond_5
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/sleepycat/b/h/f;->d:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p6

    iput-wide v8, v0, Lcom/sleepycat/b/h/f;->d:J

    .line 1492
    move-object/from16 v0, p6

    iget-wide v8, v0, Lcom/sleepycat/b/h/f;->a:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p6

    iput-wide v8, v0, Lcom/sleepycat/b/h/f;->a:J

    .line 1493
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1494
    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/sleepycat/b/h/f;->b:J

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    move-object/from16 v0, p6

    iput-wide v2, v0, Lcom/sleepycat/b/h/f;->b:J

    .line 1495
    move-object/from16 v0, p6

    iget-wide v2, v0, Lcom/sleepycat/b/h/f;->e:J

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    move-object/from16 v0, p6

    iput-wide v2, v0, Lcom/sleepycat/b/h/f;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1504
    :cond_6
    throw v3

    .line 1502
    :cond_7
    return v3

    .line 1504
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/q;

    .line 1505
    iget v2, v2, Lcom/sleepycat/b/l/q;->k:I

    invoke-virtual {p2, v2}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/j;

    .line 1506
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_4
.end method

.method private a(Lcom/sleepycat/b/c;)Z
    .locals 17

    .prologue
    .line 541
    const-wide/16 v10, 0x0

    .line 542
    const-wide/16 v6, 0x0

    .line 543
    const-wide/16 v4, -0x1

    .line 544
    const/4 v8, 0x0

    .line 9132
    :try_start_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/sleepycat/b/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    if-eqz v2, :cond_2

    .line 547
    const/4 v2, 0x1

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    const-string v8, "size interval="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 589
    const-string v8, " nextLsn="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/h/d;->i:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 593
    const-string v4, " lastCkpt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/h/d;->i:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_1
    const-string v4, " time interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 597
    const-string v4, " force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 14132
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/sleepycat/b/c;->b:Z

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 598
    const-string v4, " runnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/h/d;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 548
    const/4 v2, 0x1

    .line 584
    :goto_0
    return v2

    .line 10067
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sleepycat/b/c;->c:I

    .line 549
    if-eqz v2, :cond_5

    .line 11067
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sleepycat/b/c;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    shl-int/lit8 v2, v2, 0xa

    int-to-long v10, v2

    move-wide v12, v10

    move-wide v10, v6

    .line 564
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_8

    .line 565
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 12375
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 12465
    iget-wide v2, v2, Lcom/sleepycat/b/g/m;->p:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 566
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/h/d;->h:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/h/d;->f:J

    invoke-static/range {v2 .. v7}, Lcom/sleepycat/b/p/j;->a(JJJ)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v4

    cmp-long v4, v4, v12

    if-ltz v4, :cond_c

    .line 569
    const/4 v4, 0x1

    move/from16 v16, v4

    move-wide v4, v2

    move/from16 v2, v16

    .line 586
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    const-string v6, "size interval="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 589
    const-string v6, " nextLsn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/h/d;->i:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 593
    const-string v4, " lastCkpt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/h/d;->i:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_4
    const-string v4, " time interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 597
    const-string v4, " force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 14132
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/sleepycat/b/c;->b:Z

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 598
    const-string v4, " runnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 11100
    :cond_5
    :try_start_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sleepycat/b/c;->d:I

    .line 551
    if-eqz v2, :cond_6

    .line 12100
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sleepycat/b/c;->d:I

    .line 553
    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    move-wide v12, v10

    move-wide v10, v6

    goto/16 :goto_1

    .line 554
    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sleepycat/b/h/d;->e:J

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-eqz v2, :cond_7

    .line 555
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sleepycat/b/h/d;->e:J

    move-wide v12, v10

    move-wide v10, v6

    goto/16 :goto_1

    .line 557
    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/h/d;->u:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide v12, v10

    move-wide v10, v6

    goto/16 :goto_1

    .line 571
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_b

    .line 577
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 13375
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 13474
    iget-wide v2, v2, Lcom/sleepycat/b/g/m;->q:J

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sleepycat/b/h/d;->g:J

    sub-long/2addr v6, v14

    cmp-long v6, v6, v10

    if-ltz v6, :cond_b

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/h/d;->i:J

    invoke-static {v2, v3, v6, v7}, Lcom/sleepycat/b/p/j;->b(JJ)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-eqz v2, :cond_b

    .line 581
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 586
    :catchall_0
    move-exception v2

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    const-string v9, "size interval="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    const-wide/16 v10, -0x1

    cmp-long v9, v4, v10

    if-eqz v9, :cond_9

    .line 589
    const-string v9, " nextLsn="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_9
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/h/d;->i:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-eqz v4, :cond_a

    .line 593
    const-string v4, " lastCkpt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/h/d;->i:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_a
    const-string v4, " time interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 597
    const-string v4, " force="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 14132
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/sleepycat/b/c;->b:Z

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 598
    const-string v4, " runnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->r:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 586
    throw v2

    :catchall_1
    move-exception v2

    move-wide v6, v10

    move-wide v10, v12

    goto :goto_3

    :catchall_2
    move-exception v4

    move-wide v6, v10

    move-wide v10, v12

    move-object/from16 v16, v4

    move-wide v4, v2

    move-object/from16 v2, v16

    goto :goto_3

    :cond_b
    move v2, v8

    goto/16 :goto_2

    :cond_c
    move-wide v4, v2

    move v2, v8

    goto/16 :goto_2
.end method


# virtual methods
.method protected final a()J
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 8392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 493
    sget-object v1, Lcom/sleepycat/b/b/d;->ax:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 465
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Checkpoints"

    const-string v2, "Frequency and extent of checkpointing activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v1, Lcom/sleepycat/b/p/z;

    sget-object v2, Lcom/sleepycat/b/h/c;->b:Lcom/sleepycat/b/p/ag;

    iget-wide v4, p0, Lcom/sleepycat/b/h/d;->t:J

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 467
    new-instance v1, Lcom/sleepycat/b/p/z;

    sget-object v2, Lcom/sleepycat/b/h/c;->a:Lcom/sleepycat/b/p/ag;

    iget-wide v4, p0, Lcom/sleepycat/b/h/d;->w:J

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 468
    new-instance v1, Lcom/sleepycat/b/p/t;

    sget-object v2, Lcom/sleepycat/b/h/c;->f:Lcom/sleepycat/b/p/ag;

    iget-wide v4, p0, Lcom/sleepycat/b/h/d;->h:J

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/sleepycat/b/p/t;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 469
    new-instance v1, Lcom/sleepycat/b/p/t;

    sget-object v2, Lcom/sleepycat/b/h/c;->g:Lcom/sleepycat/b/p/ag;

    iget-wide v4, p0, Lcom/sleepycat/b/h/d;->i:J

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/sleepycat/b/p/t;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 470
    new-instance v1, Lcom/sleepycat/b/p/z;

    sget-object v2, Lcom/sleepycat/b/h/c;->c:Lcom/sleepycat/b/p/ag;

    iget-object v3, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    iget-wide v4, v3, Lcom/sleepycat/b/h/f;->a:J

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 471
    new-instance v1, Lcom/sleepycat/b/p/z;

    sget-object v2, Lcom/sleepycat/b/h/c;->d:Lcom/sleepycat/b/p/ag;

    iget-object v3, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    iget-wide v4, v3, Lcom/sleepycat/b/h/f;->b:J

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 472
    new-instance v1, Lcom/sleepycat/b/p/z;

    sget-object v2, Lcom/sleepycat/b/h/c;->e:Lcom/sleepycat/b/p/ag;

    iget-object v3, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    iget-wide v4, v3, Lcom/sleepycat/b/h/f;->c:J

    invoke-direct {v1, v0, v2, v4, v5}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 8103
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 474
    if-eqz v1, :cond_0

    .line 475
    iput-wide v6, p0, Lcom/sleepycat/b/h/d;->w:J

    .line 476
    iget-object v1, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    iput-wide v6, v1, Lcom/sleepycat/b/h/f;->a:J

    .line 477
    iget-object v1, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    iput-wide v6, v1, Lcom/sleepycat/b/h/f;->b:J

    .line 478
    iget-object v1, p0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    iput-wide v6, v1, Lcom/sleepycat/b/h/f;->c:J

    .line 481
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/sleepycat/b/h/d;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/c;Ljava/lang/String;)V
    .locals 35

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 14330
    iget-boolean v4, v4, Lcom/sleepycat/b/c/ad;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 617
    if-eqz v4, :cond_1

    .line 815
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 621
    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15166
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/sleepycat/b/c;->e:Z

    .line 646
    const/4 v4, 0x0

    .line 647
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 15504
    iget-object v0, v6, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    move-object/from16 v32, v0

    .line 648
    invoke-virtual/range {v32 .. v32}, Lcom/sleepycat/b/a/c;->c()Lcom/sleepycat/b/a/l;

    move-result-object v33

    .line 650
    invoke-virtual/range {v33 .. v33}, Lcom/sleepycat/b/a/l;->a()Z

    move-result v6

    if-nez v6, :cond_2

    .line 651
    const/4 v4, 0x1

    .line 654
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/h/d;->g:J

    .line 655
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    .line 15658
    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/sleepycat/b/h/f;->d:J

    .line 15659
    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/sleepycat/b/h/f;->e:J

    .line 15660
    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/sleepycat/b/h/f;->f:J

    .line 658
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/h/d;->t:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/h/d;->t:J

    .line 659
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/h/d;->w:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/h/d;->w:J

    .line 661
    const/16 v31, 0x0

    .line 662
    const/16 v30, 0x0

    .line 664
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 16371
    iget-object v0, v6, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    move-object/from16 v34, v0

    .line 670
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    invoke-virtual {v6, v5, v4}, Lcom/sleepycat/b/h/h;->a(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 685
    :try_start_2
    sget-object v4, Lcom/sleepycat/b/g/af;->s:Lcom/sleepycat/b/g/af;

    new-instance v5, Lcom/sleepycat/b/h/b;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/h/d;->t:J

    move-object/from16 v0, p2

    invoke-direct {v5, v6, v7, v0}, Lcom/sleepycat/b/h/b;-><init>(JLjava/lang/String;)V

    invoke-static {v4, v5}, Lcom/sleepycat/b/g/a/q;->a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;

    move-result-object v4

    .line 689
    sget-object v5, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/g/am;->b(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J

    move-result-wide v8

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 16496
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 714
    invoke-virtual {v4}, Lcom/sleepycat/b/n/aj;->a()J

    move-result-wide v12

    .line 715
    const-wide/16 v4, -0x1

    cmp-long v4, v12, v4

    if-nez v4, :cond_3

    move-wide v12, v8

    .line 726
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v4}, Lcom/sleepycat/b/c/ad;->U()V

    .line 729
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    .line 17192
    sget-boolean v4, Lcom/sleepycat/b/h/h;->d:Z

    if-nez v4, :cond_5

    iget v4, v6, Lcom/sleepycat/b/h/h;->c:I

    sget v5, Lcom/sleepycat/b/h/i;->b:I

    if-eq v4, v5, :cond_5

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_2
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 799
    :catch_0
    move-exception v4

    move/from16 v5, v30

    move/from16 v6, v31

    .line 800
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    const-string v8, "Checkpointer"

    const-string v9, "doCheckpoint"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "checkpointId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sleepycat/b/h/d;->t:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10, v4}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 803
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    :catchall_0
    move-exception v4

    move/from16 v30, v5

    move/from16 v31, v6

    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    invoke-virtual {v5}, Lcom/sleepycat/b/h/h;->a()V

    .line 812
    if-nez v30, :cond_4

    .line 813
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v31

    invoke-direct {v0, v5, v1, v2}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Z)V

    .line 810
    :cond_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 617
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 17198
    :cond_5
    :try_start_5
    iget-object v4, v6, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 17492
    iget-object v7, v4, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 18402
    iget-object v4, v7, Lcom/sleepycat/b/c/al;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 18403
    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/sleepycat/b/c/al;->c:Z

    .line 18404
    iget-boolean v4, v7, Lcom/sleepycat/b/c/al;->d:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v7, Lcom/sleepycat/b/c/al;->d:Z
    :try_end_5
    .catch Lcom/sleepycat/b/n; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 17200
    const/4 v10, 0x0

    .line 17202
    :try_start_6
    invoke-virtual {v7}, Lcom/sleepycat/b/c/al;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/j;

    .line 17203
    sget-object v11, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v4, v11}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/a;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 18415
    :try_start_7
    sget-boolean v11, Lcom/sleepycat/b/c/al;->j:Z

    if-nez v11, :cond_7

    iget-boolean v11, v7, Lcom/sleepycat/b/c/al;->c:Z

    if-nez v11, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 17213
    :catchall_2
    move-exception v5

    :try_start_8
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V

    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 17222
    :catchall_3
    move-exception v4

    .line 19465
    :try_start_9
    sget-boolean v5, Lcom/sleepycat/b/c/al;->j:Z

    if-nez v5, :cond_b

    iget-boolean v5, v7, Lcom/sleepycat/b/c/al;->c:Z

    if-nez v5, :cond_b

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_9
    .catch Lcom/sleepycat/b/n; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 810
    :catchall_4
    move-exception v4

    goto :goto_2

    .line 18404
    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 18416
    :cond_7
    :try_start_a
    iget-boolean v11, v7, Lcom/sleepycat/b/c/al;->e:Z

    if-eqz v11, :cond_8

    iget-boolean v11, v7, Lcom/sleepycat/b/c/al;->d:Z

    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->H()Z

    move-result v14

    if-eq v11, v14, :cond_8

    .line 18868
    const/4 v11, 0x0

    iput v11, v4, Lcom/sleepycat/b/l/j;->n:I

    .line 18869
    iget-wide v14, v4, Lcom/sleepycat/b/l/j;->k:J

    .line 18419
    iget-object v11, v7, Lcom/sleepycat/b/c/al;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11, v14, v15}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 18421
    :cond_8
    iget-boolean v11, v7, Lcom/sleepycat/b/c/al;->d:Z

    invoke-virtual {v4, v11}, Lcom/sleepycat/b/l/j;->b(Z)V

    .line 17207
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->G()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 17208
    invoke-virtual {v6, v4}, Lcom/sleepycat/b/h/h;->a(Lcom/sleepycat/b/l/j;)V

    .line 17211
    :cond_9
    invoke-virtual {v6, v4}, Lcom/sleepycat/b/h/h;->b(Lcom/sleepycat/b/l/j;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 17213
    :try_start_b
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_4

    .line 17220
    :cond_a
    const/4 v4, 0x1

    .line 19465
    :try_start_c
    sget-boolean v5, Lcom/sleepycat/b/c/al;->j:Z

    if-nez v5, :cond_c

    iget-boolean v5, v7, Lcom/sleepycat/b/c/al;->c:Z

    if-nez v5, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 19471
    :cond_b
    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/sleepycat/b/c/al;->c:Z

    .line 19472
    iput-boolean v10, v7, Lcom/sleepycat/b/c/al;->e:Z

    .line 17222
    throw v4

    .line 19466
    :cond_c
    iget-boolean v5, v7, Lcom/sleepycat/b/c/al;->e:Z

    if-eqz v5, :cond_d

    .line 19468
    iget-object v5, v7, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 19508
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 19468
    iget-object v10, v7, Lcom/sleepycat/b/c/al;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/sleepycat/b/c/ao;->b(J)V

    .line 19471
    :cond_d
    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/sleepycat/b/c/al;->c:Z

    .line 19472
    iput-boolean v4, v7, Lcom/sleepycat/b/c/al;->e:Z

    .line 17235
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 17239
    monitor-enter v6
    :try_end_c
    .catch Lcom/sleepycat/b/n; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 17240
    :try_start_d
    iget-object v4, v6, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/c/i;

    .line 17241
    iget-object v10, v6, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_e

    .line 17242
    const/4 v10, 0x0

    invoke-interface {v7, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 17245
    :catchall_5
    move-exception v4

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    throw v4
    :try_end_e
    .catch Lcom/sleepycat/b/n; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :cond_f
    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 17248
    :try_start_10
    iget-object v4, v6, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 20379
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 17249
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 17250
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/b/c/i;

    invoke-static {v5}, Lcom/sleepycat/b/c/p;->d(Lcom/sleepycat/b/c/i;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 17254
    :cond_10
    monitor-enter v6
    :try_end_10
    .catch Lcom/sleepycat/b/n; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 17256
    :try_start_11
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 17257
    iget-object v7, v6, Lcom/sleepycat/b/h/h;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 17259
    :catchall_6
    move-exception v4

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v4
    :try_end_12
    .catch Lcom/sleepycat/b/n; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :cond_11
    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 17262
    :try_start_14
    monitor-enter v6
    :try_end_14
    .catch Lcom/sleepycat/b/n; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 17263
    :try_start_15
    invoke-virtual {v6}, Lcom/sleepycat/b/h/h;->c()V

    .line 17264
    sget v4, Lcom/sleepycat/b/h/i;->c:I

    iput v4, v6, Lcom/sleepycat/b/h/h;->c:I

    .line 17265
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 735
    :try_start_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sleepycat/b/h/d;->v:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sleepycat/b/h/d;->x:Lcom/sleepycat/b/h/f;

    invoke-static/range {v5 .. v11}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/h/h;ZJZLcom/sleepycat/b/h/f;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    invoke-virtual {v4, v8, v9}, Lcom/sleepycat/b/h/h;->a(J)V

    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    .line 20568
    iget-object v5, v4, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    .line 21379
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 20569
    sget-object v6, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v5, v6}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/b/c/i;->y()Z

    move-result v6

    if-nez v6, :cond_12

    sget-object v6, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v5, v6}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/b/c/i;->y()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 20571
    :cond_12
    iget-object v4, v4, Lcom/sleepycat/b/h/h;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v4, v8, v9}, Lcom/sleepycat/b/c/ad;->a(J)V

    .line 750
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v4}, Lcom/sleepycat/b/c/ad;->S()V

    .line 756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 22095
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 22468
    iget-object v4, v4, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    .line 756
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 23088
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 23464
    iget-object v5, v5, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 756
    invoke-virtual {v5}, Lcom/sleepycat/b/a/ae;->a()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/a/ad;->a(Ljava/util/Collection;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 24379
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 760
    invoke-virtual/range {v33 .. v33}, Lcom/sleepycat/b/a/l;->a()Z

    move-result v5

    if-nez v5, :cond_14

    const/16 v28, 0x1

    .line 761
    :goto_8
    new-instance v6, Lcom/sleepycat/b/h/a;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 25290
    iget-wide v10, v5, Lcom/sleepycat/b/c/ad;->r:J

    .line 761
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 25396
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->ac:Lcom/sleepycat/b/c/as;

    .line 26070
    iget-object v5, v5, Lcom/sleepycat/b/c/as;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    .line 761
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 26396
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->ac:Lcom/sleepycat/b/c/as;

    .line 27074
    iget-object v5, v5, Lcom/sleepycat/b/c/as;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    .line 27374
    iget-object v5, v4, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    .line 27378
    iget-object v4, v4, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v20

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 27496
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 28133
    iget-object v4, v4, Lcom/sleepycat/b/n/aj;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    .line 761
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    .line 28496
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 29137
    iget-object v4, v4, Lcom/sleepycat/b/n/aj;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v24

    .line 761
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sleepycat/b/h/d;->t:J

    move-wide/from16 v26, v0

    .line 29497
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    invoke-virtual {v4}, Lcom/sleepycat/b/a/aa;->a()Lcom/sleepycat/b/a/d;

    move-result-object v29

    move-object/from16 v7, p2

    .line 761
    invoke-direct/range {v6 .. v29}, Lcom/sleepycat/b/h/a;-><init>(Ljava/lang/String;JJJJJJJJJJZLcom/sleepycat/b/a/d;)V

    .line 771
    sget-object v4, Lcom/sleepycat/b/g/af;->t:Lcom/sleepycat/b/g/af;

    invoke-static {v4, v6}, Lcom/sleepycat/b/g/a/q;->a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;

    move-result-object v4

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v6}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Z)V
    :try_end_16
    .catch Lcom/sleepycat/b/n; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 783
    const/4 v5, 0x1

    .line 789
    :try_start_17
    sget-object v6, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v6}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/h/d;->i:J

    .line 794
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/sleepycat/b/h/d;->h:J
    :try_end_17
    .catch Lcom/sleepycat/b/n; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 796
    const/4 v6, 0x1

    .line 29952
    :try_start_18
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/a/l;)V

    .line 29953
    invoke-virtual/range {v32 .. v32}, Lcom/sleepycat/b/a/c;->b()V
    :try_end_18
    .catch Lcom/sleepycat/b/n; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 810
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/d;->j:Lcom/sleepycat/b/h/h;

    invoke-virtual {v4}, Lcom/sleepycat/b/h/h;->a()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_0

    .line 17265
    :catchall_7
    move-exception v4

    :try_start_1a
    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :try_start_1b
    throw v4
    :try_end_1b
    .catch Lcom/sleepycat/b/n; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 760
    :cond_14
    const/16 v28, 0x0

    goto/16 :goto_8

    .line 810
    :catchall_8
    move-exception v4

    move/from16 v30, v5

    goto/16 :goto_2

    .line 799
    :catch_1
    move-exception v4

    move/from16 v6, v31

    goto/16 :goto_1

    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v0, Lcom/sleepycat/b/c;->a:Lcom/sleepycat/b/c;

    const-string v1, "daemon"

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 485
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sleepycat/b/h/d;->d:Lcom/sleepycat/b/c/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
