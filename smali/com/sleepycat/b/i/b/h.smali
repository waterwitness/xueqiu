.class final Lcom/sleepycat/b/i/b/h;
.super Ljava/util/TimerTask;
.source "Elections.java"


# instance fields
.field final a:I

.field final synthetic b:Lcom/sleepycat/b/i/b/d;

.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/b/d;I)V
    .locals 1

    .prologue
    .line 843
    iput-object p1, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 839
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 840
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/i/b/h;->d:I

    .line 844
    iput p2, p0, Lcom/sleepycat/b/i/b/h;->a:I

    .line 845
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_2

    .line 863
    iget v0, p0, Lcom/sleepycat/b/i/b/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/b/h;->d:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/d;->i(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to acquire lock after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/sleepycat/b/i/b/h;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 917
    :cond_1
    return-void

    .line 872
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sleepycat/b/i/b/h;->d:I

    .line 873
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 1462
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 873
    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 914
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_0

    .line 883
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 2394
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 884
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/m;->a()Ljava/util/Set;

    move-result-object v1

    .line 885
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->g(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 2441
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 3087
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 885
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 889
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->d(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/t;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/i/c/t;->a(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 3197
    iget-object v4, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 4087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 890
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 891
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/am;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 910
    :catch_0
    move-exception v0

    .line 911
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v1}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v2}, Lcom/sleepycat/b/i/b/d;->i(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v3}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 914
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_0

    .line 895
    :cond_5
    :try_start_4
    invoke-interface {v2}, Ljava/util/Set;->size()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 914
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_0

    .line 899
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v3, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v3}, Lcom/sleepycat/b/i/b/d;->i(Lcom/sleepycat/b/i/b/d;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v4}, Lcom/sleepycat/b/i/b/d;->b(Lcom/sleepycat/b/i/b/d;)Ljava/util/logging/Formatter;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "informing learners:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " active: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v4, v5, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->b:Lcom/sleepycat/b/i/b/d;

    invoke-static {v0}, Lcom/sleepycat/b/i/b/d;->f(Lcom/sleepycat/b/i/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/b/i/b/h$1;

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/b/i/b/h$1;-><init>(Lcom/sleepycat/b/i/b/h;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 914
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_0

    .line 914
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 915
    iget-object v1, p0, Lcom/sleepycat/b/i/b/h;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 914
    :cond_7
    throw v0
.end method
