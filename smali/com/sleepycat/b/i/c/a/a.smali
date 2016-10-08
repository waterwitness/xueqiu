.class public Lcom/sleepycat/b/i/c/a/a;
.super Lcom/sleepycat/b/p/aj;
.source "FeederManager.java"


# static fields
.field private static l:J


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/b/i/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/b/i/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/i/c/a/j;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Timer;

.field final e:Lcom/sleepycat/b/i/c/b/x;

.field public f:I

.field g:J

.field final h:Lcom/sleepycat/b/i/h/x;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final j:Ljava/util/logging/Logger;

.field private final k:Ljava/util/concurrent/BlockingQueue;
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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/sleepycat/b/i/c/a/a;->l:J

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feeder Manager node: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1087
    iget-object v1, p3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->k:Ljava/util/concurrent/BlockingQueue;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->a:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->b:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->c:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->d:Ljava/util/Timer;

    .line 76
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/a/a;->g:J

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    iput-object p1, p0, Lcom/sleepycat/b/i/c/a/a;->h:Lcom/sleepycat/b/i/h/x;

    .line 114
    new-instance v0, Lcom/sleepycat/b/i/h/aa;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "LogFileFeeder"

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/a;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/sleepycat/b/i/h/aa;-><init>(Lcom/sleepycat/b/i/h/x;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Thread;)V

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/ad;)V

    .line 117
    iput-object p3, p0, Lcom/sleepycat/b/i/c/a/a;->e:Lcom/sleepycat/b/i/c/b/x;

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    .line 119
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    const-string v2, "Shutting down log file feeder manager"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/a/a;->a(Ljava/util/logging/Logger;)V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/a/c;

    .line 197
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/a/c;->b()V

    goto :goto_1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/a/b;

    .line 205
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/a/b;->a()Lcom/sleepycat/b/o/b;

    goto :goto_2

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->h:Lcom/sleepycat/b/i/h/x;

    const-string v1, "LogFileFeeder"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    const-string v2, "Shut down log file feeder manager completed"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final c()I
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 218
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->k:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/b/i/h/q;->a:Ljava/nio/channels/SocketChannel;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 163
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->k:Ljava/util/concurrent/BlockingQueue;

    sget-wide v2, Lcom/sleepycat/b/i/c/a/a;->l:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 165
    sget-object v1, Lcom/sleepycat/b/i/h/q;->a:Ljava/nio/channels/SocketChannel;

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    const-string v2, "Log file Feeder manager soft shutdown."

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/a;->b()V

    .line 182
    return-void

    .line 170
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sleepycat/b/i/c/a/c;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/i/c/a/c;-><init>(Lcom/sleepycat/b/i/c/a/a;Ljava/nio/channels/SocketChannel;)V

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/a/c;->start()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    const-string v2, "Log file feeder manager interrupted"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 181
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/a;->b()V

    throw v0

    .line 175
    :catch_1
    move-exception v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/a;->j:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unanticipated exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/a/a;->D:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->y:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
