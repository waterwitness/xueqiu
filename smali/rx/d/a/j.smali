.class final Lrx/d/a/j;
.super Lrx/i;
.source "OperatorConcat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i",
        "<",
        "Lrx/a",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/d/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/d/a/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<",
            "Lrx/a",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile c:Lrx/d/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile d:I

.field private final g:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final h:Lrx/j/e;

.field private volatile i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-class v0, Lrx/d/a/j;

    const-string v1, "d"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/j;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 80
    const-class v0, Lrx/d/a/j;

    const-string v1, "i"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/j;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/i;Lrx/j/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<TT;>;",
            "Lrx/j/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lrx/i;-><init>(Lrx/i;)V

    .line 66
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/j;->a:Lrx/d/a/a;

    .line 84
    iput-object p1, p0, Lrx/d/a/j;->g:Lrx/i;

    .line 85
    iput-object p2, p0, Lrx/d/a/j;->h:Lrx/j/e;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/d/a/j;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 87
    new-instance v0, Lrx/d/a/j$1;

    invoke-direct {v0, p0}, Lrx/d/a/j$1;-><init>(Lrx/d/a/j;)V

    invoke-static {v0}, Lrx/j/g;->a(Lrx/c/a;)Lrx/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d/a/j;->a(Lrx/j;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lrx/d/a/j;)V
    .locals 1

    .prologue
    .line 3121
    sget-object v0, Lrx/d/a/j;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 65
    return-void
.end method

.method static synthetic a(Lrx/d/a/j;J)V
    .locals 5

    .prologue
    .line 65
    .line 2104
    sget-object v0, Lrx/d/a/j;->j:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2105
    iget-object v0, p0, Lrx/d/a/j;->c:Lrx/d/a/h;

    if-nez v0, :cond_1

    iget v0, p0, Lrx/d/a/j;->d:I

    if-lez v0, :cond_1

    .line 2108
    invoke-virtual {p0}, Lrx/d/a/j;->e()V

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2114
    :cond_1
    iget-object v0, p0, Lrx/d/a/j;->c:Lrx/d/a/h;

    if-eqz v0, :cond_0

    .line 2116
    iget-object v0, p0, Lrx/d/a/j;->c:Lrx/d/a/h;

    .line 2191
    invoke-virtual {v0, p1, p2}, Lrx/d/a/h;->a(J)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lrx/d/a/j;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Lrx/d/a/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lrx/d/a/j;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lrx/d/a/j;->e()V

    .line 144
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 65
    check-cast p1, Lrx/a;

    .line 1126
    iget-object v0, p0, Lrx/d/a/j;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Lrx/d/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1127
    sget-object v0, Lrx/d/a/j;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lrx/d/a/j;->e()V

    .line 65
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lrx/d/a/j;->g:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 1066
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->b()V

    .line 136
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 99
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lrx/d/a/j;->a(J)V

    .line 100
    return-void
.end method

.method final e()V
    .locals 6

    .prologue
    .line 155
    iget-wide v0, p0, Lrx/d/a/j;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 156
    iget-object v0, p0, Lrx/d/a/j;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lrx/d/a/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v0, p0, Lrx/d/a/j;->g:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    if-eqz v0, :cond_0

    .line 160
    invoke-static {v0}, Lrx/d/a/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/a;

    .line 161
    new-instance v1, Lrx/d/a/h;

    iget-object v2, p0, Lrx/d/a/j;->g:Lrx/i;

    iget-wide v4, p0, Lrx/d/a/j;->i:J

    invoke-direct {v1, p0, v2, v4, v5}, Lrx/d/a/h;-><init>(Lrx/d/a/j;Lrx/i;J)V

    iput-object v1, p0, Lrx/d/a/j;->c:Lrx/d/a/h;

    .line 162
    iget-object v1, p0, Lrx/d/a/j;->h:Lrx/j/e;

    iget-object v2, p0, Lrx/d/a/j;->c:Lrx/d/a/h;

    invoke-virtual {v1, v2}, Lrx/j/e;->a(Lrx/j;)V

    .line 163
    iget-object v1, p0, Lrx/d/a/j;->c:Lrx/d/a/h;

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/i;)Lrx/j;

    goto :goto_0

    .line 167
    :cond_2
    iget-object v0, p0, Lrx/d/a/j;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lrx/d/a/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lrx/d/a/j;->g:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    goto :goto_0
.end method
