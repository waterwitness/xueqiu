.class final Lrx/h/k;
.super Lrx/h;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lrx/j/b;

.field final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/h/j;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 65
    iput-object p1, p0, Lrx/h/k;->a:Ljava/util/concurrent/Executor;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/h/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/h/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/h/k;->b:Lrx/j/b;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Lrx/c/a;)Lrx/j;
    .locals 3

    .prologue
    .line 73
    .line 1144
    iget-object v0, p0, Lrx/h/k;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    new-instance v0, Lrx/h/j;

    iget-object v1, p0, Lrx/h/k;->b:Lrx/j/b;

    invoke-direct {v0, p1, v1}, Lrx/h/j;-><init>(Lrx/c/a;Lrx/j/b;)V

    .line 77
    iget-object v1, p0, Lrx/h/k;->b:Lrx/j/b;

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/j;)V

    .line 78
    iget-object v1, p0, Lrx/h/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lrx/h/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lrx/h/k;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    .line 84
    iget-object v2, p0, Lrx/h/k;->b:Lrx/j/b;

    invoke-virtual {v2, v0}, Lrx/j/b;->b(Lrx/j;)V

    .line 85
    iget-object v0, p0, Lrx/h/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 87
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->b()Lrx/g/a;

    .line 89
    throw v1
.end method

.method public final a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 4

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lrx/h/k;->a(Lrx/c/a;)Lrx/j;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 2144
    :cond_0
    iget-object v0, p0, Lrx/h/k;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lrx/h/k;->a:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lrx/h/k;->a:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 118
    :goto_1
    new-instance v1, Lrx/j/c;

    invoke-direct {v1}, Lrx/j/c;-><init>()V

    .line 122
    :try_start_0
    new-instance v2, Lrx/h/k$1;

    invoke-direct {v2, p0, v1, p1}, Lrx/h/k$1;-><init>(Lrx/h/k;Lrx/j/c;Lrx/c/a;)V

    invoke-interface {v0, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lrx/j/g;->a(Ljava/util/concurrent/Future;)Lrx/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx/j/c;->a(Lrx/j;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 139
    goto :goto_0

    .line 115
    :cond_2
    invoke-static {}, Lrx/h/l;->a()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v0

    .line 135
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/g/d;->b()Lrx/g/a;

    .line 136
    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lrx/h/k;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->b()V

    .line 150
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lrx/h/k;->b:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 99
    :cond_0
    iget-object v0, p0, Lrx/h/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/j;

    invoke-virtual {v0}, Lrx/h/j;->run()V

    .line 100
    iget-object v0, p0, Lrx/h/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 101
    return-void
.end method
