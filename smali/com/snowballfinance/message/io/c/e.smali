.class public Lcom/snowballfinance/message/io/c/e;
.super Ljava/lang/Object;
.source "FragmentConnector.java"


# static fields
.field private static final c:Lcom/snowballfinance/message/io/logger/Logger;


# instance fields
.field a:Lcom/snowballfinance/message/io/c/d;

.field final b:Lrx/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/c",
            "<",
            "Lcom/snowballfinance/message/io/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/net/InetSocketAddress;

.field private f:Lcom/snowballfinance/message/io/c/i;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/snowballfinance/message/io/c/e;

    invoke-static {v0}, Lcom/snowballfinance/message/io/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/snowballfinance/message/io/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/InetSocketAddress;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    invoke-static {}, Lrx/i/c;->k()Lrx/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/snowballfinance/message/io/c/e;->b:Lrx/i/c;

    .line 41
    iput-object p1, p0, Lcom/snowballfinance/message/io/c/e;->d:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/snowballfinance/message/io/c/e;->e:Ljava/net/InetSocketAddress;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/snowballfinance/message/io/c/e;)Lrx/i/c;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->b:Lrx/i/c;

    return-object v0
.end method

.method static synthetic b(Lcom/snowballfinance/message/io/c/e;)Lcom/snowballfinance/message/io/c/d;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    return-object v0
.end method

.method static synthetic c(Lcom/snowballfinance/message/io/c/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic d()Lcom/snowballfinance/message/io/logger/Logger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    return-object v0
.end method

.method private declared-synchronized e()Lcom/snowballfinance/message/io/c/e;
    .locals 5

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->e:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 49
    new-instance v1, Lcom/snowballfinance/message/io/c/d;

    invoke-direct {v1, v0}, Lcom/snowballfinance/message/io/c/d;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object v1, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 50
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    const-string v2, "CONTEXT"

    new-instance v3, Lcom/snowballfinance/message/io/c/c;

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    invoke-direct {v3, v4}, Lcom/snowballfinance/message/io/c/c;-><init>(Lcom/snowballfinance/message/io/c/d;)V

    .line 1033
    iget-object v1, v1, Lcom/snowballfinance/message/io/a;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    iget-object v2, p0, Lcom/snowballfinance/message/io/c/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/snowballfinance/message/io/c/d;->b(Ljava/lang/String;)Lcom/snowballfinance/message/io/c/d;

    .line 52
    new-instance v1, Lcom/snowballfinance/message/io/c/i;

    invoke-direct {v1, v0}, Lcom/snowballfinance/message/io/c/i;-><init>(Ljava/nio/channels/SocketChannel;)V

    iput-object v1, p0, Lcom/snowballfinance/message/io/c/e;->f:Lcom/snowballfinance/message/io/c/i;

    .line 53
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->f:Lcom/snowballfinance/message/io/c/i;

    .line 1112
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/i;->b:Lrx/i/c;

    invoke-virtual {v0}, Lrx/i/c;->c()Lrx/a;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/snowballfinance/message/io/c/e$1;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/e$1;-><init>(Lcom/snowballfinance/message/io/c/e;)V

    new-instance v2, Lcom/snowballfinance/message/io/c/e$2;

    invoke-direct {v2, p0}, Lcom/snowballfinance/message/io/c/e$2;-><init>(Lcom/snowballfinance/message/io/c/e;)V

    invoke-virtual {v0, v1, v2}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    .line 65
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->f:Lcom/snowballfinance/message/io/c/i;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/i;->start()V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-object p0

    .line 67
    :cond_0
    :try_start_1
    sget-object v0, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "connector already connect to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/e;->e:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Lrx/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :try_start_1
    invoke-direct {p0}, Lcom/snowballfinance/message/io/c/e;->e()Lcom/snowballfinance/message/io/c/e;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    sget-object v0, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "channel %s already marked as shutdown."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/d;->d()V

    .line 90
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->f:Lcom/snowballfinance/message/io/c/i;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/i;->interrupt()V

    .line 91
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "channel already marked as shutdown."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Throwable;)Lrx/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 126
    :goto_0
    monitor-exit p0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lrx/a;->b(Ljava/lang/Throwable;)Lrx/a;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/d;->b(I)Lcom/snowballfinance/message/io/b;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/c/d;->a(Lcom/snowballfinance/message/io/b;)Lrx/a;

    .line 96
    sget-object v1, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v1}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    sget-object v1, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v2, "sent [SYN:%s] to %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 2055
    iget-wide v6, v0, Lcom/snowballfinance/message/io/b;->a:J

    .line 97
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/d;->a()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/snowballfinance/message/io/c/e$4;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/e$4;-><init>(Lcom/snowballfinance/message/io/c/e;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/c/f;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/snowballfinance/message/io/c/e$3;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/e$3;-><init>(Lcom/snowballfinance/message/io/c/e;)V

    .line 109
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 120
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 2073
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 120
    new-instance v1, Lcom/snowballfinance/message/io/c/e$5;

    invoke-direct {v1, p0}, Lcom/snowballfinance/message/io/c/e$5;-><init>(Lcom/snowballfinance/message/io/c/e;)V

    invoke-virtual {v0, v1}, Lrx/i/a;->c(Lrx/c/b;)Lrx/j;

    .line 126
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    .line 3073
    iget-object v0, v0, Lcom/snowballfinance/message/io/c/d;->h:Lrx/i/a;

    .line 126
    invoke-virtual {v0}, Lrx/i/a;->c()Lrx/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
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

.method public final declared-synchronized c()V
    .locals 5

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->f:Lcom/snowballfinance/message/io/c/i;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->f:Lcom/snowballfinance/message/io/c/i;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/i;->interrupt()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    sget-object v0, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/logger/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "connector[%s] is shutting down."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/e;->e:Ljava/net/InetSocketAddress;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->debug(Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->a:Lcom/snowballfinance/message/io/c/d;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/d;->d()V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/snowballfinance/message/io/c/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 144
    :cond_2
    :try_start_1
    sget-object v0, Lcom/snowballfinance/message/io/c/e;->c:Lcom/snowballfinance/message/io/logger/Logger;

    const-string v1, "connector[%s] is not available or has been shutdown."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snowballfinance/message/io/c/e;->e:Ljava/net/InetSocketAddress;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snowballfinance/message/io/c/e;->e:Ljava/net/InetSocketAddress;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
