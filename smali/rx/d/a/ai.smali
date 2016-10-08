.class final Lrx/d/a/ai;
.super Lrx/i;
.source "OperatorTimeoutBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/d/a/ai;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/d/a/ai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:I

.field volatile b:J

.field private final f:Lrx/j/e;

.field private final g:Ljava/lang/Object;

.field private final h:Lrx/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final i:Lrx/d/a/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/ah",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final j:Lrx/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/a",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final k:Lrx/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    const-class v0, Lrx/d/a/ai;

    const-string v1, "a"

    .line 98
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/ai;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 100
    const-class v0, Lrx/d/a/ai;

    const-string v1, "b"

    .line 101
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/ai;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 100
    return-void
.end method

.method private constructor <init>(Lrx/f/e;Lrx/d/a/ah;Lrx/j/e;Lrx/a;Lrx/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/f/e",
            "<TT;>;",
            "Lrx/d/a/ah",
            "<TT;>;",
            "Lrx/j/e;",
            "Lrx/a",
            "<+TT;>;",
            "Lrx/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lrx/i;-><init>(Lrx/i;)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lrx/d/a/ai;->g:Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lrx/d/a/ai;->h:Lrx/f/e;

    .line 110
    iput-object p2, p0, Lrx/d/a/ai;->i:Lrx/d/a/ah;

    .line 111
    iput-object p3, p0, Lrx/d/a/ai;->f:Lrx/j/e;

    .line 112
    iput-object p4, p0, Lrx/d/a/ai;->j:Lrx/a;

    .line 113
    iput-object p5, p0, Lrx/d/a/ai;->k:Lrx/h;

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lrx/f/e;Lrx/d/a/ah;Lrx/j/e;Lrx/a;Lrx/h;B)V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Lrx/d/a/ai;-><init>(Lrx/f/e;Lrx/d/a/ah;Lrx/j/e;Lrx/a;Lrx/h;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 147
    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lrx/d/a/ai;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_0
    sget-object v3, Lrx/d/a/ai;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 152
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lrx/d/a/ai;->f:Lrx/j/e;

    invoke-virtual {v0}, Lrx/j/e;->b()V

    .line 155
    iget-object v0, p0, Lrx/d/a/ai;->h:Lrx/f/e;

    invoke-virtual {v0}, Lrx/f/e;->a()V

    .line 157
    :cond_0
    return-void

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lrx/d/a/ai;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget v2, p0, Lrx/d/a/ai;->a:I

    if-nez v2, :cond_0

    .line 121
    sget-object v0, Lrx/d/a/ai;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 122
    const/4 v0, 0x1

    .line 124
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lrx/d/a/ai;->h:Lrx/f/e;

    invoke-virtual {v0, p1}, Lrx/f/e;->a(Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lrx/d/a/ai;->f:Lrx/j/e;

    iget-object v0, p0, Lrx/d/a/ai;->i:Lrx/d/a/ah;

    iget-wide v2, p0, Lrx/d/a/ai;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lrx/d/a/ai;->k:Lrx/h;

    invoke-interface {v0, p0, v2, v3}, Lrx/d/a/ah;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/j;

    invoke-virtual {v1, v0}, Lrx/j/e;->a(Lrx/j;)V

    .line 129
    :cond_1
    return-void

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 133
    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lrx/d/a/ai;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 135
    :try_start_0
    sget-object v3, Lrx/d/a/ai;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lrx/d/a/ai;->f:Lrx/j/e;

    invoke-virtual {v0}, Lrx/j/e;->b()V

    .line 141
    iget-object v0, p0, Lrx/d/a/ai;->h:Lrx/f/e;

    invoke-virtual {v0, p1}, Lrx/f/e;->a(Ljava/lang/Throwable;)V

    .line 143
    :cond_0
    return-void

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final b(J)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    iget-object v2, p0, Lrx/d/a/ai;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-wide v4, p0, Lrx/d/a/ai;->b:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_2

    sget-object v3, Lrx/d/a/ai;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 166
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lrx/d/a/ai;->j:Lrx/a;

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lrx/d/a/ai;->h:Lrx/f/e;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {v0, v1}, Lrx/f/e;->a(Ljava/lang/Throwable;)V

    .line 175
    :cond_0
    :goto_1
    return-void

    .line 166
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 171
    :cond_1
    iget-object v0, p0, Lrx/d/a/ai;->j:Lrx/a;

    iget-object v1, p0, Lrx/d/a/ai;->h:Lrx/f/e;

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/i;)Lrx/j;

    .line 172
    iget-object v0, p0, Lrx/d/a/ai;->f:Lrx/j/e;

    iget-object v1, p0, Lrx/d/a/ai;->h:Lrx/f/e;

    invoke-virtual {v0, v1}, Lrx/j/e;->a(Lrx/j;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
