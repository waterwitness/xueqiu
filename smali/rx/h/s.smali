.class final Lrx/h/s;
.super Lrx/h;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/j;


# instance fields
.field final a:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lrx/h/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lrx/h/r;

.field private final c:Lrx/j/a;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Lrx/h/r;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lrx/h/s;->b:Lrx/h/r;

    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 53
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lrx/h/s;->a:Ljava/util/PriorityQueue;

    .line 54
    new-instance v0, Lrx/j/a;

    invoke-direct {v0}, Lrx/j/a;-><init>()V

    iput-object v0, p0, Lrx/h/s;->c:Lrx/j/a;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/h/s;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lrx/h/r;B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lrx/h/s;-><init>(Lrx/h/r;)V

    return-void
.end method

.method private a(Lrx/c/a;J)Lrx/j;
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lrx/h/s;->c:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lrx/h/t;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lrx/h/r;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    iget-object v3, p0, Lrx/h/s;->b:Lrx/h/r;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/h/t;-><init>(Lrx/c/a;Ljava/lang/Long;IB)V

    .line 74
    iget-object v1, p0, Lrx/h/s;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lrx/h/s;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_3

    .line 78
    :cond_1
    iget-object v0, p0, Lrx/h/s;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/t;

    .line 80
    if-eqz v0, :cond_2

    .line 81
    iget-object v0, v0, Lrx/h/t;->a:Lrx/c/a;

    invoke-interface {v0}, Lrx/c/a;->a()V

    .line 83
    :cond_2
    iget-object v0, p0, Lrx/h/s;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    .line 84
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_3
    new-instance v1, Lrx/h/s$1;

    invoke-direct {v1, p0, v0}, Lrx/h/s$1;-><init>(Lrx/h/s;Lrx/h/t;)V

    invoke-static {v1}, Lrx/j/g;->a(Lrx/c/a;)Lrx/j;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lrx/c/a;)Lrx/j;
    .locals 2

    .prologue
    .line 59
    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    invoke-direct {p0, p1, v0, v1}, Lrx/h/s;->a(Lrx/c/a;J)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 4

    .prologue
    .line 2136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 66
    new-instance v2, Lrx/h/q;

    invoke-direct {v2, p1, p0, v0, v1}, Lrx/h/q;-><init>(Lrx/c/a;Lrx/h;J)V

    invoke-direct {p0, v2, v0, v1}, Lrx/h/s;->a(Lrx/c/a;J)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lrx/h/s;->c:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->b()V

    .line 104
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lrx/h/s;->c:Lrx/j/a;

    invoke-virtual {v0}, Lrx/j/a;->c()Z

    move-result v0

    return v0
.end method
