.class public final Lcom/sleepycat/b/i/b/j;
.super Lcom/sleepycat/b/i/b/c;
.source "Learner.java"


# instance fields
.field private final e:Lcom/sleepycat/b/i/h/x;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/i/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/sleepycat/b/i/b/s;

.field private h:Lcom/sleepycat/b/i/b/ai;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 1

    .prologue
    .line 85
    .line 1358
    iget-object v0, p2, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 85
    invoke-direct {p0, p2, p1, v0}, Lcom/sleepycat/b/i/b/j;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/h/x;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/h/x;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Learner Thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2187
    iget-object v1, p2, Lcom/sleepycat/b/i/c/ap;->k:Lcom/sleepycat/b/i/c/b/x;

    .line 3087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/i/b/c;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/b/x;Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/j;->f:Ljava/util/List;

    .line 60
    iput-object v2, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    .line 61
    iput-object v2, p0, Lcom/sleepycat/b/i/b/j;->h:Lcom/sleepycat/b/i/b/ai;

    .line 93
    iput-object p3, p0, Lcom/sleepycat/b/i/b/j;->e:Lcom/sleepycat/b/i/h/x;

    .line 96
    new-instance v0, Lcom/sleepycat/b/i/b/j$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/b/j$1;-><init>(Lcom/sleepycat/b/i/b/j;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/b/j;->a(Lcom/sleepycat/b/i/b/k;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/i/b/j;)Lcom/sleepycat/b/c/ad;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/net/Socket;Lcom/sleepycat/b/i/c/ay;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->h:Lcom/sleepycat/b/i/b/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 267
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    check-cast v0, Lcom/sleepycat/b/i/c/aj;

    .line 4479
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v0

    .line 5008
    sget-object v2, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sleepycat/b/i/u;->d:Lcom/sleepycat/b/i/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_3

    :cond_2
    move v0, v1

    .line 267
    :goto_1
    if-eqz v0, :cond_0

    .line 272
    const/4 v2, 0x0

    .line 274
    :try_start_2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    :try_start_3
    new-instance v0, Lcom/sleepycat/b/i/b/ab;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/j;->h:Lcom/sleepycat/b/i/b/ai;

    invoke-direct {v0, v2, v3, v4}, Lcom/sleepycat/b/i/b/ab;-><init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V

    .line 5438
    iget-object v2, p2, Lcom/sleepycat/b/i/c/as;->i:Ljava/lang/String;

    .line 286
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/b/ab;->a(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 289
    if-eqz v1, :cond_0

    .line 290
    :try_start_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5008
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 289
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 290
    :try_start_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 289
    :cond_4
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public static a(Ljava/util/Set;Lcom/sleepycat/b/i/b/v;Lcom/sleepycat/b/i/b/x;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/b/i/c/aj;Ljava/util/logging/Formatter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lcom/sleepycat/b/i/b/v;",
            "Lcom/sleepycat/b/i/b/x;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/logging/Logger;",
            "Lcom/sleepycat/b/i/c/aj;",
            "Ljava/util/logging/Formatter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 498
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 499
    :cond_0
    const-string v0, "There must be at least one learner"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 503
    :cond_1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Informing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " learners."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5, p6, v0, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 505
    const-string v0, "Learner"

    new-instance v1, Lcom/sleepycat/b/i/b/af;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lcom/sleepycat/b/i/b/v;->a:Lcom/sleepycat/b/i/b/s;

    iget-object v3, p1, Lcom/sleepycat/b/i/b/v;->b:Lcom/sleepycat/b/i/b/ai;

    invoke-direct {v1, p2, v2, v3}, Lcom/sleepycat/b/i/b/af;-><init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V

    invoke-static {p0, v0, v1, p3}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object v1

    .line 514
    const/4 v0, 0x0

    .line 515
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 517
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/au;

    .line 518
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v2

    if-nez v2, :cond_2

    .line 520
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No response from: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p5, p6, v2, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    add-int/lit8 v0, v1, 0x1

    .line 529
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "informLearners: interrupted while informing "

    invoke-static {p4, p5, p6, v1, v2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    move v1, v0

    .line 538
    goto :goto_0

    .line 532
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 533
    add-int/lit8 v0, v1, 0x1

    .line 534
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "informLearners: exception while informing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, p5, p6, v1, v2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    move v1, v0

    .line 539
    goto :goto_0

    .line 540
    :cond_3
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Informed learners: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5, p6, v0, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 543
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/i/b/k;)V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->f:Ljava/util/List;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    .locals 9

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    invoke-interface {p1, v0}, Lcom/sleepycat/b/i/b/s;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring obsolete winner: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :goto_0
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    .line 144
    iput-object p2, p0, Lcom/sleepycat/b/i/b/j;->h:Lcom/sleepycat/b/i/b/ai;

    .line 147
    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->f:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/b/k;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/j;->h:Lcom/sleepycat/b/i/b/ai;

    invoke-interface {v0, v3, v4}, Lcom/sleepycat/b/i/b/k;->a(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    iget-object v3, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v5, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception in Learner Listener: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 313
    new-instance v1, Lcom/sleepycat/b/p/al;

    const-string v2, "JE Learner"

    iget-object v3, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/al;-><init>(Ljava/lang/String;Ljava/util/logging/Logger;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 318
    :try_start_0
    new-instance v0, Lcom/sleepycat/b/i/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/sleepycat/b/i/b/aa;-><init>(Lcom/sleepycat/b/i/b/x;)V

    .line 319
    const-string v2, "Learner"

    invoke-static {p1, v2, v0, v1}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v5, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sent master request "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 327
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 328
    new-instance v3, Lcom/sleepycat/b/i/b/j$2;

    invoke-direct {v3, p0, v0}, Lcom/sleepycat/b/i/b/j$2;-><init>(Lcom/sleepycat/b/i/b/j;Ljava/util/concurrent/Future;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v5, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    invoke-virtual {v3, v0, v4, v5}, Lcom/sleepycat/b/i/b/j$2;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 359
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;Ljava/util/concurrent/ExecutorService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 465
    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->h:Lcom/sleepycat/b/i/b/ai;

    if-nez v0, :cond_2

    .line 467
    :cond_0
    monitor-exit p0

    .line 479
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    new-instance v1, Lcom/sleepycat/b/i/b/v;

    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->g:Lcom/sleepycat/b/i/b/s;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->h:Lcom/sleepycat/b/i/b/ai;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/b/i/b/v;-><init>(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;Lcom/sleepycat/b/p/ai;)V

    .line 471
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    iget-object v5, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    check-cast v5, Lcom/sleepycat/b/i/c/aj;

    .line 474
    if-eqz v5, :cond_1

    .line 477
    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    iget-object v4, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    move-object v0, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/sleepycat/b/i/b/j;->a(Ljava/util/Set;Lcom/sleepycat/b/i/b/v;Lcom/sleepycat/b/i/b/x;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/b/i/c/aj;Ljava/util/logging/Formatter;)V

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 169
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->e:Lcom/sleepycat/b/i/h/x;

    const-string v1, "Learner"

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 170
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Learner started"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 175
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->e:Lcom/sleepycat/b/i/h/x;

    const-string v1, "Learner"

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    .line 3183
    iget v2, v2, Lcom/sleepycat/b/i/c/ap;->m:I

    .line 175
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->e:Lcom/sleepycat/b/i/h/x;

    const-string v1, "Learner"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 250
    return-void

    .line 185
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 187
    const/4 v5, 0x0

    .line 189
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 191
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v1

    .line 192
    if-nez v1, :cond_1

    .line 236
    :try_start_4
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 4119
    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    .line 240
    if-eqz v1, :cond_5

    .line 248
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->e:Lcom/sleepycat/b/i/h/x;

    const-string v1, "Learner"

    goto :goto_1

    .line 197
    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/b/x;->c(Ljava/lang/String;)Lcom/sleepycat/b/i/c/ay;
    :try_end_6
    .catch Lcom/sleepycat/b/i/c/ar; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v0

    .line 208
    :try_start_7
    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v8, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v9, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "learner request: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sender: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3414
    iget v11, v0, Lcom/sleepycat/b/i/c/as;->h:I

    .line 208
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v7, v8, v9, v10}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v2

    iget-object v7, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    iget-object v7, v7, Lcom/sleepycat/b/i/b/x;->c:Lcom/sleepycat/b/i/c/av;

    if-ne v2, v7, :cond_2

    .line 215
    check-cast v0, Lcom/sleepycat/b/i/b/af;

    .line 216
    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/af;->d()Lcom/sleepycat/b/i/b/s;

    move-result-object v1

    .line 3621
    iget-object v0, v0, Lcom/sleepycat/b/i/b/y;->a:Lcom/sleepycat/b/i/b/ai;

    .line 216
    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/b/i/b/j;->a(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 236
    :goto_2
    :try_start_8
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 248
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->e:Lcom/sleepycat/b/i/h/x;

    const-string v2, "Learner"

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    throw v0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    :try_start_9
    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v5, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Message format exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/ar;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v5, v7, v8}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 202
    new-instance v5, Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v5, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 203
    :try_start_a
    new-instance v1, Lcom/sleepycat/b/i/c/ax;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/b/i/c/ax;-><init>(Lcom/sleepycat/b/i/c/ap;Lcom/sleepycat/b/i/c/ar;)V

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/ax;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 236
    :try_start_b
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 217
    :cond_2
    :try_start_c
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v2

    iget-object v7, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    iget-object v7, v7, Lcom/sleepycat/b/i/b/x;->d:Lcom/sleepycat/b/i/c/av;

    if-ne v2, v7, :cond_3

    .line 219
    invoke-direct {p0, v3, v0}, Lcom/sleepycat/b/i/b/j;->a(Ljava/net/Socket;Lcom/sleepycat/b/i/c/ay;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_2

    .line 229
    :catch_2
    move-exception v0

    move-object v5, v6

    .line 230
    :goto_3
    :try_start_d
    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v7, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "IO exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v7, v8, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 236
    :try_start_e
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    .line 220
    :cond_3
    :try_start_f
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->a:Lcom/sleepycat/b/i/b/x;

    iget-object v2, v2, Lcom/sleepycat/b/i/b/x;->e:Lcom/sleepycat/b/i/c/av;

    if-ne v0, v2, :cond_4

    .line 221
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "Learner thread exiting"

    invoke-static {v0, v1, v2, v7, v8}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 236
    :try_start_10
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 248
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->e:Lcom/sleepycat/b/i/h/x;

    const-string v1, "Learner"

    goto/16 :goto_1

    .line 226
    :cond_4
    :try_start_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized request: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 234
    :catch_3
    move-exception v0

    :goto_4
    :try_start_12
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 236
    :catchall_1
    move-exception v0

    move-object v5, v6

    move-object v6, v0

    :goto_5
    :try_start_13
    iget-object v0, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    throw v6
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 244
    :cond_5
    :try_start_14
    iget-object v1, p0, Lcom/sleepycat/b/i/b/j;->b:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/b/j;->D:Lcom/sleepycat/b/c/ad;

    iget-object v3, p0, Lcom/sleepycat/b/i/b/j;->c:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Learner unexpected interrupted"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 246
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 236
    :catchall_2
    move-exception v0

    move-object v5, v6

    move-object v4, v6

    move-object v6, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v6

    move-object v6, v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v6, v0

    goto :goto_5

    .line 234
    :catch_4
    move-exception v0

    move-object v4, v6

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v6, v5

    goto :goto_4

    .line 229
    :catch_6
    move-exception v0

    move-object v5, v6

    move-object v4, v6

    goto/16 :goto_3

    :catch_7
    move-exception v0

    goto/16 :goto_3
.end method
