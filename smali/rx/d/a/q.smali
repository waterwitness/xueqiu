.class final Lrx/d/a/q;
.super Ljava/lang/Object;
.source "OperatorMerge.java"

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
.field static final a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/d/a/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lrx/d/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/r",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 497
    const-class v0, Lrx/d/a/q;

    const-string v1, "c"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/q;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/d/a/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a/r",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrx/d/a/q;->c:J

    .line 492
    iput-object p1, p0, Lrx/d/a/q;->b:Lrx/d/a/r;

    .line 493
    return-void
.end method

.method static synthetic a(Lrx/d/a/q;)J
    .locals 2

    .prologue
    .line 487
    iget-wide v0, p0, Lrx/d/a/q;->c:J

    return-wide v0
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 501
    iget-wide v0, p0, Lrx/d/a/q;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 505
    iput-wide v2, p0, Lrx/d/a/q;->c:J

    goto :goto_0

    .line 507
    :cond_2
    sget-object v0, Lrx/d/a/q;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    .line 508
    iget-object v0, p0, Lrx/d/a/q;->b:Lrx/d/a/r;

    .line 1093
    invoke-virtual {v0}, Lrx/d/a/r;->g()Z

    move-result v0

    .line 508
    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 510
    iget-object v1, p0, Lrx/d/a/q;->b:Lrx/d/a/r;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v2, p0, Lrx/d/a/q;->b:Lrx/d/a/r;

    .line 2093
    iget v2, v2, Lrx/d/a/r;->d:I

    .line 511
    if-nez v2, :cond_3

    iget-object v2, p0, Lrx/d/a/q;->b:Lrx/d/a/r;

    .line 3093
    iget-object v2, v2, Lrx/d/a/r;->f:Lrx/d/c/f;

    .line 511
    if-eqz v2, :cond_3

    iget-object v2, p0, Lrx/d/a/q;->b:Lrx/d/a/r;

    .line 4093
    iget-object v2, v2, Lrx/d/a/r;->f:Lrx/d/c/f;

    .line 511
    invoke-virtual {v2}, Lrx/d/c/f;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 512
    const/4 v0, 0x1

    .line 514
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lrx/d/a/q;->b:Lrx/d/a/r;

    .line 5093
    invoke-virtual {v0}, Lrx/d/a/r;->h()V

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
