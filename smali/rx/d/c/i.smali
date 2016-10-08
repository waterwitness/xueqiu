.class public final Lrx/d/c/i;
.super Ljava/lang/Object;
.source "SubscriptionIndexedRingBuffer.java"

# interfaces
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lrx/j;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/j;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/d/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<",
            "Lrx/j;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Lrx/d/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field public volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lrx/d/c/i;

    const-string v1, "b"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/c/i;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 143
    new-instance v0, Lrx/d/c/i$1;

    invoke-direct {v0}, Lrx/d/c/i$1;-><init>()V

    sput-object v0, Lrx/d/c/i;->d:Lrx/c/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lrx/d/c/a;->a()Lrx/d/c/a;

    move-result-object v0

    iput-object v0, p0, Lrx/d/c/i;->a:Lrx/d/c/a;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lrx/d/c/i;->b:I

    .line 37
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lrx/c/f;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/f",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrx/d/c/i;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lrx/d/c/i;->a:Lrx/d/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lrx/d/c/i;->a:Lrx/d/c/a;

    invoke-virtual {v0, p1, p2}, Lrx/d/c/a;->a(Lrx/c/f;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lrx/j;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 62
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lrx/d/c/i;->b:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lrx/d/c/i;->a:Lrx/d/c/a;

    if-nez v0, :cond_2

    .line 63
    :cond_0
    invoke-interface {p1}, Lrx/j;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const/4 v0, -0x1

    .line 71
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 66
    :cond_2
    :try_start_1
    iget-object v1, p0, Lrx/d/c/i;->a:Lrx/d/c/a;

    .line 1302
    invoke-virtual {v1}, Lrx/d/c/a;->d()I

    move-result v0

    .line 1303
    sget v2, Lrx/d/c/a;->e:I

    if-ge v0, v2, :cond_3

    .line 1305
    iget-object v1, v1, Lrx/d/c/a;->a:Lrx/d/c/b;

    .line 1484
    iget-object v1, v1, Lrx/d/c/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1305
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 68
    :goto_1
    iget v1, p0, Lrx/d/c/i;->b:I

    if-ne v1, v3, :cond_1

    .line 69
    invoke-interface {p1}, Lrx/j;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1308
    :cond_3
    :try_start_2
    sget v2, Lrx/d/c/a;->e:I

    rem-int v2, v0, v2

    .line 1309
    invoke-virtual {v1, v0}, Lrx/d/c/a;->a(I)Lrx/d/c/b;

    move-result-object v1

    .line 2484
    iget-object v1, v1, Lrx/d/c/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1309
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    sget-object v0, Lrx/d/c/i;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrx/d/c/i;->a:Lrx/d/c/a;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lrx/d/c/i;->a:Lrx/d/c/a;

    .line 3135
    if-eqz v0, :cond_0

    .line 3140
    sget-object v1, Lrx/d/c/i;->d:Lrx/c/f;

    .line 3427
    invoke-virtual {v0, v1, v2}, Lrx/d/c/a;->a(Lrx/c/f;I)I

    .line 111
    :cond_0
    iget-object v0, p0, Lrx/d/c/i;->a:Lrx/d/c/a;

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/d/c/i;->a:Lrx/d/c/a;

    .line 113
    invoke-virtual {v0}, Lrx/d/c/a;->b()V

    .line 115
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    iget v1, p0, Lrx/d/c/i;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
