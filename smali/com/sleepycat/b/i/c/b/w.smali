.class public final Lcom/sleepycat/b/i/c/b/w;
.super Ljava/lang/Object;
.source "MonitorEventManager.java"


# instance fields
.field public a:J

.field public final b:Lcom/sleepycat/b/i/c/b/aa;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/w;->a:J

    .line 45
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 46
    return-void
.end method

.method public static a(Lcom/sleepycat/b/i/c/t;)Lcom/sleepycat/b/i/d/g;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/sleepycat/b/i/d/g;

    .line 2760
    iget-object v1, p0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 131
    sget-object v2, Lcom/sleepycat/b/i/c/b/x;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/d/g;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/c/ay;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/i/c/t;",
            "Lcom/sleepycat/b/i/c/ay;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/sleepycat/b/i/c/au;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/t;->g()Ljava/util/Set;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/aa;->a()Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 3520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Refreshed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " monitors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 143
    const-string v1, "Monitor"

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 3540
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    .line 4208
    iget-object v2, v2, Lcom/sleepycat/b/i/b/d;->h:Ljava/util/concurrent/ExecutorService;

    .line 143
    invoke-static {v0, v1, p2, v2}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/i/d/d;)V
    .locals 10

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/w;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 125
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 1421
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 102
    new-instance v1, Lcom/sleepycat/b/i/d/k;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/w;->a(Lcom/sleepycat/b/i/c/t;)Lcom/sleepycat/b/i/d/g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 1441
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 2087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/aa;->f()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/sleepycat/b/i/c/b/w;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v5, p1

    invoke-direct/range {v1 .. v9}, Lcom/sleepycat/b/i/d/k;-><init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i/d/d;JJ)V

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/i/c/b/w;->a(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/c/ay;)Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 118
    const-wide/16 v2, 0xa

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    goto :goto_0
.end method
