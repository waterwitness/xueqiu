.class public Lcom/sleepycat/b/i/f/e;
.super Lcom/sleepycat/b/n/z;
.source "ReplayTxn.java"


# static fields
.field static final synthetic e:Z


# instance fields
.field private final a:J

.field public b:J

.field public c:Lcom/sleepycat/b/p/au;

.field public d:Z

.field private f:I

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/i/f/e;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sleepycat/b/i/f/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/f/e;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;JLjava/util/Map;Ljava/util/logging/Logger;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ad;",
            "Lcom/sleepycat/b/br;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/i/f/e;",
            ">;",
            "Ljava/util/logging/Logger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/i/f/e;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;JLjava/util/logging/Logger;)V

    .line 88
    invoke-virtual {p0, p5}, Lcom/sleepycat/b/i/f/e;->a(Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;JLjava/util/logging/Logger;)V
    .locals 7

    .prologue
    .line 101
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/n/z;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;J)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/f/e;->a:J

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/f/e;->b:J

    .line 60
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/f/e;->c:Lcom/sleepycat/b/p/au;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/f/e;->d:Z

    .line 2897
    iget-byte v0, p0, Lcom/sleepycat/b/n/z;->t:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/n/z;->t:B

    .line 107
    iput-object p5, p0, Lcom/sleepycat/b/i/f/e;->h:Ljava/util/logging/Logger;

    .line 108
    return-void
.end method

.method private a(JLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v16, Lcom/sleepycat/b/l/al;

    invoke-direct/range {v16 .. v16}, Lcom/sleepycat/b/l/al;-><init>()V

    .line 444
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sleepycat/b/i/f/e;->z:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 445
    new-instance v3, Lcom/sleepycat/b/n/ad;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/i/f/e;->k:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/i/f/e;->w:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v11}, Lcom/sleepycat/b/n/ad;-><init>(JJJLjava/util/Map;Lcom/sleepycat/b/c/ad;)V

    move-object v4, v2

    .line 449
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide/from16 v0, p1

    invoke-static {v6, v7, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    if-lez v2, :cond_2

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/i/f/e;->w:Ljava/util/Map;

    invoke-static {v2, v6, v7, v5}, Lcom/sleepycat/b/n/al;->a(Lcom/sleepycat/b/c/ad;JLjava/util/Map;)Lcom/sleepycat/b/n/al;

    move-result-object v7

    .line 455
    invoke-virtual {v3}, Lcom/sleepycat/b/n/ad;->a()Lcom/sleepycat/b/n/af;

    move-result-object v8

    .line 457
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 7583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/f/e;->h:Ljava/util/logging/Logger;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/f/e;->h:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/f/e;->h:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "undoLsn="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " undo="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " revertInfo="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 464
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/i/f/e;->h:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v9, v16

    invoke-static/range {v5 .. v11}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/n/al;Lcom/sleepycat/b/n/af;Lcom/sleepycat/b/l/al;J)V

    .line 467
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 8532
    iget-object v2, v7, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    .line 9371
    iget-object v9, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 8536
    const/4 v12, 0x0

    iget-object v2, v7, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    .line 9723
    iget v2, v2, Lcom/sleepycat/b/l/y;->g:I

    const v5, 0x7fffffff

    and-int v13, v2, v5

    .line 8536
    iget-object v14, v7, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sleepycat/b/g/am;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;Z)V

    .line 468
    :cond_1
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v2, v7, Lcom/sleepycat/b/n/al;->a:Lcom/sleepycat/b/g/a/k;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/k;->m()Lcom/sleepycat/b/n/z;

    move-result-object v2

    .line 10421
    iget-wide v6, v2, Lcom/sleepycat/b/n/z;->z:J

    .line 474
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 475
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/i/f/e;->z:J
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 487
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    const-string v5, "Txn"

    const-string v6, "undo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "For LSN="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v6, v3, v2}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    throw v2

    .line 11232
    :cond_2
    :try_start_1
    iget-object v2, v3, Lcom/sleepycat/b/n/ad;->b:Lcom/sleepycat/b/p/au;

    .line 482
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sleepycat/b/i/f/e;->c:Lcom/sleepycat/b/p/au;
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/i/f/e;->z:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    .line 507
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/f/e;->c(Z)V

    .line 12220
    :cond_3
    iget-object v2, v3, Lcom/sleepycat/b/n/ad;->a:Ljava/util/Set;

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/f/e;->a(Ljava/util/Set;)V

    .line 512
    return-void

    .line 492
    :catch_1
    move-exception v2

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Txn undo for LSN="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/g/av;I)J
    .locals 4

    .prologue
    .line 227
    .line 5578
    iput-object p1, p0, Lcom/sleepycat/b/i/f/e;->K:Lcom/sleepycat/b/g/av;

    .line 234
    iput p2, p0, Lcom/sleepycat/b/i/f/e;->f:I

    .line 235
    invoke-super {p0}, Lcom/sleepycat/b/n/z;->o()J

    move-result-wide v0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/i/f/e;->b:J

    .line 238
    return-wide v0
