.class public final Lcom/sleepycat/b/i/g/a/f;
.super Lcom/sleepycat/b/i/h/z;
.source "LDiffService.java"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Lcom/sleepycat/b/i/c/aj;

.field public final c:Lcom/sleepycat/b/i/h/x;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/i/c/aj;)V
    .locals 2

    .prologue
    .line 54
    const-string v0, "LDiff"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/i/h/z;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/h/x;)V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    iput-object p2, p0, Lcom/sleepycat/b/i/g/a/f;->b:Lcom/sleepycat/b/i/c/aj;

    .line 56
    iput-object p1, p0, Lcom/sleepycat/b/i/g/a/f;->c:Lcom/sleepycat/b/i/h/x;

    .line 57
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/ad;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/channels/SocketChannel;)Ljava/lang/Runnable;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string v0, "Service is already busy"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 78
    :cond_0
    new-instance v0, Lcom/sleepycat/b/i/g/a/g;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/i/g/a/g;-><init>(Lcom/sleepycat/b/i/g/a/f;Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
