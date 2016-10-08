.class public abstract Lcom/sleepycat/b/i/h/y;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final synthetic e:Z


# instance fields
.field public final b:Ljava/nio/channels/SocketChannel;

.field public final c:Lcom/sleepycat/b/i/c/ap;

.field protected final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 982
    const-class v0, Lcom/sleepycat/b/i/h/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/h/y;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/nio/channels/SocketChannel;Lcom/sleepycat/b/i/c/ap;)V
    .locals 1

    .prologue
    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    iput-object p1, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    .line 991
    iput-object p2, p0, Lcom/sleepycat/b/i/h/y;->c:Lcom/sleepycat/b/i/c/ap;

    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/h/y;->d:Z

    .line 993
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/sleepycat/b/i/c/ay;)Lcom/sleepycat/b/i/c/az;
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 999
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 1000
    iget-object v0, p0, Lcom/sleepycat/b/i/h/y;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/ap;->a(Ljava/nio/channels/SocketChannel;)Lcom/sleepycat/b/i/c/ay;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1001
    if-nez v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO error on socket close: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/y;->a(Lcom/sleepycat/b/i/c/ay;)Lcom/sleepycat/b/i/c/az;

    move-result-object v0

    .line 1005
    iget-boolean v1, p0, Lcom/sleepycat/b/i/h/y;->d:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1006
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 1008
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/az;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1020
    :catch_1
    move-exception v0

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO error on socket close: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/y;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_3
    :try_start_4
    sget-boolean v1, Lcom/sleepycat/b/i/h/y;->e:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1012
    :catch_2
    move-exception v0

    .line 1013
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO error on socket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/y;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1017
    iget-object v0, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    :try_start_6
    iget-object v0, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1020
    :catch_3
    move-exception v0

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO error on socket close: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1017
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1019
    :try_start_7
    iget-object v1, p0, Lcom/sleepycat/b/i/h/y;->b:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1023
    :cond_4
    throw v0

    .line 1020
    :catch_4
    move-exception v0

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IO error on socket close: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/y;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
