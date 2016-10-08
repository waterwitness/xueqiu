.class final Lrx/d/a/w$2;
.super Lrx/i;
.source "OperatorOnBackpressureBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/w;->a(Lrx/i;)Lrx/i;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic f:Lrx/i;

.field final synthetic g:Lrx/d/a/w;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/d/a/w;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Lrx/i;)V
    .locals 2

    .prologue
    .line 73
    iput-object p1, p0, Lrx/d/a/w$2;->g:Lrx/d/a/w;

    iput-object p2, p0, Lrx/d/a/w$2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p3, p0, Lrx/d/a/w$2;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lrx/d/a/w$2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lrx/d/a/w$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lrx/d/a/w$2;->f:Lrx/i;

    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrx/d/a/w$2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 84
    iget-object v0, p0, Lrx/d/a/w$2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lrx/d/a/w$2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lrx/d/a/w$2;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/d/a/w$2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lrx/d/a/w$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/d/a/w$2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, p0, Lrx/d/a/w$2;->f:Lrx/i;

    invoke-static {v0, v1, v2, v3, v4}, Lrx/d/a/w;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/i;)V

    .line 88
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 100
    .line 1108
    iget-object v2, p0, Lrx/d/a/w$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_0

    .line 100
    :goto_0
    if-nez v0, :cond_3

    .line 105
    :goto_1
    return-void

    .line 1114
    :cond_0
    iget-object v2, p0, Lrx/d/a/w$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 1115
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 1116
    iget-object v2, p0, Lrx/d/a/w$2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2066
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 1118
    iget-object v0, p0, Lrx/d/a/w$2;->f:Lrx/i;

    new-instance v2, Lrx/b/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Overflowed buffer of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lrx/d/a/w$2;->g:Lrx/d/a/w;

    .line 3029
    iget-object v4, v4, Lrx/d/a/w;->a:Ljava/lang/Long;

    .line 1120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/b/g;-><init>(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0, v2}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 1121
    iget-object v0, p0, Lrx/d/a/w$2;->g:Lrx/d/a/w;

    .line 4029
    iget-object v0, v0, Lrx/d/a/w;->b:Lrx/c/a;

    .line 1121
    if-eqz v0, :cond_1

    .line 1122
    iget-object v0, p0, Lrx/d/a/w$2;->g:Lrx/d/a/w;

    .line 5029
    iget-object v0, v0, Lrx/d/a/w;->b:Lrx/c/a;

    .line 1122
    invoke-interface {v0}, Lrx/c/a;->a()V

    :cond_1
    move v0, v1

    .line 1125
    goto :goto_0

    .line 1128
    :cond_2
    iget-object v4, p0, Lrx/d/a/w$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-virtual {v4, v2, v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 103
    :cond_3
    iget-object v0, p0, Lrx/d/a/w$2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lrx/d/a/w$2;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/d/a/w$2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lrx/d/a/w$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/d/a/w$2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, p0, Lrx/d/a/w$2;->f:Lrx/i;

    invoke-static {v0, v1, v2, v3, v4}, Lrx/d/a/w;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/i;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lrx/d/a/w$2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lrx/d/a/w$2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lrx/d/a/w$2;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/d/a/w$2;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lrx/d/a/w$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/d/a/w$2;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, p0, Lrx/d/a/w$2;->f:Lrx/i;

    invoke-static {v0, v1, v2, v3, v4}, Lrx/d/a/w;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/i;)V

    .line 96
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 79
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/d/a/w$2;->a(J)V

    .line 80
    return-void
.end method
