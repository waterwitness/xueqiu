.class final Lrx/h/c;
.super Lrx/h;
.source "CachedThreadScheduler.java"


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/h/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:I

.field private final c:Lrx/j/b;

.field private final d:Lrx/h/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    const-class v0, Lrx/h/c;

    const-string v1, "a"

    .line 115
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/h/c;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 114
    return-void
.end method

.method constructor <init>(Lrx/h/d;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 111
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/h/c;->c:Lrx/j/b;

    .line 118
    iput-object p1, p0, Lrx/h/c;->d:Lrx/h/d;

    .line 119
    return-void
.end method


# virtual methods
.method public final a(Lrx/c/a;)Lrx/j;
    .locals 3

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/h/c;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lrx/h/c;->c:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lrx/h/c;->d:Lrx/h/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrx/h/d;->b(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/d/b/b;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lrx/h/c;->c:Lrx/j/b;

    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/j;)V

    .line 149
    iget-object v1, p0, Lrx/h/c;->c:Lrx/j/b;

    invoke-virtual {v0, v1}, Lrx/d/b/b;->a(Lrx/j/b;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    .prologue
    .line 123
    sget-object v0, Lrx/h/c;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lrx/h/b;->c()Lrx/h/b;

    move-result-object v0

    iget-object v1, p0, Lrx/h/c;->d:Lrx/h/d;

    .line 1077
    invoke-static {}, Lrx/h/b;->b()J

    move-result-wide v2

    iget-wide v4, v0, Lrx/h/b;->a:J

    add-long/2addr v2, v4

    .line 1167
    iput-wide v2, v1, Lrx/h/d;->b:J

    .line 1079
    iget-object v0, v0, Lrx/h/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v0, p0, Lrx/h/c;->c:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->b()V

    .line 128
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lrx/h/c;->c:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    return v0
.end method