.end method

.method protected final a(Lcom/sleepycat/b/n/aj;J)J
    .locals 0

    .prologue
    .line 141
    return-wide p2
.end method

.method public final a(Lcom/sleepycat/b/u;)J
    .locals 1

    .prologue
    .line 206
    const-string v0, "Replay Txn abort semantics require use of internal commit api"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/w;Lcom/sleepycat/b/g/av;I)J
    .locals 6

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sleepycat/b/i/f/e;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sleepycat/b/i/f/e;->h:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "commit called for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4169
    iget-wide v4, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 169
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 4578
    :cond_0
    iput-object p2, p0, Lcom/sleepycat/b/i/f/e;->K:Lcom/sleepycat/b/g/av;

    .line 174
    sget-object v0, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    if-ne p1, v0, :cond_1

    .line 175
    sget-object v0, Lcom/sleepycat/b/u;->a:Lcom/sleepycat/b/u;

    .line 190
    :goto_0
    iput p3, p0, Lcom/sleepycat/b/i/f/e;->f:I

    .line 191
    invoke-super {p0, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/u;)J

    move-result-wide v0

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/i/f/e;->b:J

    .line 194
    return-wide v0

    .line 176
    :cond_1
    sget-object v0, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    if-ne p1, v0, :cond_2

    .line 177
    sget-object v0, Lcom/sleepycat/b/u;->b:Lcom/sleepycat/b/u;

    goto :goto_0

    .line 178
    :cond_2
    sget-object v0, Lcom/sleepycat/b/w;->c:Lcom/sleepycat/b/w;

    if-ne p1, v0, :cond_3

    .line 179
    sget-object v0, Lcom/sleepycat/b/u;->c:Lcom/sleepycat/b/u;

    goto :goto_0

    .line 181
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown sync policy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/i/f/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    sget-boolean v0, Lcom/sleepycat/b/i/f/e;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/f/e;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/i/f/e;->g:Ljava/util/Map;

    .line 131
    iget-object v0, p0, Lcom/sleepycat/b/i/f/e;->g:Ljava/util/Map;

    .line 3169
    iget-wide v2, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public final a_(J)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/sleepycat/b/i/f/e;->h:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Partial Rollback of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 335
    monitor-enter p0

    .line 336
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/i/f/e;->b_(Z)V

    .line 339
    iget-wide v2, p0, Lcom/sleepycat/b/i/f/e;->z:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 340
    monitor-exit p0

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 347
    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/i/f/e;->z:J

    invoke-static {v2, v3, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v1

    if-gtz v1, :cond_2

    .line 348
    monitor-exit p0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6471
    :cond_2
    :try_start_1
    iget-byte v1, p0, Lcom/sleepycat/b/n/z;->t:B

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/sleepycat/b/n/z;->t:B

    .line 352
    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/i/f/e;->a(JLjava/util/List;)V

    .line 353
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    iget-wide v2, p0, Lcom/sleepycat/b/i/f/e;->z:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_3

    .line 368
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/i/f/e;->d(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    invoke-virtual {p0, v5}, Lcom/sleepycat/b/i/f/e;->b(Z)V

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/f/e;->x:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Replay Txn "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7169
    iget-wide v2, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 380
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has a openedDatabaseHandles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 370
    :catchall_1
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/sleepycat/b/i/f/e;->b(Z)V

    throw v0
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/sleepycat/b/n/z;->b(Z)V

    .line 258
    iget-object v0, p0, Lcom/sleepycat/b/i/f/e;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sleepycat/b/i/f/e;->g:Ljava/util/Map;

    .line 6169
    iget-wide v2, p0, Lcom/sleepycat/b/n/q;->k:J

    .line 259
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/z;

    .line 260
    sget-boolean v1, Lcom/sleepycat/b/i/f/e;->e:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "txn was not in map "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sleepycat/b/p/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 263
    :cond_0
    return-void
.end method

.method protected final f_()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public final g_()J
    .locals 4

    .prologue
    .line 550
    iget-wide v0, p0, Lcom/sleepycat/b/i/f/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/i/f/e;->b:J

    :goto_0
    iget-wide v2, p0, Lcom/sleepycat/b/i/f/e;->a:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final h_()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/sleepycat/b/i/f/e;->f:I

    return v0
.end method

.method protected final l()J
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sleepycat/b/i/f/e;->i:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()J
    .locals 1

    .prologue
    .line 199
    const-string v0, "Replay Txn abort semantics require use of internal commit api"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 212
    const-string v0, "Replay Txn abort semantics require use of internal abort api"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final o()J
    .locals 1

    .prologue
    .line 219
    const-string v0, "Replay Txn abort semantics require use of internal abort api"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<ReplayTxn id=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    iget-wide v2, p0, Lcom/sleepycat/b/i/f/e;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-super {p0}, Lcom/sleepycat/b/n/z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
