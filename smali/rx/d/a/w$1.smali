.class final Lrx/d/a/w$1;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a/w;->a(Lrx/i;)Lrx/i;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic e:Lrx/i;

.field final synthetic f:Lrx/d/a/w;


# direct methods
.method constructor <init>(Lrx/d/a/w;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/ConcurrentLinkedQueue;Lrx/i;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lrx/d/a/w$1;->f:Lrx/d/a/w;

    iput-object p2, p0, Lrx/d/a/w$1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lrx/d/a/w$1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lrx/d/a/w$1;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lrx/d/a/w$1;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p6, p0, Lrx/d/a/w$1;->e:Lrx/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lrx/d/a/w$1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lrx/d/a/w$1;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lrx/d/a/w$1;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lrx/d/a/w$1;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v3, p0, Lrx/d/a/w$1;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v4, p0, Lrx/d/a/w$1;->e:Lrx/i;

    invoke-static {v0, v1, v2, v3, v4}, Lrx/d/a/w;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/i;)V

    .line 68
    :cond_0
    return-void
.end method
