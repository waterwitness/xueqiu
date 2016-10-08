.class final Lcom/sleepycat/b/i/c/b/am;
.super Lcom/sleepycat/b/p/aj;
.source "Replica.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field volatile a:I

.field final synthetic c:Lcom/sleepycat/b/i/c/b/ag;

.field private final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sleepycat/b/i/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1009
    const-class v0, Lcom/sleepycat/b/i/c/b/ag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/am;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    .line 1034
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/am;->a:I

    .line 1036
    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 2528
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 1036
    sget-object v1, Lcom/sleepycat/b/i/c/an;->e:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    .line 1038
    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/ag;->b(Lcom/sleepycat/b/i/c/b/ag;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/ag;->c(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Replay thread started. Message queue size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1041
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/am;->d:Ljava/util/concurrent/BlockingQueue;

    .line 1042
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/b/am;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/am;->d:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/b/am;)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/am;->e:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/ag;->b(Lcom/sleepycat/b/i/c/b/ag;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 1047
    sget v0, Lcom/sleepycat/b/i/c/b/al;->a:I

    iput v0, p0, Lcom/sleepycat/b/i/c/b/am;->a:I

    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 29

    .prologue
    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v2

    .line 3528
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 4392
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 3516
    sget-object v3, Lcom/sleepycat/b/i/c/an;->z:Lcom/sleepycat/b/b/e;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v18

    .line 1057
    const-wide/16 v2, 0x0

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/ag;->f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v5}, Lcom/sleepycat/b/i/c/b/ag;->d(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/h/p;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v6}, Lcom/sleepycat/b/i/c/b/ag;->e(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/e/t;

    move-result-object v6

    .line 5322
    iput-object v5, v4, Lcom/sleepycat/b/i/c/b/ac;->k:Lcom/sleepycat/b/i/h/o;

    .line 5323
    iput-object v6, v4, Lcom/sleepycat/b/i/c/b/ac;->l:Lcom/sleepycat/b/i/e/t;

    move-wide/from16 v16, v2

    .line 1064
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;

    move-result-object v2

    .line 6155
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ac;->m:Lcom/sleepycat/b/i/c/b/ad;

    .line 6233
    iget v3, v2, Lcom/sleepycat/b/i/c/b/ad;->b:I

    if-nez v3, :cond_4

    .line 6234
    const-wide/32 v2, 0x3b9aca00

    .line 1067
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/am;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v2, v3, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sleepycat/b/i/h/d;

    .line 1071
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/i/c/b/am;->a:I

    sget v3, Lcom/sleepycat/b/i/c/b/al;->a:I

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/i/c/b/am;->a:I

    sget v3, Lcom/sleepycat/b/i/c/b/al;->b:I

    if-ne v2, v3, :cond_1

    if-eqz v15, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/aa;->k()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1076
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sleepycat/b/i/c/b/am;->a:I

    sget v3, Lcom/sleepycat/b/i/c/b/al;->b:I

    if-ne v2, v3, :cond_3

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;

    move-result-object v2

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/i/c/b/ac;->a(J)V

    .line 1155
    :cond_3
    :goto_2
    return-void

    .line 6236
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 6238
    iget-wide v2, v2, Lcom/sleepycat/b/i/c/b/ad;->c:J

    sub-long/2addr v2, v4

    .line 6239
    const-wide/32 v4, 0x3b9aca00

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_1

    .line 1082
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/i/c/b/ac;->a(J)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v2

    .line 6462
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 1085
    invoke-virtual {v2}, Lcom/sleepycat/b/i/e/n;->e()V

    .line 1087
    if-eqz v15, :cond_0

    .line 1093
    invoke-virtual {v15}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v2

    .line 1095
    sget-object v3, Lcom/sleepycat/b/i/e/t;->w:Lcom/sleepycat/b/i/h/e;

    if-ne v2, v3, :cond_6

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    check-cast v15, Lcom/sleepycat/b/i/e/as;

    invoke-static {v2, v15}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/i/e/as;)Lcom/sleepycat/b/i/d;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1137
    :catch_0
    move-exception v2

    .line 1138
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->e:Ljava/lang/Exception;

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/am;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/ag;->d(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/h/p;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/ag;->b(Lcom/sleepycat/b/i/c/b/ag;)Ljava/util/logging/Logger;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/ag;->c(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Replay thread exiting with exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_2

    .line 1099
    :cond_6
    :try_start_1
    sget-object v3, Lcom/sleepycat/b/i/e/t;->n:Lcom/sleepycat/b/i/h/e;

    if-ne v2, v3, :cond_d

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/ag;->d(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/h/p;

    move-result-object v3

    check-cast v15, Lcom/sleepycat/b/i/e/ae;

    invoke-static {v2, v3, v15}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/ae;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->g(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/c;

    move-result-object v3

    .line 7082
    iget v2, v3, Lcom/sleepycat/b/i/c/b/c;->c:I

    if-lez v2, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/sleepycat/b/i/c/b/c;->e:J

    sub-long/2addr v4, v6

    iget v2, v3, Lcom/sleepycat/b/i/c/b/c;->c:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-lez v2, :cond_a

    .line 7087
    :cond_7
    iget-object v2, v3, Lcom/sleepycat/b/i/c/b/c;->a:Lcom/sleepycat/b/i/c/b/d;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/d;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7088
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/i/c/b/e;

    .line 7089
    iget v5, v2, Lcom/sleepycat/b/i/c/b/e;->a:I

    iget v6, v3, Lcom/sleepycat/b/i/c/b/c;->d:I

    if-ge v5, v6, :cond_8

    .line 7090
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/e;->b:Lcom/sleepycat/b/c/i;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/i/c/b/c;->a(Lcom/sleepycat/b/c/i;)V

    .line 7091
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 7094
    :cond_9
    iget v2, v3, Lcom/sleepycat/b/i/c/b/c;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/sleepycat/b/i/c/b/c;->d:I

    .line 7095
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sleepycat/b/i/c/b/c;->e:J

    .line 1129
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->j(Lcom/sleepycat/b/i/c/b/ag;)I

    move-result v2

    if-lez v2, :cond_b

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->j(Lcom/sleepycat/b/i/c/b/ag;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1133
    :cond_b
    const-wide/16 v2, 0x1

    add-long v2, v2, v16

    move/from16 v0, v18

    int-to-long v4, v0

    rem-long v4, v16, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 1134
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/ag;->c()V

    :cond_c
    move-wide/from16 v16, v2

    .line 1136
    goto/16 :goto_0

    .line 1105
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->h(Lcom/sleepycat/b/i/c/b/ag;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->b(Lcom/sleepycat/b/i/c/b/ag;)Ljava/util/logging/Logger;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/ag;->c(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Not processing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1111
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;

    move-result-object v19

    move-object v0, v15

    check-cast v0, Lcom/sleepycat/b/i/e/y;

    move-object v5, v0

    .line 7438
    invoke-virtual {v5}, Lcom/sleepycat/b/i/e/y;->d()Lcom/sleepycat/b/i/e/k;

    move-result-object v22

    .line 8076
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/sleepycat/b/i/e/k;->a:Lcom/sleepycat/b/g/a/m;

    .line 9068
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 9295
    iget-object v2, v2, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 7445
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 10133
    invoke-virtual {v3}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-wide v6, v2, Lcom/sleepycat/b/p/au;->c:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_10

    :cond_f
    invoke-virtual {v3}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v6

    if-nez v6, :cond_11

    .line 11101
    iget-wide v6, v3, Lcom/sleepycat/b/p/au;->c:J

    .line 10133
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-nez v2, :cond_11

    :cond_10
    const/4 v2, 0x1

    .line 7445
    :goto_5
    if-nez v2, :cond_12

    .line 7446
    new-instance v2, Lcom/sleepycat/b/aa;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    sget-object v4, Lcom/sleepycat/b/c/ac;->B:Lcom/sleepycat/b/c/ac;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Rep stream not sequential. Current VLSN: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " next log entry VLSN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 12068
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 12295
    iget-object v6, v6, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 7446
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v2

    .line 10133
    :cond_11
    const/4 v2, 0x0

    goto :goto_5

    .line 7454
    :cond_12
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 7455
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Replaying "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7458
    :cond_13
    invoke-interface {v4}, Lcom/sleepycat/b/g/a/m;->i()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v6}, Lcom/sleepycat/b/i/c/b/ac;->a(JZ)Lcom/sleepycat/b/i/f/e;

    move-result-object v3

    .line 12640
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 13496
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 12640
    invoke-interface {v4}, Lcom/sleepycat/b/g/a/m;->i()J

    move-result-wide v6

    .line 14164
    sget-boolean v8, Lcom/sleepycat/b/n/aj;->m:Z

    if-nez v8, :cond_14

    iget-object v8, v2, Lcom/sleepycat/b/n/aj;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v8}, Lcom/sleepycat/b/c/ad;->R()Z

    move-result v8

    if-eqz v8, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 14166
    :cond_14
    sget-boolean v8, Lcom/sleepycat/b/n/aj;->m:Z

    if-nez v8, :cond_15

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "replay txn id is unexpectedly positive "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 14168
    :cond_15
    iget-object v8, v2, Lcom/sleepycat/b/n/aj;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_16

    .line 14169
    iget-object v2, v2, Lcom/sleepycat/b/n/aj;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 12643
    :cond_16
    instance-of v2, v4, Lcom/sleepycat/b/g/a/o;

    if-eqz v2, :cond_19

    .line 12644
    move-object v0, v4

    check-cast v0, Lcom/sleepycat/b/g/a/o;

    move-object v2, v0

    .line 12645
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/sleepycat/b/g/a/o;->b(Z)V

    .line 12646
    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/o;->j()Lcom/sleepycat/b/l/y;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/ab;

    .line 12647
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 14379
    iget-object v6, v6, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 15062
    iget-object v2, v2, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 15414
    sget-boolean v7, Lcom/sleepycat/b/c/p;->i:Z

    if-nez v7, :cond_17

    iget-object v7, v6, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v7}, Lcom/sleepycat/b/c/ad;->R()Z

    move-result v7

    if-eqz v7, :cond_17

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 16055
    :cond_17
    iget-wide v8, v2, Lcom/sleepycat/b/c/h;->a:J

    .line 15418
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_18

    iget-object v7, v6, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v7}, Lcom/sleepycat/b/c/ad;->N()Z

    move-result v7

    if-nez v7, :cond_18

    .line 15419
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "replay database id is unexpectedly positive "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 15423
    :cond_18
    iget-object v2, v6, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-gez v2, :cond_19

    .line 15424
    iget-object v2, v6, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 16072
    :cond_19
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 16279
    iget-byte v0, v2, Lcom/sleepycat/b/g/ae;->b:B

    move/from16 v23, v0

    .line 17068
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 17295
    iget-object v2, v2, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 7462
    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7465
    :try_start_2
    sget-object v2, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 7466
    move-object v0, v5

    check-cast v0, Lcom/sleepycat/b/i/e/w;

    move-object v2, v0

    .line 18099
    iget-boolean v7, v2, Lcom/sleepycat/b/i/e/w;->a:Z

    .line 18103
    iget-object v6, v2, Lcom/sleepycat/b/i/e/w;->b:Lcom/sleepycat/b/w;

    .line 7471
    if-eqz v7, :cond_25

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->m:Lcom/sleepycat/b/i/c/b/ad;

    .line 18252
    sget-object v5, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    if-ne v6, v5, :cond_24

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/ad;->a()Z

    move-result v2

    if-eqz v2, :cond_24

    sget-object v2, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    move-object v5, v2

    .line 18587
    :goto_6
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 18591
    if-eqz v7, :cond_26

    .line 18592
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Replay: got commit for txn="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19169
    iget-wide v10, v3, Lcom/sleepycat/b/n/q;->k:J

    .line 18592
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ack needed, replica sync policy="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vlsn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7478
    :cond_1a
    :goto_7
    invoke-interface {v4}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/n/ah;

    .line 7481
    if-eqz v7, :cond_1b

    .line 7487
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 20887
    iget-object v4, v4, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 21380
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->l:Lcom/sleepycat/b/i/c/b/b;

    .line 7487
    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/b;->b()Z

    .line 7488
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 21887
    iget-object v4, v4, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 22462
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 7488
    invoke-virtual {v4}, Lcom/sleepycat/b/i/e/n;->e()V

    .line 7491
    :cond_1b
    new-instance v4, Lcom/sleepycat/b/g/av;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    invoke-direct {v4, v8}, Lcom/sleepycat/b/g/av;-><init>(Lcom/sleepycat/b/p/au;)V

    .line 23059
    iget v8, v2, Lcom/sleepycat/b/n/ai;->c:I

    .line 7491
    invoke-virtual {v3, v5, v4, v8}, Lcom/sleepycat/b/i/f/e;->a(Lcom/sleepycat/b/w;Lcom/sleepycat/b/g/av;I)J

    .line 7495
    invoke-virtual {v2}, Lcom/sleepycat/b/n/ah;->e()Lcom/sleepycat/b/p/aq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/p/aq;->getTime()J

    move-result-wide v8

    .line 7497
    new-instance v2, Lcom/sleepycat/b/i/c/b/ae;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    const/4 v10, 0x0

    invoke-direct {v2, v4, v8, v9, v10}, Lcom/sleepycat/b/i/c/b/ae;-><init>(Lcom/sleepycat/b/p/au;JB)V

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->g:Lcom/sleepycat/b/i/c/b/ae;

    .line 23561
    iget-wide v10, v3, Lcom/sleepycat/b/i/f/e;->b:J

    .line 24381
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 24382
    sub-long v12, v12, v20

    .line 24384
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sleepycat/b/i/c/b/ac;->e:J

    move-wide/from16 v24, v0

    cmp-long v2, v12, v24

    if-lez v2, :cond_1c

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 24386
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v24, "Replay commit time: "

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v24, 0xf4240

    div-long v24, v12, v24

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v24, " ms exceeded log threshold: "

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sleepycat/b/i/c/b/ac;->e:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0xf4240

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v4, v14}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 24393
    :cond_1c
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->o:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 24395
    if-eqz v7, :cond_1d

    .line 24396
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 24399
    :cond_1d
    sget-object v2, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    if-ne v5, v2, :cond_27

    .line 24400
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->q:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 24410
    :goto_8
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->A:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2, v12, v13}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 24411
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->y:Lcom/sleepycat/b/p/y;

    invoke-virtual {v2, v12, v13}, Lcom/sleepycat/b/p/y;->a(J)V

    .line 24412
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->z:Lcom/sleepycat/b/p/x;

    invoke-virtual {v2, v12, v13}, Lcom/sleepycat/b/p/x;->a(J)Z

    .line 24418
    cmp-long v2, v10, v8

    if-lez v2, :cond_1e

    .line 24419
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->B:Lcom/sleepycat/b/p/z;

    sub-long v4, v10, v8

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 7504
    :cond_1e
    if-eqz v7, :cond_20

    .line 7505
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->m:Lcom/sleepycat/b/i/c/b/ad;

    .line 25273
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/ad;->a()Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    if-eq v6, v4, :cond_2a

    iget v4, v2, Lcom/sleepycat/b/i/c/b/ad;->b:I

    if-gtz v4, :cond_2a

    .line 25275
    :cond_1f
    const/4 v2, 0x0

    .line 7505
    :goto_9
    if-nez v2, :cond_20

    .line 7507
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->l:Lcom/sleepycat/b/i/e/t;

    new-instance v4, Lcom/sleepycat/b/i/e/u;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->l:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27169
    iget-wide v6, v3, Lcom/sleepycat/b/n/q;->k:J

    .line 7507
    invoke-direct {v4, v5, v6, v7}, Lcom/sleepycat/b/i/e/u;-><init>(Lcom/sleepycat/b/i/e/t;J)V

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->k:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 28121
    :cond_20
    iget-boolean v2, v3, Lcom/sleepycat/b/i/f/e;->d:Z

    .line 7516
    if-eqz v2, :cond_21

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/i/c/b/ac;->a(Lcom/sleepycat/b/i/f/e;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 7517
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 28887
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 7517
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/aa;->h()Lcom/sleepycat/b/i/c/t;

    .line 7518
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 29887
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 7518
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/aa;->j()V

    .line 7521
    :cond_21
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->w:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/f/e;->g_()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 7561
    :cond_22
    :goto_a
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 50476
    iget-object v4, v3, Lcom/sleepycat/b/i/f/e;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v4}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v4

    if-gtz v4, :cond_39

    .line 50477
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Txn "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50483
    iget-wide v6, v3, Lcom/sleepycat/b/n/q;->k:J

    .line 50477
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attempted VLSN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " txnLastApplied = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v3, Lcom/sleepycat/b/i/f/e;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_2
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7562
    :catch_1
    move-exception v2

    .line 7563
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem seen replaying entry "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/n;->a(Ljava/lang/String;)V

    .line 7564
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7566
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v20

    .line 7567
    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/sleepycat/b/i/c/b/ac;->j:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_23

    .line 7568
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Replay time for entry type:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms exceeded threshold:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/sleepycat/b/i/c/b/ac;->j:J

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 7566
    :cond_23
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_24
    move-object v5, v6

    .line 7471
    goto/16 :goto_6

    :cond_25
    :try_start_5
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->i:Lcom/sleepycat/b/w;

    move-object v5, v2

    goto/16 :goto_6

    .line 18598
    :cond_26
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-object/from16 v0, v19

    iget-object v8, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Replay: got commit for txn="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20169
    iget-wide v10, v3, Lcom/sleepycat/b/n/q;->k:J

    .line 18598
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ack not needed vlsn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v19

    iget-object v10, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 24401
    :cond_27
    sget-object v2, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    if-ne v5, v2, :cond_28

    .line 24402
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->r:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    goto/16 :goto_8

    .line 24403
    :cond_28
    sget-object v2, Lcom/sleepycat/b/w;->c:Lcom/sleepycat/b/w;

    if-ne v5, v2, :cond_29

    .line 24404
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->s:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    goto/16 :goto_8

    .line 24406
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown sync policy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 25278
    :cond_2a
    iget-object v4, v2, Lcom/sleepycat/b/i/c/b/ad;->a:[J

    iget v5, v2, Lcom/sleepycat/b/i/c/b/ad;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v2, Lcom/sleepycat/b/i/c/b/ad;->b:I

    .line 26169
    iget-wide v6, v3, Lcom/sleepycat/b/n/q;->k:J

    .line 25278
    aput-wide v6, v4, v5

    .line 25280
    iget v4, v2, Lcom/sleepycat/b/i/c/b/ad;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    .line 25282
    iget-wide v4, v2, Lcom/sleepycat/b/i/c/b/ad;->d:J

    add-long v4, v4, v20

    iput-wide v4, v2, Lcom/sleepycat/b/i/c/b/ad;->c:J

    .line 25286
    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 25284
    :cond_2b
    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/i/c/b/ad;->a(J)V

    goto :goto_b

    .line 7522
    :cond_2c
    sget-object v2, Lcom/sleepycat/b/g/af;->r:Lcom/sleepycat/b/g/af;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 7524
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->t:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 7525
    invoke-interface {v4}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/n/ac;

    .line 7526
    new-instance v4, Lcom/sleepycat/b/g/av;

    .line 30068
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 30295
    iget-object v5, v5, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 7526
    invoke-direct {v4, v5}, Lcom/sleepycat/b/g/av;-><init>(Lcom/sleepycat/b/p/au;)V

    .line 7528
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 7529
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "abort called for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31169
    iget-wide v8, v3, Lcom/sleepycat/b/n/q;->k:J

    .line 7529
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " masterId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 32059
    iget v8, v2, Lcom/sleepycat/b/n/ai;->c:I

    .line 7529
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " repContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 33059
    :cond_2d
    iget v5, v2, Lcom/sleepycat/b/n/ai;->c:I

    .line 7535
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/i/f/e;->a(Lcom/sleepycat/b/g/av;I)J

    .line 7536
    new-instance v4, Lcom/sleepycat/b/i/c/b/ae;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2}, Lcom/sleepycat/b/n/ac;->e()Lcom/sleepycat/b/p/aq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/p/aq;->getTime()J

    move-result-wide v6

    const/4 v2, 0x0

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sleepycat/b/i/c/b/ae;-><init>(Lcom/sleepycat/b/p/au;JB)V

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->g:Lcom/sleepycat/b/i/c/b/ae;

    .line 33121
    iget-boolean v2, v3, Lcom/sleepycat/b/i/f/e;->d:Z

    .line 7538
    if-eqz v2, :cond_2e

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/i/c/b/ac;->a(Lcom/sleepycat/b/i/f/e;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 7545
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 33887
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 7545
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/aa;->h()Lcom/sleepycat/b/i/c/t;

    .line 7547
    :cond_2e
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->w:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/f/e;->g_()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    goto/16 :goto_a

    .line 7548
    :cond_2f
    sget-object v2, Lcom/sleepycat/b/g/af;->e:Lcom/sleepycat/b/g/af;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 7550
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 34887
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 35406
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 7550
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/ag;->c()V

    .line 7551
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->u:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 36076
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/sleepycat/b/i/e/k;->a:Lcom/sleepycat/b/g/a/m;

    .line 35709
    check-cast v2, Lcom/sleepycat/b/g/a/o;

    .line 35710
    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/o;->j()Lcom/sleepycat/b/l/y;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/b/l/ab;

    .line 35712
    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/o;->k()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/d/b;->a([B)Ljava/lang/String;

    move-result-object v4

    .line 35714
    new-instance v8, Lcom/sleepycat/b/g/g;

    .line 37068
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 37295
    iget-object v5, v5, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 35714
    invoke-direct {v8, v5, v2}, Lcom/sleepycat/b/g/g;-><init>(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/g/a/o;)V

    .line 38070
    iget-object v2, v8, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;
    :try_end_5
    .catch Lcom/sleepycat/b/n; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 35718
    const/4 v9, 0x0

    .line 35720
    :try_start_6
    sget-object v5, Lcom/sleepycat/b/i/c/b/ac$2;->a:[I

    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/f;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 35822
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Illegal database op type of "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " database="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 35827
    :catchall_1
    move-exception v2

    move-object v3, v9

    :goto_c
    if-eqz v3, :cond_30

    .line 35828
    :try_start_7
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 50380
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 35828
    invoke-virtual {v4, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 35827
    :cond_30
    throw v2
    :try_end_7
    .catch Lcom/sleepycat/b/n; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 35723
    :pswitch_0
    :try_start_8
    invoke-virtual {v8}, Lcom/sleepycat/b/g/g;->b()Lcom/sleepycat/b/c/ax;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v2, v5}, Lcom/sleepycat/b/c/ax;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/l;

    move-result-object v5

    .line 35726
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 38379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 38498
    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;Lcom/sleepycat/b/n/d;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/c/i;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v5

    .line 39496
    :try_start_9
    iget-object v2, v5, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 40055
    iget-wide v6, v2, Lcom/sleepycat/b/c/h;->a:J

    .line 35734
    const-wide/16 v8, -0x101

    cmp-long v2, v6, v8

    if-nez v2, :cond_31

    sget-object v2, Lcom/sleepycat/b/c/w;->d:Lcom/sleepycat/b/c/w;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 35737
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Database: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sleepycat/b/c/w;->d:Lcom/sleepycat/b/c/w;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is associated with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 40496
    iget-object v3, v5, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 41055
    iget-wide v6, v3, Lcom/sleepycat/b/c/h;->a:J

    .line 35737
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and not the reserved database id: -257"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 35827
    :catchall_2
    move-exception v2

    move-object v3, v5

    goto :goto_c

    .line 35746
    :cond_31
    const/4 v2, 0x1

    invoke-static {v3, v5, v2}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 35827
    :goto_d
    if-eqz v5, :cond_22

    .line 35828
    :try_start_a
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 50380
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 35828
    invoke-virtual {v2, v5}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_a
    .catch Lcom/sleepycat/b/n; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_a

    .line 35751
    :pswitch_1
    :try_start_b
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 41379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 42062
    iget-object v5, v7, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 35751
    invoke-virtual {v2, v5}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v5

    .line 35753
    :try_start_c
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 42379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 43062
    iget-object v6, v7, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;
    :try_end_c
    .catch Lcom/sleepycat/b/p; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 43198
    :try_start_d
    invoke-virtual {v2, v3, v4, v6, v8}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/i;
    :try_end_d
    .catch Lcom/sleepycat/b/c/s; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/sleepycat/b/p; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 35755
    :try_start_e
    invoke-static {v3, v5}, Lcom/sleepycat/b/c/bh;->b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
    :try_end_e
    .catch Lcom/sleepycat/b/p; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_d

    .line 35757
    :catch_2
    move-exception v2

    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Database: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44062
    iget-object v3, v7, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 35757
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found on the Replica."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 43199
    :catch_3
    move-exception v3

    .line 43201
    :try_start_10
    iget-object v2, v2, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v2, v3}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_10
    .catch Lcom/sleepycat/b/p; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 35766
    :pswitch_2
    :try_start_11
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 44379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 35766
    invoke-virtual {v8}, Lcom/sleepycat/b/g/g;->c()Lcom/sleepycat/b/c/h;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v5

    .line 35769
    :try_start_12
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 45379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 35769
    invoke-virtual {v2, v3, v4, v7, v8}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/v;

    move-result-object v2

    .line 35772
    iget-object v2, v2, Lcom/sleepycat/b/c/v;->b:Lcom/sleepycat/b/c/i;

    invoke-static {v3, v2}, Lcom/sleepycat/b/c/bh;->c(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;)V
    :try_end_12
    .catch Lcom/sleepycat/b/p; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_d

    .line 35774
    :catch_4
    move-exception v2

    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Database: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 46062
    iget-object v3, v7, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 35774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found on the Replica."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 35784
    :pswitch_3
    :try_start_14
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 46379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 47062
    iget-object v5, v7, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 35784
    invoke-virtual {v2, v5}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-result-object v2

    .line 35786
    :try_start_15
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 47379
    iget-object v9, v5, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 35786
    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v11

    move-object v10, v3

    move-object v12, v4

    move-object v13, v7

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/i;

    move-result-object v2

    .line 35790
    invoke-static {v3, v2, v4}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Ljava/lang/String;)V
    :try_end_15
    .catch Lcom/sleepycat/b/p; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    move-object v5, v2

    .line 35797
    goto/16 :goto_d

    .line 35793
    :catch_5
    move-exception v3

    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Database rename from: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, name not found on the Replica."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v3

    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 35827
    :catchall_3
    move-exception v3

    move-object/from16 v28, v3

    move-object v3, v2

    move-object/from16 v2, v28

    goto/16 :goto_c

    .line 35803
    :pswitch_4
    :try_start_17
    invoke-virtual {v8}, Lcom/sleepycat/b/g/g;->b()Lcom/sleepycat/b/c/ax;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v2, v4}, Lcom/sleepycat/b/c/ax;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/l;

    move-result-object v2

    .line 35807
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 48379
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 49062
    iget-object v5, v7, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 35807
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-result-object v4

    .line 35808
    :try_start_18
    invoke-virtual {v4}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v5

    .line 35809
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 49379
    iget-object v6, v6, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 35809
    invoke-virtual {v6, v3, v5, v8}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/g/g;)V

    .line 35813
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4, v3, v5, v2, v6}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;Lcom/sleepycat/b/c/ad;)V

    .line 35816
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 50379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 35816
    invoke-virtual {v2, v4}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/i;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    move-object v5, v4

    .line 35818
    goto/16 :goto_d

    .line 7555
    :cond_32
    :try_start_19
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->v:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 7557
    sget-boolean v2, Lcom/sleepycat/b/i/c/b/ac;->D:Z

    if-nez v2, :cond_33

    .line 50381
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/sleepycat/b/i/e/k;->a:Lcom/sleepycat/b/g/a/m;

    .line 7557
    instance-of v2, v2, Lcom/sleepycat/b/g/a/k;

    if-nez v2, :cond_33

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 50447
    :cond_33
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/sleepycat/b/i/e/k;->a:Lcom/sleepycat/b/g/a/m;

    .line 50382
    check-cast v2, Lcom/sleepycat/b/g/a/k;

    .line 50448
    iget-object v5, v2, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    .line 50449
    iget-wide v6, v5, Lcom/sleepycat/b/c/h;->a:J

    .line 50389
    const-wide/16 v8, -0x101

    cmp-long v4, v6, v8

    if-nez v4, :cond_34

    .line 50450
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sleepycat/b/i/f/e;->d:Z

    .line 50399
    :cond_34
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 50452
    iget-object v4, v4, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 50453
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 50454
    iget-object v6, v4, Lcom/sleepycat/b/i/c/b/ag;->i:Lcom/sleepycat/b/i/c/b/c;

    .line 50455
    iget-object v4, v6, Lcom/sleepycat/b/i/c/b/c;->a:Lcom/sleepycat/b/i/c/b/d;

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/i/c/b/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/i/c/b/e;

    .line 50457
    if-eqz v4, :cond_37

    .line 50458
    iget v5, v6, Lcom/sleepycat/b/i/c/b/c;->d:I

    iput v5, v4, Lcom/sleepycat/b/i/c/b/e;->a:I

    .line 50467
    :cond_35
    :goto_e
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/e;->b:Lcom/sleepycat/b/c/i;

    .line 50401
    invoke-virtual {v2, v4}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V

    .line 50402
    new-instance v9, Lcom/sleepycat/b/g/av;

    .line 50470
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 50471
    iget-object v5, v5, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 50402
    invoke-direct {v9, v5}, Lcom/sleepycat/b/g/av;-><init>(Lcom/sleepycat/b/p/au;)V

    .line 50404
    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    :try_end_19
    .catch Lcom/sleepycat/b/n; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-object v4

    .line 50408
    :try_start_1a
    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/k;->j()Lcom/sleepycat/b/l/y;

    move-result-object v7

    .line 50410
    invoke-virtual {v7}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 50416
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->a:Lcom/sleepycat/b/m;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sleepycat/b/m;->a([B)V

    .line 50417
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->a:Lcom/sleepycat/b/m;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->c:Lcom/sleepycat/b/m;

    sget-object v6, Lcom/sleepycat/b/ao;->b:Lcom/sleepycat/b/ao;

    sget-object v7, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    .line 50472
    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 50422
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v5, :cond_36

    .line 50473
    invoke-virtual {v4, v9}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    move-result-object v2

    .line 50436
    :cond_36
    :goto_f
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v2, v5, :cond_3e

    .line 50437
    new-instance v3, Lcom/sleepycat/b/aa;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    sget-object v6, Lcom/sleepycat/b/c/ac;->l:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Replicated operation could  not be applied. Status= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v6, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 50444
    :catchall_4
    move-exception v2

    :try_start_1b
    invoke-virtual {v4}, Lcom/sleepycat/b/e;->close()V

    throw v2

    .line 50462
    :cond_37
    new-instance v4, Lcom/sleepycat/b/i/c/b/e;

    iget-object v7, v6, Lcom/sleepycat/b/i/c/b/c;->b:Lcom/sleepycat/b/c/p;

    .line 50468
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;

    move-result-object v7

    .line 50462
    invoke-direct {v4, v6, v7}, Lcom/sleepycat/b/i/c/b/e;-><init>(Lcom/sleepycat/b/i/c/b/c;Lcom/sleepycat/b/c/i;)V

    .line 50463
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/c;->a:Lcom/sleepycat/b/i/c/b/d;

    invoke-virtual {v6, v5, v4}, Lcom/sleepycat/b/i/c/b/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50464
    iget-object v5, v4, Lcom/sleepycat/b/i/c/b/e;->b:Lcom/sleepycat/b/c/i;

    .line 50469
    iget-object v5, v5, Lcom/sleepycat/b/c/i;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    .line 50464
    const/4 v6, 0x1

    if-ne v5, v6, :cond_35

    .line 50465
    iget-object v5, v4, Lcom/sleepycat/b/i/c/b/e;->b:Lcom/sleepycat/b/c/i;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Z)V
    :try_end_1b
    .catch Lcom/sleepycat/b/n; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_e

    .line 50426
    :cond_38
    :try_start_1c
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->a:Lcom/sleepycat/b/m;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sleepycat/b/m;->a([B)V

    .line 50427
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ac;->b:Lcom/sleepycat/b/m;

    .line 50474
    iget-object v5, v7, Lcom/sleepycat/b/l/y;->f:[B

    .line 50427
    invoke-virtual {v2, v5}, Lcom/sleepycat/b/m;->a([B)V

    .line 50428
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->a:Lcom/sleepycat/b/m;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/ac;->b:Lcom/sleepycat/b/m;

    sget-object v8, Lcom/sleepycat/b/c/at;->d:Lcom/sleepycat/b/c/at;

    .line 50475
    invoke-virtual/range {v4 .. v9}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    move-result-object v2

    goto :goto_f

    .line 50481
    :cond_39
    :try_start_1d
    iput-object v2, v3, Lcom/sleepycat/b/i/f/e;->c:Lcom/sleepycat/b/p/au;
    :try_end_1d
    .catch Lcom/sleepycat/b/n; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 7566
    :try_start_1e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v2, v20

    .line 7567
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/sleepycat/b/i/c/b/ac;->j:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3a

    .line 7568
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Replay time for entry type:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v23 .. v23}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms exceeded threshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/sleepycat/b/i/c/b/ac;->j:J

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1122
    :cond_3a
    move-object v0, v15

    check-cast v0, Lcom/sleepycat/b/i/e/y;

    move-object v2, v0

    .line 50484
    invoke-virtual {v2}, Lcom/sleepycat/b/i/e/y;->d()Lcom/sleepycat/b/i/e/k;

    move-result-object v2

    .line 50491
    iget-object v2, v2, Lcom/sleepycat/b/i/e/k;->d:Lcom/sleepycat/b/g/ae;

    .line 50492
    iget-byte v2, v2, Lcom/sleepycat/b/g/ae;->b:B

    .line 50485
    sget-object v3, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v3

    if-nez v3, :cond_3b

    sget-object v3, Lcom/sleepycat/b/g/af;->r:Lcom/sleepycat/b/g/af;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/g/af;->c(B)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 50487
    :cond_3b
    const/4 v2, 0x1

    .line 1122
    :goto_10
    if-eqz v2, :cond_3c

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/ag;->f(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ac;

    move-result-object v3

    .line 50493
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 1123
    invoke-static {v2, v3}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/p/au;

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->i(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/ai;->b()V

    .line 1126
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/am;->c:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ag;->i(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/ai;->c()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    goto/16 :goto_4

    .line 50490
    :cond_3d
    const/4 v2, 0x0

    goto :goto_10

    .line 50444
    :cond_3e
    :try_start_1f
    invoke-virtual {v4}, Lcom/sleepycat/b/e;->close()V
    :try_end_1f
    .catch Lcom/sleepycat/b/n; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_a

    .line 35827
    :catchall_5
    move-exception v2

    move-object v3, v4

    goto/16 :goto_c

    .line 35720
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
