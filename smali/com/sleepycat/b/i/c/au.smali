.class public final Lcom/sleepycat/b/i/c/au;
.super Ljava/lang/Object;
.source "TextProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/net/InetSocketAddress;

.field public b:Ljava/lang/Exception;

.field final synthetic c:Lcom/sleepycat/b/i/c/ap;

.field private final d:Lcom/sleepycat/b/i/c/ay;

.field private final e:Ljava/lang/String;

.field private f:Lcom/sleepycat/b/i/c/az;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/ap;Ljava/net/InetSocketAddress;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    iput-object p2, p0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    .line 866
    iput-object p3, p0, Lcom/sleepycat/b/i/c/au;->e:Ljava/lang/String;

    .line 867
    iput-object p4, p0, Lcom/sleepycat/b/i/c/au;->d:Lcom/sleepycat/b/i/c/ay;

    .line 868
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 906
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 910
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/ap;->d(Lcom/sleepycat/b/i/c/ap;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 911
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 912
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 913
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->a:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/ap;->e(Lcom/sleepycat/b/i/c/ap;)I

    move-result v2

    invoke-virtual {v3, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 914
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->e:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/sleepycat/b/i/h/x;->a(Ljava/net/Socket;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 917
    new-instance v5, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v5, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/b/i/c/ar; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/b/i/h/ae; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 918
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->d:Lcom/sleepycat/b/i/c/ay;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/ay;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    .line 920
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Lcom/sleepycat/b/i/c/ar; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/sleepycat/b/i/h/ae; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 922
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 923
    if-nez v0, :cond_0

    .line 924
    new-instance v0, Lcom/sleepycat/b/i/c/ax;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    sget-object v2, Lcom/sleepycat/b/i/c/at;->a:Lcom/sleepycat/b/i/c/at;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Premature EOF for request: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/b/i/c/au;->d:Lcom/sleepycat/b/i/c/ay;

    invoke-virtual {v7}, Lcom/sleepycat/b/i/c/ay;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v2, v6}, Lcom/sleepycat/b/i/c/ax;-><init>(Lcom/sleepycat/b/i/c/ap;Lcom/sleepycat/b/i/c/at;Ljava/lang/String;)V

    .line 3956
    iput-object v0, p0, Lcom/sleepycat/b/i/c/au;->f:Lcom/sleepycat/b/i/c/az;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lcom/sleepycat/b/i/c/ar; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/sleepycat/b/i/h/ae; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 951
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 952
    :goto_1
    return-void

    .line 929
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    .line 4775
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/ap;->b(Ljava/lang/String;)Lcom/sleepycat/b/i/c/as;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/az;

    .line 4956
    iput-object v0, p0, Lcom/sleepycat/b/i/c/au;->f:Lcom/sleepycat/b/i/c/az;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lcom/sleepycat/b/i/c/ar; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/sleepycat/b/i/h/ae; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    :goto_2
    :try_start_4
    iput-object v0, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 951
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 933
    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v4, v1

    .line 934
    :goto_3
    :try_start_5
    iput-object v0, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 951
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 935
    :catch_2
    move-exception v0

    move-object v5, v1

    move-object v4, v1

    .line 936
    :goto_4
    :try_start_6
    iput-object v0, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 951
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 937
    :catch_3
    move-exception v0

    move-object v5, v1

    move-object v4, v1

    .line 938
    :goto_5
    :try_start_7
    iput-object v0, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 951
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 939
    :catch_4
    move-exception v0

    move-object v5, v1

    move-object v4, v1

    .line 940
    :goto_6
    :try_start_8
    iput-object v0, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 951
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 941
    :catch_5
    move-exception v0

    move-object v5, v1

    .line 942
    :goto_7
    :try_start_9
    iput-object v0, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;

    .line 943
    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v4, v4, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v6, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v6, v6, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unexpected exception:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v4, v6, v7, v8}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Service: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/au;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " failed; attempting request: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sleepycat/b/i/c/au;->d:Lcom/sleepycat/b/i/c/ay;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/ay;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 951
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v4, v1

    :goto_8
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/i/b/ao;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    throw v6

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v5, v1

    move-object v4, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v6, v0

    move-object v4, v1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v6, v0

    goto :goto_8

    .line 941
    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v1, v4

    goto :goto_7

    .line 939
    :catch_8
    move-exception v0

    move-object v4, v1

    goto/16 :goto_6

    :catch_9
    move-exception v0

    goto/16 :goto_6

    .line 937
    :catch_a
    move-exception v0

    move-object v4, v1

    goto/16 :goto_5

    :catch_b
    move-exception v0

    goto/16 :goto_5

    .line 935
    :catch_c
    move-exception v0

    move-object v4, v1

    goto/16 :goto_4

    :catch_d
    move-exception v0

    goto/16 :goto_4

    .line 933
    :catch_e
    move-exception v0

    move-object v4, v1

    goto/16 :goto_3

    :catch_f
    move-exception v0

    goto/16 :goto_3

    .line 931
    :catch_10
    move-exception v0

    move-object v5, v1

    move-object v4, v1

    goto/16 :goto_2

    :catch_11
    move-exception v0

    move-object v4, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/az;
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/sleepycat/b/i/c/ar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;

    check-cast v0, Lcom/sleepycat/b/i/c/ar;

    .line 5064
    iget-object v0, v0, Lcom/sleepycat/b/i/c/ar;->a:Lcom/sleepycat/b/i/c/at;

    .line 974
    sget-object v1, Lcom/sleepycat/b/i/c/at;->c:Lcom/sleepycat/b/i/c/at;

    if-ne v0, v1, :cond_1

    .line 977
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    if-nez v0, :cond_0

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incurred "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because of group mismatch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->b:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->f:Lcom/sleepycat/b/i/c/az;

    return-object v0
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/au;->b()V

    .line 882
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->f:Lcom/sleepycat/b/i/c/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->f:Lcom/sleepycat/b/i/c/az;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->n:Lcom/sleepycat/b/i/c/av;

    if-ne v0, v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->f:Lcom/sleepycat/b/i/c/az;

    check-cast v0, Lcom/sleepycat/b/i/c/ax;

    .line 1608
    iget-object v1, v0, Lcom/sleepycat/b/i/c/ax;->b:Lcom/sleepycat/b/i/c/at;

    .line 885
    sget-object v2, Lcom/sleepycat/b/i/c/at;->b:Lcom/sleepycat/b/i/c/at;

    if-ne v1, v2, :cond_0

    .line 886
    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->d:Lcom/sleepycat/b/i/c/ay;

    .line 2438
    iget-object v0, v0, Lcom/sleepycat/b/i/c/as;->i:Ljava/lang/String;

    .line 886
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/ay;->a(Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/au;->b()V

    .line 888
    iget-object v0, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/ap;->q:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v1, v1, Lcom/sleepycat/b/i/c/ap;->s:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/ap;->r:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resend message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/c/au;->d:Lcom/sleepycat/b/i/c/ay;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/c/au;->d:Lcom/sleepycat/b/i/c/ay;

    .line 3438
    iget-object v5, v5, Lcom/sleepycat/b/i/c/as;->i:Ljava/lang/String;

    .line 888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " while protocol version is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/c/au;->c:Lcom/sleepycat/b/i/c/ap;

    invoke-static {v5}, Lcom/sleepycat/b/i/c/ap;->a(Lcom/sleepycat/b/i/c/ap;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because of the version mismatch, the returned response message is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/c/au;->f:Lcom/sleepycat/b/i/c/az;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 897
    :cond_0
    return-void
.end method
