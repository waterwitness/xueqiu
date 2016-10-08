.class public Lcom/sleepycat/b/bi;
.super Lcom/sleepycat/b/i;
.source "SecondaryDatabase.java"


# static fields
.field static final synthetic o:Z

.field private static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m:Lcom/sleepycat/b/i;

.field n:Lcom/sleepycat/b/bf;

.field private volatile q:Z

.field private r:Lcom/sleepycat/b/p/d;

.field private s:Lcom/sleepycat/b/p/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/sleepycat/b/bi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/bi;->o:Z

    .line 136
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/bi;->p:Ljava/util/Set;

    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 9

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->f()V

    .line 830
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 831
    const-string v0, "pKey"

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 832
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-static {p4, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 833
    const-string v0, "Can\'t call SecondaryDatabase.get:"

    invoke-direct {p0, v0}, Lcom/sleepycat/b/bi;->b(Ljava/lang/String;)V

    .line 834
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "SecondaryDatabase.get"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/bi;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 835
    iget-object v0, p0, Lcom/sleepycat/b/bi;->s:Lcom/sleepycat/b/p/d;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sleepycat/b/bi;->s:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 839
    :cond_0
    sget-object v0, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    .line 840
    sget-object v1, Lcom/sleepycat/b/ao;->c:Lcom/sleepycat/b/ao;

    if-ne p5, v1, :cond_4

    .line 841
    sget-object v0, Lcom/sleepycat/b/g;->c:Lcom/sleepycat/b/g;

    .line 842
    const/4 v4, 0x0

    move-object v1, v0

    .line 844
    :goto_0
    invoke-static {p1, v4}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/ao;)V

    .line 846
    const/4 v3, 0x0

    .line 847
    const/4 v2, 0x0

    .line 848
    const/4 v7, 0x0

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/bi;->b:Lcom/sleepycat/b/x;

    .line 12982
    iget-object v5, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 13511
    iget-boolean v5, v5, Lcom/sleepycat/b/c/i;->d:Z

    .line 14127
    iget-boolean v6, v1, Lcom/sleepycat/b/g;->e:Z

    .line 850
    invoke-static {v0, p1, v5, v6}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZ)Lcom/sleepycat/b/n/q;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 853
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/bh;

    invoke-direct {v0, p0, v6, v1}, Lcom/sleepycat/b/bh;-><init>(Lcom/sleepycat/b/bi;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 854
    :try_start_2
    sget-object v5, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/bh;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    .line 862
    invoke-virtual {v0}, Lcom/sleepycat/b/bh;->close()V

    .line 865
    if-eqz v6, :cond_1

    .line 866
    invoke-virtual {v6, v1}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_1
    return-object v1

    .line 857
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 858
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/b/bi;->b:Lcom/sleepycat/b/x;

    .line 15206
    iget-object v3, v3, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 858
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 859
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 861
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 862
    invoke-virtual {v2}, Lcom/sleepycat/b/bh;->close()V

    .line 865
    :cond_2
    if-eqz v3, :cond_3

    .line 866
    invoke-virtual {v3, v7}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_3
    throw v0

    .line 861
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v6

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v3, v6

    move-object v0, v1

    goto :goto_2

    .line 857
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v6

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v6

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1

    :cond_4
    move-object v1, v0

    move-object v4, p5

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 6

    .prologue
    .line 1175
    sget-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    sget-object v1, Lcom/sleepycat/b/c/e;->b:Lcom/sleepycat/b/c/e;

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1179
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v1, :cond_1

    .line 18089
    iget-object v0, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 1180
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->D()Lcom/sleepycat/b/g/av;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 1190
    :cond_0
    return-void

    .line 1183
    :cond_1
    iget-boolean v0, p0, Lcom/sleepycat/b/bi;->q:Z

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, Lcom/sleepycat/b/bj;

    .line 18391
    iget-object v1, p1, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 18489
    iget-object v1, v1, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 1184
    const-string v2, "Secondary is corrupt: the primary record contains a key that is not present in the secondary"

    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->d()Ljava/lang/String;

    move-result-object v3

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bj;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    throw v0
.end method

.method private a(Lcom/sleepycat/b/n/q;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 292
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "SecondaryDatabase open"

    .line 4465
    iget-object v3, p0, Lcom/sleepycat/b/bi;->k:Ljava/util/logging/Logger;

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4467
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4468
    const-string v2, " name="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4469
    const-string v2, " primary="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    invoke-virtual {v4}, Lcom/sleepycat/b/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    iget-object v2, p0, Lcom/sleepycat/b/bi;->k:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/bi;->b:Lcom/sleepycat/b/x;

    .line 5206
    iget-object v4, v4, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 4471
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v0, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/bi;->d:Lcom/sleepycat/b/l;

    check-cast v0, Lcom/sleepycat/b/bf;

    iput-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 296
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 5248
    iget-object v0, v0, Lcom/sleepycat/b/bf;->B:Lcom/sleepycat/b/i;

    .line 297
    if-eqz v0, :cond_1

    .line 298
    iget-object v0, v0, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 6201
    iget-boolean v0, v0, Lcom/sleepycat/b/bf;->y:Z

    .line 302
    if-nez v0, :cond_2

    .line 331
    :goto_0
    return-void

    .line 308
    :cond_2
    :try_start_0
    new-instance v2, Lcom/sleepycat/b/e;

    const/4 v0, 0x0

    invoke-direct {v2, p0, p1, v0}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :try_start_1
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 310
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 311
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v5, v0, v4}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 314
    sget-object v4, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v0, v4, :cond_3

    .line 328
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    goto :goto_0

    .line 318
    :cond_3
    :try_start_2
    new-instance v6, Lcom/sleepycat/b/e;

    iget-object v0, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    const/4 v4, 0x0

    invoke-direct {v6, v0, p1, v4}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    :try_start_3
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    const/4 v1, 0x1

    invoke-virtual {v6, v3, v5, v0, v1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 320
    :goto_1
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v1, :cond_4

    .line 321
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 322
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    sget-object v1, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    invoke-virtual {v6, v3, v5, v0, v1}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    goto :goto_1

    .line 328
    :cond_4
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 331
    invoke-virtual {v6}, Lcom/sleepycat/b/e;->close()V

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 328
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 330
    :cond_5
    if-eqz v1, :cond_6

    .line 331
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    :cond_6
    throw v0

    .line 327
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method private a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1202
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 19248
    iget-object v2, v0, Lcom/sleepycat/b/bf;->B:Lcom/sleepycat/b/i;

    .line 1204
    if-eqz v2, :cond_2

    .line 1207
    :try_start_0
    new-instance v6, Lcom/sleepycat/b/e;

    const/4 v0, 0x0

    invoke-direct {v6, v2, p1, v0}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1209
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 1210
    sget-object v1, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    sget-object v3, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    invoke-virtual {v6, p4, v0, v1, v3}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1214
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_1

    .line 1215
    new-instance v0, Lcom/sleepycat/b/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Secondary "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " foreign key not allowed: it is not present in the foreign database "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sleepycat/b/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->d()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/ah;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1224
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_0

    .line 1225
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    :cond_0
    throw v0

    :cond_1
    invoke-virtual {v6}, Lcom/sleepycat/b/e;->close()V

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/bi;->d:Lcom/sleepycat/b/l;

    .line 19272
    iget-boolean v0, v0, Lcom/sleepycat/b/l;->f:Z

    .line 1231
    if-eqz v0, :cond_3

    .line 1232
    sget-object v0, Lcom/sleepycat/b/c/at;->b:Lcom/sleepycat/b/c/at;

    invoke-virtual {p2, p4, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1234
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sleepycat/b/bi;->q:Z

    if-eqz v0, :cond_4

    .line 1235
    new-instance v0, Lcom/sleepycat/b/bj;

    const-string v2, "Secondary/primary record already present"

    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->d()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bj;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    throw v0

    .line 1240
    :cond_3
    sget-object v0, Lcom/sleepycat/b/c/at;->c:Lcom/sleepycat/b/c/at;

    invoke-virtual {p2, p4, p3, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1242
    sget-object v1, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sleepycat/b/bi;->q:Z

    if-eqz v0, :cond_4

    .line 1243
    new-instance v0, Lcom/sleepycat/b/bv;

    const-string v2, "Unique secondary key is already present"

    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->d()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bv;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    throw v0

    .line 1248
    :cond_4
    return-void

    .line 1224
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/bi;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1372
    if-nez p0, :cond_0

    move v0, v1

    .line 1380
    :goto_0
    return v0

    .line 1375
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bi;

    .line 1376
    invoke-virtual {v0}, Lcom/sleepycat/b/bi;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1377
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1380
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1439
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/bi;->a(Ljava/lang/String;)V

    .line 1440
    iget-boolean v0, p0, Lcom/sleepycat/b/bi;->q:Z

    if-nez v0, :cond_0

    .line 1441
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Incremental population is currently enabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :cond_0
    return-void
.end method

.method static b(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/bi;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1390
    if-nez p0, :cond_0

    move v0, v1

    .line 1398
    :goto_0
    return v0

    .line 1393
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bi;

    .line 1394
    iget-object v0, v0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 22461
    iget-boolean v0, v0, Lcom/sleepycat/b/bf;->F:Z

    .line 1394
    if-nez v0, :cond_1

    .line 1395
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1398
    goto :goto_0
.end method

.method static j()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .prologue
    .line 1455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not allowed on a secondary"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->f()V

    .line 704
    const-string v0, "key"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/p/i;->a(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V

    .line 705
    const-string v0, "Can\'t call SecondaryDatabase.delete:"

    invoke-direct {p0, v0}, Lcom/sleepycat/b/bi;->b(Ljava/lang/String;)V

    .line 706
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "SecondaryDatabase.delete"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/bi;->a(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V

    .line 708
    iget-object v0, p0, Lcom/sleepycat/b/bi;->r:Lcom/sleepycat/b/p/d;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sleepycat/b/bi;->r:Lcom/sleepycat/b/p/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/d;->g()V

    .line 715
    :cond_0
    sget-object v1, Lcom/sleepycat/b/av;->d:Lcom/sleepycat/b/av;

    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/bi;->b:Lcom/sleepycat/b/x;

    .line 8089
    iget-object v2, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 8533
    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/c/w;->a()Z

    move-result v2

    .line 8982
    iget-object v3, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 9511
    iget-boolean v3, v3, Lcom/sleepycat/b/c/i;->d:Z

    .line 10089
    iget-object v4, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 10677
    invoke-virtual {v4}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v4

    .line 717
    invoke-static {v0, p1, v2, v3, v4}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 725
    :try_start_1
    new-instance v2, Lcom/sleepycat/b/e;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v3, v0}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 726
    :try_start_2
    new-instance v4, Lcom/sleepycat/b/m;

    invoke-direct {v4}, Lcom/sleepycat/b/m;-><init>()V

    .line 727
    sget-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    sget-object v5, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    invoke-virtual {v2, p2, v4, v0, v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 735
    :goto_0
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v5, :cond_5

    .line 736
    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->i()Lcom/sleepycat/b/i;

    move-result-object v0

    .line 737
    if-nez v0, :cond_2

    .line 11089
    iget-object v0, p0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 739
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->D()Lcom/sleepycat/b/g/av;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/e;->b(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 747
    :cond_1
    sget-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    sget-object v5, Lcom/sleepycat/b/c/ak;->c:Lcom/sleepycat/b/c/ak;

    invoke-virtual {v2, p2, v4, v0, v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;

    move-result-object v0

    goto :goto_0

    .line 741
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v1

    .line 742
    sget-object v0, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v1, v0, :cond_1

    .line 743
    invoke-virtual {p0, v3, p2, v4}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/bj;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 751
    :catch_0
    move-exception v0

    move-object v5, v2

    move-object v2, v3

    .line 752
    :goto_1
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/b/bi;->b:Lcom/sleepycat/b/x;

    .line 12206
    iget-object v3, v3, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 752
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 753
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 755
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_3

    .line 756
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 758
    :cond_3
    if-eqz v3, :cond_4

    .line 759
    invoke-virtual {v3, v1}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_4
    throw v0

    .line 756
    :cond_5
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 758
    if-eqz v3, :cond_6

    .line 759
    invoke-virtual {v3, v1}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/av;)V

    :cond_6
    return-object v1

    .line 755
    :catchall_1
    move-exception v0

    move-object v2, v5

    move-object v3, v5

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v5

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 751
    :catch_1
    move-exception v0

    move-object v2, v5

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    .locals 1

    .prologue
    .line 985
    invoke-static {}, Lcom/sleepycat/b/bi;->j()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    .locals 6

    .prologue
    .line 780
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    return-object v0
.end method

.method final a()Lcom/sleepycat/b/be;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    iget-object v0, v0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    iget-object v0, v0, Lcom/sleepycat/b/i;->h:Lcom/sleepycat/b/be;

    .line 343
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/bi;->d:Lcom/sleepycat/b/l;

    .line 6328
    iget-object v0, v0, Lcom/sleepycat/b/l;->u:Lcom/sleepycat/b/be;

    goto :goto_0
.end method

.method final a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;
    .locals 1

    .prologue
    .line 244
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 246
    invoke-direct {p0, p2}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;)V

    .line 247
    return-object v0
.end method

.method public final synthetic a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    .locals 1

    .prologue
    .line 133
    .line 22665
    const-string v0, "Can\'t call SecondaryDatabase.openCursor:"

    invoke-direct {p0, v0}, Lcom/sleepycat/b/bi;->b(Ljava/lang/String;)V

    .line 22666
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bh;

    .line 133
    return-object v0
.end method

.method final a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1059
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 16109
    iget-object v3, v0, Lcom/sleepycat/b/bf;->z:Lcom/sleepycat/b/bk;

    .line 1060
    if-eqz v3, :cond_b

    .line 1062
    sget-boolean v0, Lcom/sleepycat/b/bi;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 16158
    iget-object v0, v0, Lcom/sleepycat/b/bf;->A:Lcom/sleepycat/b/bl;

    .line 1062
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1066
    :cond_0
    if-nez p4, :cond_1

    if-nez p5, :cond_18

    .line 1067
    :cond_1
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 1068
    invoke-interface {v3}, Lcom/sleepycat/b/bk;->a()Z

    move-result v1

    if-nez v1, :cond_17

    move-object v1, v5

    .line 1074
    :goto_0
    if-eqz p5, :cond_16

    .line 1075
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 1076
    invoke-interface {v3}, Lcom/sleepycat/b/bk;->a()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v5

    .line 1083
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/m;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/m;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1086
    :cond_4
    if-nez p2, :cond_9

    .line 1087
    :goto_2
    if-eqz v2, :cond_5

    .line 1088
    new-instance p2, Lcom/sleepycat/b/e;

    invoke-direct {p2, p0, p1, v5}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V

    .line 1092
    :cond_5
    if-eqz v1, :cond_6

    .line 1093
    :try_start_0
    invoke-direct {p0, p2, p3, v1}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 1096
    :cond_6
    if-eqz v0, :cond_7

    .line 1097
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    :cond_7
    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    .line 1101
    invoke-virtual {p2}, Lcom/sleepycat/b/e;->close()V

    .line 1165
    :cond_8
    :goto_3
    return-void

    :cond_9
    move v2, v4

    .line 1086
    goto :goto_2

    .line 1100
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_a

    if-eqz p2, :cond_a

    .line 1101
    invoke-virtual {p2}, Lcom/sleepycat/b/e;->close()V

    :cond_a
    throw v0

    .line 1107
    :cond_b
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 17158
    iget-object v0, v0, Lcom/sleepycat/b/bf;->A:Lcom/sleepycat/b/bl;

    .line 1109
    if-nez v0, :cond_c

    .line 1110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SecondaryConfig.getKeyCreator()/getMultiKeyCreator() may be null only if the primary database is read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_c
    sget-object v3, Lcom/sleepycat/b/bi;->p:Ljava/util/Set;

    .line 1117
    sget-object v0, Lcom/sleepycat/b/bi;->p:Ljava/util/Set;

    .line 1118
    if-nez p4, :cond_d

    if-nez p5, :cond_e

    .line 1119
    :cond_d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1123
    :cond_e
    if-eqz p5, :cond_15

    .line 1124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 1130
    :goto_4
    invoke-interface {v3, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1132
    if-nez p2, :cond_f

    move v4, v2

    .line 1133
    :cond_f
    if-eqz v4, :cond_10

    .line 1134
    new-instance p2, Lcom/sleepycat/b/e;

    invoke-direct {p2, p0, p1, v5}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V

    .line 1139
    :cond_10
    :try_start_1
    sget-object v0, Lcom/sleepycat/b/bi;->p:Ljava/util/Set;

    if-eq v3, v0, :cond_14

    .line 1140
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1141
    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1142
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1143
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1144
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m;

    .line 1145
    invoke-direct {p0, p2, p3, v0}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    .line 1159
    :catchall_1
    move-exception v0

    if-eqz v4, :cond_11

    if-eqz p2, :cond_11

    .line 1160
    invoke-virtual {p2}, Lcom/sleepycat/b/e;->close()V

    :cond_11
    throw v0

    :cond_12
    move-object v0, v2

    .line 1150
    :goto_6
    :try_start_2
    sget-object v2, Lcom/sleepycat/b/bi;->p:Ljava/util/Set;

    if-eq v1, v2, :cond_13

    .line 1151
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1152
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1153
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m;

    .line 1155
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/e;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    .line 1159
    :cond_13
    if-eqz v4, :cond_8

    if-eqz p2, :cond_8

    .line 1160
    invoke-virtual {p2}, Lcom/sleepycat/b/e;->close()V

    goto/16 :goto_3

    :cond_14
    move-object v0, v3

    goto :goto_6

    :cond_15
    move-object v1, v0

    goto :goto_4

    :cond_16
    move-object v0, v5

    goto/16 :goto_1

    :cond_17
    move-object v1, v0

    goto/16 :goto_0

    :cond_18
    move-object v1, v5

    goto/16 :goto_0
.end method

.method final a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Ljava/lang/String;Lcom/sleepycat/b/l;)V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p3}, Lcom/sleepycat/b/c/i;->w()Lcom/sleepycat/b/i;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 3089
    iget-object v1, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 266
    iget-object v2, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    .line 4089
    iget-object v2, v2, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 266
    if-eq v1, v2, :cond_0

    .line 269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Secondary already associated with different primary: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Ljava/lang/String;Lcom/sleepycat/b/l;)V

    .line 276
    invoke-direct {p0, p2}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;)V

    .line 277
    return-void
.end method

.method final b(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    .locals 1

    .prologue
    .line 677
    new-instance v0, Lcom/sleepycat/b/bh;

    invoke-direct {v0, p0, p1, p2}, Lcom/sleepycat/b/bh;-><init>(Lcom/sleepycat/b/bi;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)V

    return-object v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Lcom/sleepycat/b/i;->b()V

    .line 366
    iget-object v0, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    iget-object v0, v0, Lcom/sleepycat/b/i;->i:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 7248
    iget-object v0, v0, Lcom/sleepycat/b/bf;->B:Lcom/sleepycat/b/i;

    .line 371
    if-eqz v0, :cond_1

    .line 372
    iget-object v0, v0, Lcom/sleepycat/b/i;->j:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 375
    :cond_1
    return-void
.end method

.method final b(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1259
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 19294
    iget-object v1, v0, Lcom/sleepycat/b/bf;->C:Lcom/sleepycat/b/ai;

    .line 1263
    sget-object v0, Lcom/sleepycat/b/ai;->a:Lcom/sleepycat/b/ai;

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    .line 1272
    :goto_0
    new-instance v6, Lcom/sleepycat/b/e;

    invoke-direct {v6, p0, p1, v2}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V

    .line 1274
    :try_start_0
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 1275
    sget-object v2, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    invoke-virtual {v6, p2, v5, v0, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1277
    :goto_1
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v2, :cond_8

    .line 1279
    sget-object v0, Lcom/sleepycat/b/ai;->a:Lcom/sleepycat/b/ai;

    if-ne v1, v0, :cond_1

    .line 1285
    new-instance v0, Lcom/sleepycat/b/s;

    const-string v2, "Secondary refers to a deleted foreign key"

    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->d()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/s;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/sleepycat/b/e;->close()V

    throw v0

    .line 1263
    :cond_0
    sget-object v0, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    goto :goto_0

    .line 1289
    :cond_1
    :try_start_1
    sget-object v0, Lcom/sleepycat/b/ai;->b:Lcom/sleepycat/b/ai;

    if-ne v1, v0, :cond_2

    .line 1294
    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->i()Lcom/sleepycat/b/i;

    move-result-object v0

    .line 1295
    if-eqz v0, :cond_5

    .line 1296
    invoke-virtual {v0, p1, v5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 1297
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v2, :cond_5

    .line 1298
    invoke-virtual {p0, p1, p2, v5}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/bj;

    move-result-object v0

    throw v0

    .line 1303
    :cond_2
    sget-object v0, Lcom/sleepycat/b/ai;->c:Lcom/sleepycat/b/ai;

    if-ne v1, v0, :cond_7

    .line 1309
    invoke-virtual {p0}, Lcom/sleepycat/b/bi;->i()Lcom/sleepycat/b/i;

    move-result-object v0

    .line 1310
    if-eqz v0, :cond_5

    .line 1311
    new-instance v2, Lcom/sleepycat/b/e;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/sleepycat/b/e;-><init>(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1314
    :try_start_2
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 1315
    sget-object v3, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    sget-object v4, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    invoke-virtual {v2, v5, v0, v3, v4}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 1317
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v3, v4, :cond_3

    .line 1318
    invoke-virtual {p0, p1, p2, v5}, Lcom/sleepycat/b/bi;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/bj;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1336
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1321
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 19402
    iget-object v3, v3, Lcom/sleepycat/b/bf;->E:Lcom/sleepycat/b/ak;

    .line 1323
    if-eqz v3, :cond_6

    .line 1324
    invoke-interface {v3}, Lcom/sleepycat/b/ak;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1326
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1336
    :cond_4
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 1344
    :cond_5
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    sget-object v2, Lcom/sleepycat/b/c/ak;->c:Lcom/sleepycat/b/c/ak;

    invoke-virtual {v6, p2, v5, v0, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 1329
    :cond_6
    :try_start_6
    iget-object v3, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 20350
    iget-object v3, v3, Lcom/sleepycat/b/bf;->D:Lcom/sleepycat/b/aj;

    .line 1331
    invoke-interface {v3}, Lcom/sleepycat/b/aj;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1332
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 1341
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1348
    :cond_8
    invoke-virtual {v6}, Lcom/sleepycat/b/e;->close()V

    .line 1349
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/b/i;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x0

    return v0
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 20511
    iget-boolean v0, v0, Lcom/sleepycat/b/bf;->G:Z

    .line 1361
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/bi;->n:Lcom/sleepycat/b/bf;

    .line 21461
    iget-boolean v0, v0, Lcom/sleepycat/b/bf;->F:Z

    .line 1361
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Lcom/sleepycat/b/i;
    .locals 3

    .prologue
    .line 1421
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/bi;->h:Lcom/sleepycat/b/be;

    invoke-interface {v0}, Lcom/sleepycat/b/be;->b()Lcom/sleepycat/b/i;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1426
    if-nez v0, :cond_1

    .line 1427
    const/4 v0, 0x0

    .line 1435
    :cond_0
    return-object v0

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    const-string v1, "Exception from SecondaryAssociation.getPrimary"

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1429
    :cond_1
    iget-object v1, v0, Lcom/sleepycat/b/i;->h:Lcom/sleepycat/b/be;

    iget-object v2, p0, Lcom/sleepycat/b/bi;->h:Lcom/sleepycat/b/be;

    if-eq v1, v2, :cond_0

    .line 1430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary and secondary have different SecondaryAssociation instances. Remember to configure the SecondaryAssociation on the primary database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
