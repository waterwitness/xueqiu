.class public final Lcom/sleepycat/b/i/i/b;
.super Ljava/lang/Object;
.source "LogItemCache.java"


# instance fields
.field public final a:I

.field private final b:I

.field private volatile c:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<[",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/sleepycat/b/g/al;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/sleepycat/b/p/z;

.field private final e:Lcom/sleepycat/b/p/z;


# direct methods
.method constructor <init>(ILcom/sleepycat/b/p/ai;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/b;->c:Ljava/lang/ref/SoftReference;

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad cache size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; it must be a power of 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput p1, p0, Lcom/sleepycat/b/i/i/b;->b:I

    .line 58
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/sleepycat/b/i/i/b;->a:I

    .line 59
    new-instance v0, Lcom/sleepycat/b/p/z;

    sget-object v1, Lcom/sleepycat/b/i/i/l;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, p2, v1}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/b;->d:Lcom/sleepycat/b/p/z;

    .line 60
    new-instance v0, Lcom/sleepycat/b/p/z;

    sget-object v1, Lcom/sleepycat/b/i/i/l;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, p2, v1}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/b;->e:Lcom/sleepycat/b/p/z;

    .line 61
    return-void
.end method


# virtual methods
.method final a(Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/g/al;
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/sleepycat/b/i/i/b;->b()[Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 1101
    iget-wide v2, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 68
    long-to-int v1, v2

    iget v2, p0, Lcom/sleepycat/b/i/i/b;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/al;

    .line 70
    if-eqz v0, :cond_0

    .line 2074
    iget-object v1, v0, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 2295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 70
    invoke-virtual {v1, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/sleepycat/b/i/i/b;->d:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->f()V

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/i/b;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a()V
    .locals 5

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sleepycat/b/i/i/b;->b()[Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public final b()[Ljava/util/concurrent/atomic/AtomicReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/sleepycat/b/g/al;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sleepycat/b/i/i/b;->c:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/atomic/AtomicReference;

    .line 104
    if-nez v0, :cond_1

    .line 105
    iget v0, p0, Lcom/sleepycat/b/i/i/b;->b:I

    new-array v1, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    .line 106
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 107
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/i/b;->c:Ljava/lang/ref/SoftReference;

    move-object v0, v1

    .line 112
    :cond_1
    return-object v0
.end method
