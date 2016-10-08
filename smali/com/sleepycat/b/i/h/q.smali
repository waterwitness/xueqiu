.class public Lcom/sleepycat/b/i/h/q;
.super Ljava/lang/Object;
.source "RepUtils.java"


# static fields
.field public static final a:Ljava/nio/channels/SocketChannel;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/i/h/r",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sleepycat/b/i/h/q;->b:Ljava/util/Map;

    .line 46
    const-string v0, "TimeConsistencyPolicy"

    new-instance v1, Lcom/sleepycat/b/i/h/v;

    invoke-direct {v1, v2}, Lcom/sleepycat/b/i/h/v;-><init>(B)V

    invoke-static {v0, v1}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/String;Lcom/sleepycat/b/i/h/r;)V

    .line 48
    const-string v0, "NoConsistencyRequiredPolicy"

    new-instance v1, Lcom/sleepycat/b/i/h/u;

    invoke-direct {v1, v2}, Lcom/sleepycat/b/i/h/u;-><init>(B)V

    invoke-static {v0, v1}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/String;Lcom/sleepycat/b/i/h/r;)V

    .line 63
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/i/h/q;->a:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 65
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/sleepycat/b/bc;
    .locals 6

    .prologue
    .line 196
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 199
    sget-object v0, Lcom/sleepycat/b/i/h/q;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/r;

    .line 207
    invoke-interface {v0, p0}, Lcom/sleepycat/b/i/h/r;->a(Ljava/lang/String;)Lcom/sleepycat/b/bc;

    move-result-object v0

    return-object v0

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid consistency policy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/sleepycat/b/p/ai;)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 438
    sget-object v2, Lcom/sleepycat/b/i/h/l;->f:Lcom/sleepycat/b/p/ag;

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/p/ai;->c(Lcom/sleepycat/b/p/ag;)J

    move-result-wide v2

    .line 439
    sget-object v4, Lcom/sleepycat/b/i/h/l;->b:Lcom/sleepycat/b/p/ag;

    invoke-virtual {p0, v4}, Lcom/sleepycat/b/p/ai;->c(Lcom/sleepycat/b/p/ag;)J

    move-result-wide v4

    .line 441
    cmp-long v6, v2, v0

    if-gtz v6, :cond_0

    .line 444
    :goto_0
    const-string v2, " write time: %, dms Avg write time: %,dus"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 441
    :cond_0
    div-long v0, v4, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    .line 430
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 434
    return-object p0
.end method

.method public static a(Ljava/net/InetSocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 4

    .prologue
    const/16 v3, 0x1388

    const/4 v2, 0x1

    .line 403
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 406
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    .line 410
    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 411
    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 414
    invoke-virtual {v1, p0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 415
    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/i/h/o;)V
    .locals 2

    .prologue
    .line 358
    if-nez p0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/o;->a()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 366
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 371
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/sleepycat/b/i/h/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/i/h/r",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/sleepycat/b/i/h/q;->b:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
