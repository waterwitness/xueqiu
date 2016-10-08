.class public final Lcom/sleepycat/b/i/h/t;
.super Ljava/util/concurrent/CountDownLatch;
.source "RepUtils.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field final a:Lcom/sleepycat/b/c/ad;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/sleepycat/b/i/h/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/h/t;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/h/t;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 230
    iput-object p1, p0, Lcom/sleepycat/b/i/h/t;->a:Lcom/sleepycat/b/c/ad;

    .line 231
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 241
    iget-object v0, p0, Lcom/sleepycat/b/i/h/t;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/t;->getCount()J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/t;->countDown()V

    .line 242
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    .line 245
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/i/h/t;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/b/i/h/t;->getCount()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 246
    :cond_1
    return-void
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 260
    if-nez v1, :cond_0

    move v0, v1

    .line 271
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/h/t;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 264
    if-eqz v0, :cond_2

    .line 265
    instance-of v1, v0, Lcom/sleepycat/b/n;

    if-eqz v1, :cond_1

    .line 266
    check-cast v0, Lcom/sleepycat/b/n;

    throw v0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/h/t;->a:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v1

    .line 271
    goto :goto_0
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 287
    const-string v0, "Use awaitOrException() instead of await"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
