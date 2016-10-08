.class final Lcom/sleepycat/b/c/aq;
.super Lcom/sleepycat/b/c/ar;
.source "MemoryBudget.java"


# instance fields
.field private final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1373
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/ar;-><init>(B)V

    .line 1374
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/aq;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1375
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1369
    invoke-direct {p0}, Lcom/sleepycat/b/c/aq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/sleepycat/b/c/aq;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method final a(J)Z
    .locals 5

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/sleepycat/b/c/aq;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/b/c/aq;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 1389
    const/4 v0, 0x1

    return v0
.end method
