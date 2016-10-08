.class public final Lcom/sleepycat/b/i/b/ao;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/i/c/ay;",
            "Ljava/util/concurrent/ExecutorService;",
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
    .line 90
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 93
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 94
    new-instance v3, Lcom/sleepycat/b/i/c/au;

    .line 1452
    iget-object v4, p2, Lcom/sleepycat/b/i/c/as;->k:Lcom/sleepycat/b/i/c/ap;

    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v0, p1, p2}, Lcom/sleepycat/b/i/c/au;-><init>(Lcom/sleepycat/b/i/c/ap;Ljava/net/InetSocketAddress;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;)V

    .line 97
    :try_start_0
    invoke-interface {p3, v3, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-interface {p3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 114
    :goto_1
    return-object v0

    .line 111
    :cond_0
    throw v0

    :cond_1
    move-object v0, v1

    .line 114
    goto :goto_1
.end method

.method static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/sleepycat/b/i/c/au;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 147
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 52
    if-eqz p4, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {p4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 60
    invoke-virtual {p5}, Ljava/io/PrintWriter;->close()V

    .line 62
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    :try_start_1
    invoke-virtual {p3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_2
    :goto_1
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Socket exception on close: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
