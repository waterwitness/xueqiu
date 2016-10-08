.class public Lcom/sleepycat/b/i/h/ab;
.super Lcom/sleepycat/b/i/h/ad;
.source "ServiceDispatcher.java"


# instance fields
.field final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/sleepycat/b/i/h/x;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/h/x;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 790
    iput-object p1, p0, Lcom/sleepycat/b/i/h/ab;->c:Lcom/sleepycat/b/i/h/x;

    .line 791
    invoke-direct {p0, p2}, Lcom/sleepycat/b/i/h/ad;-><init>(Ljava/lang/String;)V

    .line 792
    iput-object p3, p0, Lcom/sleepycat/b/i/h/ab;->b:Ljava/util/concurrent/BlockingQueue;

    .line 793
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sleepycat/b/i/h/ab;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 832
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/ab;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/b/i/h/q;->a:Ljava/nio/channels/SocketChannel;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 838
    return-void
.end method

.method public final bridge synthetic b()Z
    .locals 1

    .prologue
    .line 785
    invoke-super {p0}, Lcom/sleepycat/b/i/h/ad;->b()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic c()Z
    .locals 1

    .prologue
    .line 785
    invoke-super {p0}, Lcom/sleepycat/b/i/h/ad;->c()Z

    move-result v0

    return v0
.end method

.method d(Ljava/nio/channels/SocketChannel;)V
    .locals 7

    .prologue
    .line 801
    .line 1785
    invoke-super {p0}, Lcom/sleepycat/b/i/h/ad;->c()Z

    move-result v0

    .line 801
    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sleepycat/b/i/h/ab;->c:Lcom/sleepycat/b/i/h/x;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/ab;->c:Lcom/sleepycat/b/i/h/x;

    invoke-static {v1}, Lcom/sleepycat/b/i/h/x;->b(Lcom/sleepycat/b/i/h/x;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/h/ab;->c:Lcom/sleepycat/b/i/h/x;

    invoke-static {v2}, Lcom/sleepycat/b/i/h/x;->c(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Simulated test IO exception"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 809
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/ab;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    const-string v0, "request queue overflow"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    iget-object v1, p0, Lcom/sleepycat/b/i/h/ab;->c:Lcom/sleepycat/b/i/h/x;

    invoke-static {v1}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/h/ab;->c:Lcom/sleepycat/b/i/h/x;

    invoke-static {v2}, Lcom/sleepycat/b/i/h/x;->b(Lcom/sleepycat/b/i/h/x;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/h/ab;->c:Lcom/sleepycat/b/i/h/x;

    invoke-static {v3}, Lcom/sleepycat/b/i/h/x;->c(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Close failure in \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sleepycat/b/i/h/ab;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_1
    return-void
.end method
