.class public Lcom/sleepycat/b/n/ad;
.super Ljava/lang/Object;
.source "TxnChain.java"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/sleepycat/b/p/au;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/sleepycat/b/c/ad;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sleepycat/b/n/af;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJJLcom/sleepycat/b/c/ad;)V
    .locals 11

    .prologue
    .line 84
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/b/n/ad;-><init>(JJJLjava/util/Map;Lcom/sleepycat/b/c/ad;)V

    .line 85
    return-void
.end method

.method public constructor <init>(JJJLjava/util/Map;Lcom/sleepycat/b/c/ad;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;",
            "Lcom/sleepycat/b/c/ad;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sleepycat/b/n/ad;->d:Lcom/sleepycat/b/c/ad;

    .line 100
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sleepycat/b/n/ad;->c:Ljava/util/Map;

    .line 3371
    move-object/from16 v0, p8

    iget-object v11, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 103
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/n/ad;->a:Ljava/util/Set;

    .line 112
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 116
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 126
    :try_start_0
    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v2, p0, Lcom/sleepycat/b/n/ad;->b:Lcom/sleepycat/b/p/au;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide/from16 v4, p1

    .line 127
    :cond_0
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    .line 3903
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v11, v4, v5, v2}, Lcom/sleepycat/b/g/am;->a(JZ)Lcom/sleepycat/b/g/ay;

    move-result-object v6

    .line 4030
    iget-object v2, v6, Lcom/sleepycat/b/g/ay;->b:Lcom/sleepycat/b/g/a/m;

    .line 130
    check-cast v2, Lcom/sleepycat/b/g/a/k;

    .line 4552
    iget-object v3, v2, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    .line 5199
    iget-object v7, p0, Lcom/sleepycat/b/n/ad;->c:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 5200
    iget-object v7, p0, Lcom/sleepycat/b/n/ad;->c:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/c/i;

    move-object v10, v3

    .line 133
    :goto_1
    invoke-virtual {v2, v10}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :try_start_2
    new-instance v7, Lcom/sleepycat/b/n/ae;

    invoke-direct {v7, v10, v2}, Lcom/sleepycat/b/n/ae;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/a/k;)V

    .line 142
    invoke-virtual {v12, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 144
    if-nez v3, :cond_9

    .line 145
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 146
    invoke-virtual {v12, v7, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 154
    move-wide/from16 v0, p5

    invoke-static {v4, v5, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v3

    if-lez v3, :cond_3

    .line 155
    new-instance v3, Lcom/sleepycat/b/n/ag;

    .line 5556
    iget-wide v6, v2, Lcom/sleepycat/b/g/a/k;->e:J

    .line 5560
    iget-boolean v8, v2, Lcom/sleepycat/b/g/a/k;->f:Z

    .line 155
    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/b/n/ag;-><init>(JJZLjava/util/LinkedList;)V

    invoke-virtual {v13, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/k;->m()Lcom/sleepycat/b/n/z;

    move-result-object v2

    .line 8421
    iget-wide v4, v2, Lcom/sleepycat/b/n/z;->z:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9208
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/b/n/ad;->c:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 9209
    iget-object v2, p0, Lcom/sleepycat/b/n/ad;->d:Lcom/sleepycat/b/c/ad;

    .line 9379
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 9209
    invoke-virtual {v2, v10}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v2

    .line 177
    :goto_4
    sget-object v3, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Problem finding intermediates for txn "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at lsn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-static {v0, v3, v4, v2}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2

    .line 5203
    :cond_2
    :try_start_4
    iget-object v7, p0, Lcom/sleepycat/b/n/ad;->d:Lcom/sleepycat/b/c/ad;

    .line 5379
    iget-object v7, v7, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 5203
    invoke-virtual {v7, v3}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    .line 161
    :cond_3
    :try_start_5
    iget-object v3, p0, Lcom/sleepycat/b/n/ad;->a:Ljava/util/Set;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v3, p0, Lcom/sleepycat/b/n/ad;->b:Lcom/sleepycat/b/p/au;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sleepycat/b/n/ad;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6026
    iget-object v3, v6, Lcom/sleepycat/b/g/ay;->a:Lcom/sleepycat/b/g/ae;

    .line 6295
    iget-object v3, v3, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 162
    if-eqz v3, :cond_1

    .line 7026
    iget-object v3, v6, Lcom/sleepycat/b/g/ay;->a:Lcom/sleepycat/b/g/ae;

    .line 7295
    iget-object v3, v3, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 162
    invoke-virtual {v3}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8026
    iget-object v3, v6, Lcom/sleepycat/b/g/ay;->a:Lcom/sleepycat/b/g/ae;

    .line 8295
    iget-object v3, v3, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 166
    iput-object v3, p0, Lcom/sleepycat/b/n/ad;->b:Lcom/sleepycat/b/p/au;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 173
    :catchall_0
    move-exception v2

    .line 9208
    :try_start_6
    iget-object v3, p0, Lcom/sleepycat/b/n/ad;->c:Ljava/util/Map;

    if-nez v3, :cond_4

    .line 9209
    iget-object v3, p0, Lcom/sleepycat/b/n/ad;->d:Lcom/sleepycat/b/c/ad;

    .line 9379
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 9209
    invoke-virtual {v3, v10}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 173
    :cond_4
    throw v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 187
    :cond_5
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/n/ad;->e:Ljava/util/LinkedList;

    .line 188
    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/n/ag;

    .line 189
    iget-object v5, p0, Lcom/sleepycat/b/n/ad;->e:Ljava/util/LinkedList;

    .line 10292
    iget-object v3, v2, Lcom/sleepycat/b/n/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 10294
    sget-boolean v6, Lcom/sleepycat/b/n/ag;->e:Z

    if-nez v6, :cond_6

    iget-wide v6, v2, Lcom/sleepycat/b/n/ag;->a:J

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "entryLsn= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/sleepycat/b/n/ag;->a:J

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "topLsn= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 10297
    :cond_6
    iget-object v3, v2, Lcom/sleepycat/b/n/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 10298
    new-instance v3, Lcom/sleepycat/b/n/af;

    iget-wide v6, v2, Lcom/sleepycat/b/n/ag;->b:J

    iget-boolean v2, v2, Lcom/sleepycat/b/n/ag;->c:Z

    invoke-direct {v3, v6, v7, v2}, Lcom/sleepycat/b/n/af;-><init>(JZ)V

    move-object v2, v3

    .line 189
    :goto_6
    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 10306
    :cond_7
    new-instance v3, Lcom/sleepycat/b/n/af;

    iget-object v2, v2, Lcom/sleepycat/b/n/ag;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v2, 0x0

    invoke-direct {v3, v6, v7, v2}, Lcom/sleepycat/b/n/af;-><init>(JZ)V

    move-object v2, v3

    goto :goto_6

    .line 191
    :cond_8
    return-void

    .line 176
    :catch_1
    move-exception v2

    move-wide/from16 v4, p1

    goto/16 :goto_4

    :cond_9
    move-object v9, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/n/af;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sleepycat/b/n/ad;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/af;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sleepycat/b/n/ad;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
