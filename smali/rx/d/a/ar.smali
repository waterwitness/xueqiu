.class final Lrx/d/a/ar;
.super Ljava/lang/Object;
.source "TakeLastQueueProducer.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/f;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/d/a/ar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Z

.field private final b:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private volatile e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lrx/d/a/ar;

    const-string v1, "e"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/ar;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/d/a/a;Ljava/util/Deque;Lrx/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a/a",
            "<TT;>;",
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/ar;->a:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/d/a/ar;->e:J

    .line 33
    iput-object p1, p0, Lrx/d/a/ar;->b:Lrx/d/a/a;

    .line 34
    iput-object p2, p0, Lrx/d/a/ar;->c:Ljava/util/Deque;

    .line 35
    iput-object p3, p0, Lrx/d/a/ar;->d:Lrx/i;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 51
    iget-wide v0, p0, Lrx/d/a/ar;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 56
    sget-object v0, Lrx/d/a/ar;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 60
    :goto_1
    iget-boolean v2, p0, Lrx/d/a/ar;->a:Z

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0, v0, v1}, Lrx/d/a/ar;->b(J)V

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lrx/d/a/ar;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    goto :goto_1
.end method

.method final b(J)V
    .locals 13

    .prologue
    const-wide v10, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    .line 68
    iget-wide v0, p0, Lrx/d/a/ar;->e:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    .line 70
    cmp-long v0, p1, v8

    if-nez v0, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p0, Lrx/d/a/ar;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lrx/d/a/ar;->d:Lrx/i;

    invoke-static {v2, v1}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_1
    iget-object v1, p0, Lrx/d/a/ar;->d:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v0, p0, Lrx/d/a/ar;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lrx/d/a/ar;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/d/a/ar;->c:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->clear()V

    throw v0

    .line 85
    :cond_2
    cmp-long v0, p1, v8

    if-nez v0, :cond_0

    .line 91
    :cond_3
    iget-wide v0, p0, Lrx/d/a/ar;->e:J

    .line 92
    const/4 v2, 0x0

    move v6, v2

    .line 94
    :goto_2
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    cmp-long v2, v0, v8

    if-ltz v2, :cond_4

    iget-object v2, p0, Lrx/d/a/ar;->c:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 95
    iget-object v3, p0, Lrx/d/a/ar;->d:Lrx/i;

    .line 1076
    iget-object v3, v3, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v3}, Lrx/d/c/j;->c()Z

    move-result v3

    .line 95
    if-nez v3, :cond_0

    .line 98
    iget-object v3, p0, Lrx/d/a/ar;->d:Lrx/i;

    invoke-static {v3, v2}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_2

    .line 106
    :cond_4
    iget-wide v2, p0, Lrx/d/a/ar;->e:J

    .line 107
    int-to-long v0, v6

    sub-long v4, v2, v0

    .line 108
    cmp-long v0, v2, v10

    if-eqz v0, :cond_3

    .line 113
    sget-object v0, Lrx/d/a/ar;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    cmp-long v0, v4, v8

    if-nez v0, :cond_3

    goto :goto_1
.end method
