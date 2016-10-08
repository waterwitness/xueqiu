.class public Lcom/sleepycat/b/i/b/c;
.super Lcom/sleepycat/b/p/aj;
.source "ElectionAgentThread.java"


# instance fields
.field protected final a:Lcom/sleepycat/b/i/b/x;

.field protected final b:Ljava/util/logging/Logger;

.field protected final c:Ljava/util/logging/Formatter;

.field protected final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/b/x;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/c;->d:Ljava/util/concurrent/BlockingQueue;

    .line 51
    iput-object p2, p0, Lcom/sleepycat/b/i/b/c;->a:Lcom/sleepycat/b/i/b/x;

    .line 53
    iget-object v0, p0, Lcom/sleepycat/b/i/b/c;->D:Lcom/sleepycat/b/c/ad;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sleepycat/b/i/b/c;->b:Ljava/util/logging/Logger;

    .line 57
    new-instance v0, Lcom/sleepycat/b/i/h/w;

    .line 2187
    iget-object v1, p2, Lcom/sleepycat/b/i/c/ap;->k:Lcom/sleepycat/b/i/c/b/x;

    .line 57
    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/h/w;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/c;->c:Ljava/util/logging/Formatter;

    .line 58
    return-void

    .line 1520
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sleepycat/b/i/b/c;->b:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sleepycat/b/i/b/c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/b/c;->b:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/b/c;->a(Ljava/util/logging/Logger;)V

    goto :goto_0
.end method

.method protected final c()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sleepycat/b/i/b/c;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 82
    iget-object v0, p0, Lcom/sleepycat/b/i/b/c;->d:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/b/i/h/q;->a:Ljava/nio/channels/SocketChannel;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x0

    return v0
.end method
