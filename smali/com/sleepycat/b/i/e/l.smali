.class public final Lcom/sleepycat/b/i/e/l;
.super Ljava/lang/Object;
.source "MasterChangeListener.java"

# interfaces
.implements Lcom/sleepycat/b/i/b/k;


# instance fields
.field private a:Lcom/sleepycat/b/i/b/ai;

.field private final b:Lcom/sleepycat/b/i/c/b/aa;

.field private final c:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/l;->a:Lcom/sleepycat/b/i/b/ai;

    .line 31
    iput-object p1, p0, Lcom/sleepycat/b/i/e/l;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/l;->c:Ljava/util/logging/Logger;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    .locals 11

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/e/l;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 1380
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->l:Lcom/sleepycat/b/i/c/b/b;

    .line 42
    invoke-virtual {v1, p1}, Lcom/sleepycat/b/i/c/b/b;->b(Lcom/sleepycat/b/i/b/s;)V

    .line 44
    iget-object v1, p0, Lcom/sleepycat/b/i/e/l;->a:Lcom/sleepycat/b/i/b/ai;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/sleepycat/b/i/e/l;->c:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/e/l;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 1520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Master change listener -- no value change.Proposal: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/sleepycat/b/i/e/l;->a:Lcom/sleepycat/b/i/b/ai;

    .line 69
    return-void

    .line 51
    :cond_1
    :try_start_1
    move-object v0, p2

    check-cast v0, Lcom/sleepycat/b/i/b/l;

    move-object v1, v0

    .line 53
    iget-object v2, p0, Lcom/sleepycat/b/i/e/l;->c:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/e/l;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 2520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Master change listener notified. Proposal:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/sleepycat/b/i/e/l;->c:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/e/l;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 3520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Master changed to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4059
    iget-object v5, v1, Lcom/sleepycat/b/i/b/l;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 4087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/sleepycat/b/i/e/l;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 4462
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 60
    new-instance v3, Ljava/net/InetSocketAddress;

    .line 5047
    iget-object v4, v1, Lcom/sleepycat/b/i/b/l;->a:Ljava/lang/String;

    .line 5051
    iget v5, v1, Lcom/sleepycat/b/i/b/l;->b:I

    .line 60
    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 5059
    iget-object v1, v1, Lcom/sleepycat/b/i/b/l;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 60
    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/b/i/e/n;->a(Ljava/net/InetSocketAddress;Lcom/sleepycat/b/i/c/b/x;)V

    .line 66
    iget-object v1, p0, Lcom/sleepycat/b/i/e/l;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 5540
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    .line 5793
    iget-object v2, v1, Lcom/sleepycat/b/i/b/d;->a:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/t;->g()Ljava/util/Set;

    move-result-object v2

    .line 5794
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 5797
    iget-object v3, v1, Lcom/sleepycat/b/i/b/d;->k:Ljava/util/logging/Logger;

    iget-object v4, v1, Lcom/sleepycat/b/i/b/d;->d:Lcom/sleepycat/b/i/c/aj;

    iget-object v5, v1, Lcom/sleepycat/b/i/b/d;->l:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v7, "Propagating election results to %d monitors\n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 5801
    iget-object v3, v1, Lcom/sleepycat/b/i/b/d;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sleepycat/b/i/b/g;

    new-instance v5, Lcom/sleepycat/b/i/b/v;

    const/4 v6, 0x0

    invoke-direct {v5, p1, p2, v6}, Lcom/sleepycat/b/i/b/v;-><init>(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;Lcom/sleepycat/b/p/ai;)V

    invoke-direct {v4, v1, v2, v5}, Lcom/sleepycat/b/i/b/g;-><init>(Lcom/sleepycat/b/i/b/d;Ljava/util/Set;Lcom/sleepycat/b/i/b/v;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 68
    :catchall_0
    move-exception v1

    iput-object p2, p0, Lcom/sleepycat/b/i/e/l;->a:Lcom/sleepycat/b/i/b/ai;

    throw v1
.end method
