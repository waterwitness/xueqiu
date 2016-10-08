.class public Lcom/sleepycat/b/i/h/x;
.super Lcom/sleepycat/b/p/aj;
.source "ServiceDispatcher.java"


# static fields
.field static final synthetic c:Z

.field private static final k:[B

.field private static final m:I


# instance fields
.field public final a:Ljava/net/InetSocketAddress;

.field public b:Z

.field private final d:Ljava/nio/channels/Selector;

.field private final e:Ljava/nio/channels/ServerSocketChannel;

.field private f:I

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/i/h/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/ExecutorService;

.field private final i:Ljava/util/logging/Logger;

.field private final j:Ljava/util/logging/Formatter;

.field private final l:Lcom/sleepycat/b/i/c/aj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sleepycat/b/i/h/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/h/x;->c:Z

    .line 124
    const-string v0, "Service:"

    invoke-static {v0}, Lcom/sleepycat/d/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 131
    sput-object v0, Lcom/sleepycat/b/i/h/x;->k:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sleepycat/b/i/h/x;->m:I

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lcom/sleepycat/b/i/c/aj;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceDispatcher-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/h/x;->b:Z

    .line 72
    iput v3, p0, Lcom/sleepycat/b/i/h/x;->f:I

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    .line 82
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/h/x;->h:Ljava/util/concurrent/ExecutorService;

    .line 151
    iput-object p2, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    .line 152
    iput-object p1, p0, Lcom/sleepycat/b/i/h/x;->a:Ljava/net/InetSocketAddress;

    .line 153
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/h/x;->e:Ljava/nio/channels/ServerSocketChannel;

    .line 154
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->e:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0, v3}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 155
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/h/x;->d:Ljava/nio/channels/Selector;

    .line 156
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->e:Ljava/nio/channels/ServerSocketChannel;

    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->d:Ljava/nio/channels/Selector;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 157
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->e:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 160
    invoke-virtual {v0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 161
    if-nez p2, :cond_0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    .line 166
    :goto_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    .line 168
    :goto_1
    new-instance v1, Lcom/sleepycat/b/i/h/w;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/h/w;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    .line 169
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    goto :goto_0

    .line 2244
    :cond_1
    iget-object v0, p2, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    goto :goto_1
.end method

.method public static a(Ljava/net/Socket;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 282
    sget-boolean v0, Lcom/sleepycat/b/i/h/x;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 283
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/b/i/h/x;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 286
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 287
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 289
    if-gez v0, :cond_1

    .line 290
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No service response byte: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_1
    invoke-static {v0}, Lcom/sleepycat/b/i/h/ac;->a(I)Lcom/sleepycat/b/i/h/ac;

    move-result-object v2

    .line 293
    if-nez v2, :cond_2

    .line 294
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected read response byte: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_2
    sget-object v0, Lcom/sleepycat/b/i/h/ac;->a:Lcom/sleepycat/b/i/h/ac;

    if-eq v2, v0, :cond_3

    .line 297
    new-instance v0, Lcom/sleepycat/b/i/h/ae;

    invoke-direct {v0, p1, v2}, Lcom/sleepycat/b/i/h/ae;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/h/ac;)V

    throw v0

    .line 299
    :cond_3
    return-object v1
.end method

.method private a(Ljava/nio/channels/SelectionKey;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 540
    .line 542
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 543
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 545
    if-gez v3, :cond_0

    .line 547
    iget v0, p0, Lcom/sleepycat/b/i/h/x;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/h/x;->f:I

    .line 548
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Premature EOF on channel: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " read() returned: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v5, v6, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    move-object v0, v2

    .line 600
    :goto_0
    return-object v0

    .line 555
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_4

    .line 556
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 557
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    sget v4, Lcom/sleepycat/b/i/h/x;->m:I

    if-ne v3, v4, :cond_3

    .line 558
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/d/b;->c([B)Ljava/lang/String;

    move-result-object v3

    .line 560
    const-string v4, "Service:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 561
    iget v0, p0, Lcom/sleepycat/b/i/h/x;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/h/x;->f:I

    .line 562
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Malformed service request: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v5, v6, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 565
    sget-object v0, Lcom/sleepycat/b/i/h/ac;->c:Lcom/sleepycat/b/i/h/ac;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/ac;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 567
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    move-object v0, v2

    .line 568
    goto :goto_0

    .line 571
    :cond_1
    sget v3, Lcom/sleepycat/b/i/h/x;->m:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 572
    if-gtz v3, :cond_2

    .line 573
    iget v0, p0, Lcom/sleepycat/b/i/h/x;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/h/x;->f:I

    .line 574
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bad service service name length: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v5, v6, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 577
    sget-object v0, Lcom/sleepycat/b/i/h/ac;->c:Lcom/sleepycat/b/i/h/ac;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/ac;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 579
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    move-object v0, v2

    .line 580
    goto/16 :goto_0

    .line 582
    :cond_2
    sget v4, Lcom/sleepycat/b/i/h/x;->m:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 584
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 585
    invoke-virtual {p1, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/SelectionKey;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 589
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/d/b;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 591
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    .line 594
    goto/16 :goto_0

    .line 595
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 596
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception during read: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 599
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/Channel;)V

    move-object v0, v2

    .line 600
    goto/16 :goto_0

    .line 595
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private a(Ljava/nio/channels/Channel;)V
    .locals 7

    .prologue
    .line 610
    if-eqz p1, :cond_0

    .line 612
    :try_start_0
    invoke-interface {p1}, Ljava/nio/channels/Channel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v3, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception during cleanup: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/nio/channels/SocketChannel;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 318
    invoke-static {p1}, Lcom/sleepycat/b/i/h/x;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 320
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 321
    invoke-virtual {p0, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 323
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 324
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 325
    invoke-virtual {p0, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gez v1, :cond_1

    .line 326
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EOF in response to service request:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 331
    if-gez v1, :cond_3

    .line 332
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No service response byte: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 335
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/sleepycat/b/i/h/ac;->a(I)Lcom/sleepycat/b/i/h/ac;

    move-result-object v0

    .line 336
    if-nez v0, :cond_4

    .line 337
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected read response byte: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_4
    sget-object v1, Lcom/sleepycat/b/i/h/ac;->a:Lcom/sleepycat/b/i/h/ac;

    if-eq v0, v1, :cond_5

    .line 340
    new-instance v1, Lcom/sleepycat/b/i/h/ae;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/b/i/h/ae;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/h/ac;)V

    throw v1

    .line 342
    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/sleepycat/b/i/h/x;)Lcom/sleepycat/b/i/c/aj;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 254
    invoke-static {p0}, Lcom/sleepycat/d/b;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 255
    sget-object v1, Lcom/sleepycat/b/i/h/x;->k:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, v0

    add-int/2addr v1, v2

    .line 257
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 258
    sget-object v2, Lcom/sleepycat/b/i/h/x;->k:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v0

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/sleepycat/b/i/h/x;)Ljava/util/logging/Formatter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    return-object v0
.end method

.method static synthetic d(Lcom/sleepycat/b/i/h/x;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/ad;

    .line 363
    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 367
    :cond_0
    instance-of v2, v0, Lcom/sleepycat/b/i/h/ab;

    if-nez v2, :cond_1

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a queuing service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 374
    :cond_1
    :try_start_0
    check-cast v0, Lcom/sleepycat/b/i/h/ab;

    .line 2796
    iget-object v0, v0, Lcom/sleepycat/b/i/h/ab;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 375
    :try_start_1
    sget-boolean v2, Lcom/sleepycat/b/i/h/x;->c:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :catch_0
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 387
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to configure channel for \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 392
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 393
    :catch_1
    move-exception v0

    .line 394
    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v4, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Cleanup failed for service: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :cond_2
    :try_start_3
    sget-object v2, Lcom/sleepycat/b/i/h/q;->a:Ljava/nio/channels/SocketChannel;

    if-ne v0, v2, :cond_3

    move-object v0, v1

    .line 385
    :goto_2
    return-object v0

    .line 382
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 383
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    .line 384
    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 386
    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_1
.end method

.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/i/h/ad;)V
    .locals 6

    .prologue
    .line 440
    if-nez p1, :cond_0

    .line 441
    const-string v0, "The service argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/sleepycat/b/i/h/ad;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sleepycat/b/i/h/ad;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/sleepycat/b/i/h/ad;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " registered."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    iget-object v1, p1, Lcom/sleepycat/b/i/h/ad;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 482
    if-nez p1, :cond_0

    .line 483
    const-string v0, "The serviceName argument must not be null."

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/ad;

    .line 488
    if-nez v0, :cond_1

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not registered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 492
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/ad;->a()V

    .line 493
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shut down."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
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
    .line 427
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 431
    :cond_0
    if-nez p2, :cond_1

    .line 432
    const-string v0, "The serviceQueue argument must not be null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    new-instance v1, Lcom/sleepycat/b/i/h/ab;

    invoke-direct {v1, p0, p1, p2}, Lcom/sleepycat/b/i/h/ab;-><init>(Lcom/sleepycat/b/i/h/x;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/x;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ServiceDispatcher shutdown starting. HostPort="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Registered services: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/x;->a(Ljava/util/logging/Logger;)V

    .line 210
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->e:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 218
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ServiceDispatcher shutdown completed. HostPort="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v3, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring I/O error during close: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Started ServiceDispatcher. HostPort="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 637
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    .line 3119
    iget-object v1, p0, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 638
    if-eqz v1, :cond_1

    .line 678
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->e:Ljava/nio/channels/ServerSocketChannel;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/Channel;)V

    .line 679
    return-void

    .line 641
    :cond_1
    if-eqz v0, :cond_0

    .line 651
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    .line 652
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 653
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected ops bit set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->e:Ljava/nio/channels/ServerSocketChannel;

    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/Channel;)V

    .line 679
    throw v0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v3, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Server socket exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 649
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3505
    :sswitch_0
    const/4 v1, 0x0

    .line 3507
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->e:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 3508
    iget-boolean v0, p0, Lcom/sleepycat/b/i/h/x;->b:Z

    if-nez v0, :cond_3

    .line 3509
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/Channel;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3517
    :catch_1
    move-exception v0

    .line 3518
    :try_start_4
    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v6, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Server accept exception: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v6, v7, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3521
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/Channel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 3512
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 3513
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->d:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    sget v5, Lcom/sleepycat/b/i/h/x;->m:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1, v0, v2, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 660
    :sswitch_1
    :try_start_6
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/SelectionKey;)Ljava/lang/String;

    move-result-object v5

    .line 661
    if-eqz v5, :cond_2

    .line 664
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 665
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 3690
    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/i/h/ad;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3692
    if-nez v1, :cond_4

    .line 3693
    :try_start_7
    iget v1, p0, Lcom/sleepycat/b/i/h/x;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/b/i/h/x;->f:I

    .line 3694
    sget-object v1, Lcom/sleepycat/b/i/h/ac;->d:Lcom/sleepycat/b/i/h/ac;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/h/ac;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 3695
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/Channel;)V

    .line 3700
    iget-object v1, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v6, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Request for unknown Service: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Registered services: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sleepycat/b/i/h/x;->g:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v6, v7, v8}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 3719
    :catch_2
    move-exception v1

    .line 3720
    :try_start_8
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/Channel;)V

    .line 3721
    iget-object v0, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v6, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IO error writing to channel for service: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v6, v7, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 3706
    :cond_4
    :try_start_9
    invoke-virtual {v1}, Lcom/sleepycat/b/i/h/ad;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sleepycat/b/i/h/ac;->b:Lcom/sleepycat/b/i/h/ac;

    .line 3707
    :goto_2
    iget-object v6, p0, Lcom/sleepycat/b/i/h/x;->i:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/b/i/h/x;->l:Lcom/sleepycat/b/i/c/aj;

    iget-object v8, p0, Lcom/sleepycat/b/i/h/x;->j:Ljava/util/logging/Formatter;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Service response: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/sleepycat/b/i/h/ad;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3711
    invoke-virtual {v2}, Lcom/sleepycat/b/i/h/ac;->a()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v6

    if-nez v6, :cond_6

    .line 3712
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write byte. Send buffer size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v1

    throw v1

    .line 3706
    :cond_5
    sget-object v2, Lcom/sleepycat/b/i/h/ac;->a:Lcom/sleepycat/b/i/h/ac;

    goto :goto_2

    .line 3716
    :cond_6
    sget-object v6, Lcom/sleepycat/b/i/h/ac;->a:Lcom/sleepycat/b/i/h/ac;

    if-ne v2, v6, :cond_2

    .line 3717
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/h/ad;->d(Ljava/nio/channels/SocketChannel;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 675
    :cond_7
    :try_start_a
    invoke-interface {v3}, Ljava/util/Set;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 653
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
