.class public final Lcom/sleepycat/b/i/h/aa;
.super Lcom/sleepycat/b/i/h/ab;
.source "ServiceDispatcher.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/h/x;

.field private final e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/x;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Thread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 856
    iput-object p1, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    .line 858
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/i/h/ab;-><init>(Lcom/sleepycat/b/i/h/x;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 859
    iput-object p4, p0, Lcom/sleepycat/b/i/h/aa;->e:Ljava/lang/Thread;

    .line 860
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/sleepycat/b/i/h/aa;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sleepycat/b/i/h/aa;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 903
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/aa;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sleepycat/b/i/h/ab;->a()V

    .line 909
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final d(Ljava/nio/channels/SocketChannel;)V
    .locals 6

    .prologue
    .line 865
    sget-object v0, Lcom/sleepycat/b/i/h/x$1;->a:[I

    iget-object v1, p0, Lcom/sleepycat/b/i/h/aa;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread for service:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/h/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is in state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/aa;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v1}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v2}, Lcom/sleepycat/b/i/h/x;->b(Lcom/sleepycat/b/i/h/x;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v3}, Lcom/sleepycat/b/i/h/x;->c(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 890
    throw v0

    .line 868
    :pswitch_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/aa;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 869
    iget-object v0, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v1}, Lcom/sleepycat/b/i/h/x;->b(Lcom/sleepycat/b/i/h/x;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v2}, Lcom/sleepycat/b/i/h/x;->c(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Thread started for service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/h/aa;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 892
    :goto_0
    invoke-super {p0, p1}, Lcom/sleepycat/b/i/h/ab;->d(Ljava/nio/channels/SocketChannel;)V

    .line 893
    return-void

    .line 878
    :pswitch_1
    iget-object v0, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v1}, Lcom/sleepycat/b/i/h/x;->b(Lcom/sleepycat/b/i/h/x;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/h/aa;->a:Lcom/sleepycat/b/i/h/x;

    invoke-static {v2}, Lcom/sleepycat/b/i/h/x;->c(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Thread started for service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/h/aa;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
