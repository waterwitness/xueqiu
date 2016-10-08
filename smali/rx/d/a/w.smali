.class public final Lrx/d/a/w;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Long;

.field final b:Lrx/c/a;

.field private final c:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/w;->c:Lrx/d/a/a;

    .line 37
    iput-object v1, p0, Lrx/d/a/w;->a:Ljava/lang/Long;

    .line 38
    iput-object v1, p0, Lrx/d/a/w;->b:Lrx/c/a;

    .line 39
    return-void
.end method

.method private a(Lrx/i;)Lrx/i;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)",
            "Lrx/i",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 57
    iget-object v0, p0, Lrx/d/a/w;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 58
    :goto_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 59
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 61
    new-instance v0, Lrx/d/a/w$1;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lrx/d/a/w$1;-><init>(Lrx/d/a/w;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/ConcurrentLinkedQueue;Lrx/i;)V

    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/f;)V

    .line 73
    new-instance v6, Lrx/d/a/w$2;

    move-object v7, p0

    move-object v8, v5

    move-object v9, v3

    move-object v10, v2

    move-object v11, v4

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lrx/d/a/w$2;-><init>(Lrx/d/a/w;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Lrx/i;)V

    .line 134
    invoke-virtual {p1, v6}, Lrx/i;->a(Lrx/j;)V

    .line 136
    return-object v6

    .line 57
    :cond_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p0, Lrx/d/a/w;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lrx/i;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    .line 1141
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1147
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1149
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndDecrement()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1150
    invoke-interface {p3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 1151
    if-nez v0, :cond_1

    .line 1153
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 1170
    :cond_0
    :goto_1
    return-void

    .line 1156
    :cond_1
    if-eqz p2, :cond_2

    .line 1157
    :try_start_1
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1159
    :cond_2
    invoke-static {p4, v0}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1169
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    throw v0

    .line 1162
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1169
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lrx/i;

    invoke-direct {p0, p1}, Lrx/d/a/w;->a(Lrx/i;)Lrx/i;

    move-result-object v0

    return-object v0
.end method
