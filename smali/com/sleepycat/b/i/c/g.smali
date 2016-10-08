.class public final Lcom/sleepycat/b/i/c/g;
.super Lcom/sleepycat/b/i/h/z;
.source "GroupService.java"


# instance fields
.field final a:Lcom/sleepycat/b/i/c/b/aa;

.field final b:Lcom/sleepycat/b/i/c/x;

.field final c:Ljava/util/logging/Logger;

.field private final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 4

    .prologue
    .line 66
    const-string v0, "Group"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/i/h/z;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/h/x;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/g;->e:Ljava/util/Collection;

    .line 67
    iput-object p2, p0, Lcom/sleepycat/b/i/c/g;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 2520
    iget-object v0, p2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 71
    sget-object v1, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/sleepycat/b/i/c/x;

    .line 3454
    iget-object v2, p2, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 3520
    iget-object v3, p2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 72
    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/b/i/c/x;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/g;->b:Lcom/sleepycat/b/i/c/x;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/g;->c:Ljava/util/logging/Logger;

    .line 76
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/channels/SocketChannel;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/sleepycat/b/i/c/h;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/g;->b:Lcom/sleepycat/b/i/c/x;

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/b/i/c/h;-><init>(Lcom/sleepycat/b/i/c/g;Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/x;)V

    return-object v0
.end method

.method protected final a()V
    .locals 7

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/g;->e:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    iget-object v1, p0, Lcom/sleepycat/b/i/c/g;->e:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/sleepycat/b/i/c/g;->c:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/g;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 4520
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 86
    const-string v3, "In-flight GroupService request(s) canceled: node shutdown"

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 92
    :try_start_1
    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 94
    new-instance v3, Lcom/sleepycat/b/i/c/ab;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/g;->b:Lcom/sleepycat/b/i/c/x;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/sleepycat/b/i/c/ac;->a:Lcom/sleepycat/b/i/c/ac;

    const-string v6, "shutting down"

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/b/i/c/ab;-><init>(Lcom/sleepycat/b/i/c/x;Lcom/sleepycat/b/i/c/ac;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/az;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/sleepycat/b/i/c/g;->c:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/g;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 6520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IO error on socket close: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v3, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 97
    :catch_1
    move-exception v1

    .line 98
    :try_start_4
    iget-object v3, p0, Lcom/sleepycat/b/i/c/g;->c:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/g;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 5520
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IO error on socket: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 102
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 106
    :catch_2
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/sleepycat/b/i/c/g;->c:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/g;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 6520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IO error on socket close: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 102
    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 102
    :cond_2
    :goto_2
    throw v1

    .line 114
    :cond_3
    return-void

    .line 106
    :catch_3
    move-exception v0

    .line 107
    iget-object v2, p0, Lcom/sleepycat/b/i/c/g;->c:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/g;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 6520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IO error on socket close: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final declared-synchronized b(Ljava/nio/channels/SocketChannel;)V
    .locals 1

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/g;->e:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Ljava/nio/channels/SocketChannel;)Z
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/g;->e:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
