.class final Lcom/sleepycat/b/i/c/b/k;
.super Lcom/sleepycat/b/p/aj;
.source "Feeder.java"


# instance fields
.field a:Lcom/sleepycat/b/i/e/t;

.field final synthetic b:Lcom/sleepycat/b/i/c/b/h;

.field private c:Lcom/sleepycat/b/i/c/b/r;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/i/c/aj;)V
    .locals 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 362
    new-instance v0, Lcom/sleepycat/b/i/c/b/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/i/c/b/j;-><init>(Lcom/sleepycat/b/i/c/b/h;B)V

    const-string v1, "Feeder Input"

    invoke-direct {p0, p2, v0, v1}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->a:Lcom/sleepycat/b/i/e/t;

    .line 363
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 511
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/k;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 512
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->a:Lcom/sleepycat/b/i/e/t;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 513
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/k;->d()Z

    move-result v1

    if-nez v1, :cond_4

    .line 521
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->i(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/e/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/e/n;->e()V

    .line 523
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;J)J

    .line 525
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/i/e/t;->o:Lcom/sleepycat/b/i/h/e;

    if-ne v1, v2, :cond_1

    .line 527
    check-cast v0, Lcom/sleepycat/b/i/e/af;

    .line 529
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->c:Lcom/sleepycat/b/i/c/b/r;

    .line 22987
    iget-object v2, v0, Lcom/sleepycat/b/i/e/af;->a:Lcom/sleepycat/b/p/au;

    .line 22153
    const-string v3, "heartbeat"

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/i/c/b/r;->a(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V

    .line 22991
    iget-object v0, v0, Lcom/sleepycat/b/i/e/af;->b:Lcom/sleepycat/b/p/au;

    .line 531
    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1, v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/p/au;

    .line 533
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->d(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->e(Lcom/sleepycat/b/i/c/b/h;)Z

    .line 536
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/h;->a()V

    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/i/e/t;->q:Lcom/sleepycat/b/i/h/e;

    if-ne v1, v2, :cond_3

    .line 545
    check-cast v0, Lcom/sleepycat/b/i/e/u;

    .line 23164
    iget-wide v0, v0, Lcom/sleepycat/b/i/e/u;->a:J

    .line 546
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->l(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ack for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 549
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v2, v0, v1}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;J)V

    goto/16 :goto_0

    .line 550
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/i/e/t;->x:Lcom/sleepycat/b/i/h/e;

    if-ne v1, v2, :cond_5

    .line 551
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->l(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shutdown confirmed by replica "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v3

    .line 24087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 561
    :cond_4
    return-void

    .line 557
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method private d()Z
    .locals 4

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->m(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 24129
    iget-wide v0, v0, Lcom/sleepycat/b/i/c/b/aa;->s:J

    .line 570
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 582
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 24512
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 582
    return v0
.end method

.method public final run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 374
    .line 378
    :try_start_0
    new-instance v4, Lcom/sleepycat/b/i/e/c;

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/sleepycat/b/i/e/c;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/h/o;)V

    .line 2158
    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->f:Ljava/util/logging/Logger;

    iget-object v1, v4, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 2520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 2158
    const-string v3, "Feeder-replica handshake start"

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 3390
    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-static {v0}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/c/b/aa;)Lcom/sleepycat/b/i/e/t;

    move-result-object v3

    .line 3396
    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/an;

    .line 4339
    iget-object v1, v0, Lcom/sleepycat/b/i/e/al;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 3399
    iput-object v1, v4, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 3401
    iget-object v1, v4, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 4394
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 3401
    iget-object v5, v4, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 5087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 5209
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v1, v5}, Lcom/sleepycat/b/i/h/af;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/i/c/b/h;

    .line 3403
    if-nez v1, :cond_0

    .line 5339
    iget-object v1, v0, Lcom/sleepycat/b/i/e/al;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 6087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 3403
    iget-object v5, v4, Lcom/sleepycat/b/i/e/c;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 7087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 3403
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3407
    :cond_0
    new-instance v0, Lcom/sleepycat/b/i/e/x;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "This node: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " is already in active use at the feeder "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/sleepycat/b/i/e/x;-><init>(Lcom/sleepycat/b/i/e/t;Ljava/lang/String;)V

    iget-object v1, v4, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 3411
    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 3413
    new-instance v1, Lcom/sleepycat/b/i/c/b/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "A replica with the id: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already active with this feeder.  The duplicate replica resides at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/b/i;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 429
    :catch_0
    move-exception v0

    .line 432
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->l(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/e;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 469
    if-eqz v2, :cond_e

    .line 471
    throw v2

    .line 7330
    :cond_1
    :try_start_2
    iget v0, v0, Lcom/sleepycat/b/i/e/al;->c:I

    .line 3425
    iget-object v1, v4, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-static {v1, v0}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/c/b/aa;I)Lcom/sleepycat/b/i/e/t;

    move-result-object v1

    .line 3426
    if-nez v1, :cond_2

    move-object v1, v3

    .line 3429
    :cond_2
    new-instance v0, Lcom/sleepycat/b/i/e/ac;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8222
    iget v5, v1, Lcom/sleepycat/b/i/h/a;->B:I

    .line 3429
    invoke-direct {v0, v3, v5}, Lcom/sleepycat/b/i/e/ac;-><init>(Lcom/sleepycat/b/i/e/t;I)V

    iget-object v5, v4, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v3, v0, v5}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 2165
    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/e/t;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/am;

    iput-object v0, v4, Lcom/sleepycat/b/i/e/c;->e:Lcom/sleepycat/b/i/e/am;

    .line 2166
    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->f:Ljava/util/logging/Logger;

    iget-object v3, v4, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 8520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 2166
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " Replica "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 9087
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 2166
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " JE version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/sleepycat/b/i/e/c;->e:Lcom/sleepycat/b/i/e/am;

    invoke-virtual {v6}, Lcom/sleepycat/b/i/e/am;->d()Lcom/sleepycat/b/am;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/b/am;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Log version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/sleepycat/b/i/e/c;->e:Lcom/sleepycat/b/i/e/am;

    invoke-virtual {v6}, Lcom/sleepycat/b/i/e/am;->c()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 2172
    iget-object v5, v4, Lcom/sleepycat/b/i/e/c;->e:Lcom/sleepycat/b/i/e/am;

    .line 9116
    invoke-virtual {v5}, Lcom/sleepycat/b/i/e/ag;->c()B

    move-result v6

    .line 9117
    invoke-static {}, Lcom/sleepycat/b/i/e/c;->a()I

    move-result v3

    .line 9119
    const/16 v0, 0x9

    if-lt v3, v0, :cond_4

    .line 9120
    add-int/lit8 v0, v3, -0x1

    .line 9124
    :goto_0
    if-lt v6, v0, :cond_5

    move-object v0, v2

    .line 2175
    :goto_1
    if-eqz v0, :cond_6

    .line 2176
    iget-object v3, v4, Lcom/sleepycat/b/i/e/c;->f:Ljava/util/logging/Logger;

    iget-object v5, v4, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 9520
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 2176
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Version incompatibility: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9888
    iget-object v7, v0, Lcom/sleepycat/b/i/h/i;->b:Ljava/lang/String;

    .line 2176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with replica "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 10087
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 2176
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 2180
    iget-object v3, v4, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v1, v0, v3}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    move-object v0, v1

    .line 382
    :goto_2
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->a:Lcom/sleepycat/b/i/e/t;

    .line 383
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->a:Lcom/sleepycat/b/i/e/t;

    .line 11222
    iget v1, v1, Lcom/sleepycat/b/i/h/a;->B:I

    .line 383
    invoke-static {v0, v1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;I)I

    .line 384
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 12087
    iget-object v1, v4, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 384
    invoke-static {v0, v1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/i/c/b/x;)Lcom/sleepycat/b/i/c/b/x;

    .line 385
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 12142
    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->e:Lcom/sleepycat/b/i/e/am;

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->e:Lcom/sleepycat/b/i/e/am;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/am;->c()B

    move-result v0

    .line 385
    :goto_3
    invoke-static {v1, v0}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;I)I

    .line 391
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Feeder Input for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v3

    .line 13087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 391
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 394
    new-instance v0, Lcom/sleepycat/b/i/e/d;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/k;->a:Lcom/sleepycat/b/i/e/t;

    invoke-direct {v0, v1, v3, v4}, Lcom/sleepycat/b/i/e/d;-><init>(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/i/h/o;Lcom/sleepycat/b/i/e/t;)V

    .line 405
    new-instance v1, Lcom/sleepycat/b/i/c/b/r;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/b/i/c/b/r;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->c:Lcom/sleepycat/b/i/c/b/r;

    .line 413
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->c:Lcom/sleepycat/b/i/c/b/r;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/e/d;->a(Lcom/sleepycat/b/i/c/b/r;)Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->e()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/p/au;

    .line 415
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->d(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 417
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->e(Lcom/sleepycat/b/i/c/b/h;)Z

    .line 419
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1, v0}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/p/au;

    .line 420
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->g(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/b/i/e/f;->a(Lcom/sleepycat/b/p/au;)V

    .line 423
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->h(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/l;->start()V

    .line 424
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;J)J

    .line 425
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->i(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->e()V

    .line 426
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->j(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/m;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    .line 13276
    iget-object v4, v1, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    monitor-enter v4
    :try_end_2
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/sleepycat/b/g/c; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 13277
    :try_start_3
    iget-object v5, v1, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13278
    :try_start_4
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/m;->d:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 13345
    iget-object v6, v3, Lcom/sleepycat/b/i/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    .line 13279
    if-eqz v6, :cond_8

    .line 13280
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 428
    :goto_4
    :try_start_6
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/k;->b()V
    :try_end_6
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/sleepycat/b/g/c; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 469
    if-eqz v2, :cond_14

    .line 471
    throw v2

    :cond_4
    move v0, v3

    .line 9122
    goto/16 :goto_0

    .line 9124
    :cond_5
    :try_start_7
    new-instance v0, Lcom/sleepycat/b/i/e/ah;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Incompatible log versions. Feeder log version: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", Feeder JE version: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/sleepycat/b/am;->a:Lcom/sleepycat/b/am;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", Replica log version: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", Replica JE version: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sleepycat/b/i/e/ag;->d()Lcom/sleepycat/b/am;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/i/e/ah;-><init>(Lcom/sleepycat/b/i/e/t;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sleepycat/b/g/c; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_1

    .line 435
    :catch_1
    move-exception v0

    .line 469
    if-eqz v2, :cond_f

    .line 471
    throw v2

    .line 2188
    :cond_6
    :try_start_8
    invoke-static {}, Lcom/sleepycat/b/i/e/c;->a()I

    move-result v0

    iget-object v3, v4, Lcom/sleepycat/b/i/e/c;->e:Lcom/sleepycat/b/i/e/am;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/am;->c()B

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2191
    new-instance v3, Lcom/sleepycat/b/i/e/ab;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/sleepycat/b/am;->a:Lcom/sleepycat/b/am;

    invoke-direct {v3, v1, v5, v0}, Lcom/sleepycat/b/i/e/ab;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/am;I)V

    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->b:Lcom/sleepycat/b/i/h/o;

    invoke-virtual {v1, v3, v0}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 2195
    invoke-virtual {v4, v1}, Lcom/sleepycat/b/i/e/c;->b(Lcom/sleepycat/b/i/e/t;)V

    .line 2197
    invoke-virtual {v4, v1}, Lcom/sleepycat/b/i/e/c;->a(Lcom/sleepycat/b/i/e/t;)V

    .line 2198
    iget-object v0, v4, Lcom/sleepycat/b/i/e/c;->f:Ljava/util/logging/Logger;

    iget-object v3, v4, Lcom/sleepycat/b/i/e/c;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 10520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 2198
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Feeder-replica "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/sleepycat/b/i/e/c;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 11087
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 2198
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handshake completed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/sleepycat/b/g/c; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v0, v1

    .line 2203
    goto/16 :goto_2

    .line 12142
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 13282
    :cond_8
    :try_start_9
    sget-boolean v6, Lcom/sleepycat/b/i/c/b/m;->k:Z

    if-nez v6, :cond_9

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13299
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0

    .line 13300
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Lcom/sleepycat/b/i/e/e; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/sleepycat/b/i/c/b/i; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/sleepycat/b/g/c; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 437
    :catch_2
    move-exception v0

    .line 469
    if-eqz v2, :cond_10

    .line 471
    throw v2

    .line 14266
    :cond_9
    :try_start_c
    iget-object v0, v3, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 15087
    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 13284
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/m;->k:Z

    if-nez v0, :cond_a

    .line 15266
    iget-object v0, v3, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 13284
    sget-object v7, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v7}, Lcom/sleepycat/b/i/c/b/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13285
    :cond_a
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/i/h/af;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/b/h;

    .line 13286
    if-eqz v0, :cond_b

    .line 15345
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/h;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 13286
    if-nez v0, :cond_b

    .line 13287
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 15520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 13287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16266
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 13287
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is present in both nascent and active feeder sets"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 13293
    :cond_b
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v0, v6, v3}, Lcom/sleepycat/b/i/h/af;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13295
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 16933
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->q:Lcom/sleepycat/b/i/c/b/u;

    .line 13296
    if-eqz v0, :cond_c

    .line 18266
    iget-object v1, v3, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 19087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 17321
    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/u;->a:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 17322
    iget-object v6, v0, Lcom/sleepycat/b/i/c/b/u;->c:Ljava/util/logging/Logger;

    iget-object v7, v0, Lcom/sleepycat/b/i/c/b/u;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 19520
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 17322
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Add node "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " to existing Master Transfer"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v1}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 20246
    iput-object v0, v3, Lcom/sleepycat/b/i/c/b/h;->f:Lcom/sleepycat/b/i/c/b/u;

    .line 20247
    iget-boolean v0, v3, Lcom/sleepycat/b/i/c/b/h;->g:Z

    if-eqz v0, :cond_c

    .line 20248
    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/h;->a()V

    .line 13299
    :cond_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 13300
    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    .line 440
    :catch_3
    move-exception v0

    .line 442
    :try_start_e
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->l(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exiting feeder loop: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/i;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 469
    if-eqz v2, :cond_12

    .line 471
    throw v2

    .line 444
    :catch_4
    move-exception v0

    .line 446
    :try_start_f
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    .line 20520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 446
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/aj;->a(Ljava/lang/Error;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 469
    if-eqz v0, :cond_13

    .line 471
    throw v0

    .line 481
    :goto_5
    goto/32 :goto_5

    .line 447
    :catch_5
    move-exception v0

    .line 451
    :try_start_10
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v3

    .line 21520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 451
    sget-object v4, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 469
    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    if-eqz v2, :cond_d

    .line 471
    throw v2

    .line 454
    :catch_6
    move-exception v0

    .line 464
    :try_start_11
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/h;->l(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 467
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 469
    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    .line 479
    :cond_d
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v2, v1}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V

    .line 469
    throw v0

    .line 479
    :cond_e
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    :goto_7
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V

    .line 481
    :goto_8
    return-void

    .line 479
    :cond_f
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    goto :goto_7

    :cond_10
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    goto :goto_7

    .line 439
    :catch_7
    move-exception v0

    .line 469
    if-eqz v2, :cond_11

    .line 471
    throw v2

    .line 479
    :cond_11
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    goto :goto_7

    :cond_12
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    goto :goto_7

    :cond_13
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V

    goto :goto_5

    :cond_14
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/k;->b:Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V

    goto :goto_8

    .line 469
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_5
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    :catchall_6
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    :catchall_7
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_6
.end method
