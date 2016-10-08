.class public Lcom/android/volley/p;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/android/volley/n",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/android/volley/b;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final f:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/android/volley/n",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/android/volley/h;

.field private final h:Lcom/android/volley/u;

.field private i:[Lcom/android/volley/i;

.field private j:Lcom/android/volley/d;


# direct methods
.method private constructor <init>(Lcom/android/volley/b;Lcom/android/volley/h;)V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lcom/android/volley/f;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/volley/f;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/p;-><init>(Lcom/android/volley/b;Lcom/android/volley/h;Lcom/android/volley/u;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/b;Lcom/android/volley/h;B)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/volley/p;-><init>(Lcom/android/volley/b;Lcom/android/volley/h;)V

    .line 125
    return-void
.end method

.method private constructor <init>(Lcom/android/volley/b;Lcom/android/volley/h;Lcom/android/volley/u;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/volley/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/volley/p;->a:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/volley/p;->b:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 68
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/volley/p;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 99
    iput-object p1, p0, Lcom/android/volley/p;->d:Lcom/android/volley/b;

    .line 100
    iput-object p2, p0, Lcom/android/volley/p;->g:Lcom/android/volley/h;

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/volley/i;

    iput-object v0, p0, Lcom/android/volley/p;->i:[Lcom/android/volley/i;

    .line 102
    iput-object p3, p0, Lcom/android/volley/p;->h:Lcom/android/volley/u;

    .line 103
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/n;)Lcom/android/volley/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/n",
            "<TT;>;)",
            "Lcom/android/volley/n",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 218
    .line 2255
    iput-object p0, p1, Lcom/android/volley/n;->f:Lcom/android/volley/p;

    .line 219
    iget-object v1, p0, Lcom/android/volley/p;->b:Ljava/util/Set;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/p;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3163
    iget-object v0, p0, Lcom/android/volley/p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 3265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/volley/n;->e:Ljava/lang/Integer;

    .line 225
    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/android/volley/n;->a(Ljava/lang/String;)V

    .line 3489
    iget-boolean v0, p1, Lcom/android/volley/n;->g:Z

    .line 228
    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/volley/p;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_0
    return-object p1

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/volley/p;->a:Ljava/util/Map;

    monitor-enter v1

    .line 235
    :try_start_2
    invoke-virtual {p1}, Lcom/android/volley/n;->b()Ljava/lang/String;

    move-result-object v2

    .line 236
    iget-object v0, p0, Lcom/android/volley/p;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/android/volley/p;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 239
    if-nez v0, :cond_1

    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 242
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v3, p0, Lcom/android/volley/p;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-boolean v0, Lcom/android/volley/z;->b:Z

    if-eqz v0, :cond_2

    .line 245
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/android/volley/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 254
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 250
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/volley/p;->a:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/android/volley/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/volley/p;->b()V

    .line 133
    new-instance v0, Lcom/android/volley/d;

    iget-object v1, p0, Lcom/android/volley/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/android/volley/p;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/p;->d:Lcom/android/volley/b;

    iget-object v4, p0, Lcom/android/volley/p;->h:Lcom/android/volley/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/volley/d;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/b;Lcom/android/volley/u;)V

    iput-object v0, p0, Lcom/android/volley/p;->j:Lcom/android/volley/d;

    .line 134
    iget-object v0, p0, Lcom/android/volley/p;->j:Lcom/android/volley/d;

    invoke-virtual {v0}, Lcom/android/volley/d;->start()V

    .line 137
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/volley/p;->i:[Lcom/android/volley/i;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 138
    new-instance v1, Lcom/android/volley/i;

    iget-object v2, p0, Lcom/android/volley/p;->f:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/android/volley/p;->g:Lcom/android/volley/h;

    iget-object v4, p0, Lcom/android/volley/p;->d:Lcom/android/volley/b;

    iget-object v5, p0, Lcom/android/volley/p;->h:Lcom/android/volley/u;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/volley/i;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/h;Lcom/android/volley/b;Lcom/android/volley/u;)V

    .line 140
    iget-object v2, p0, Lcom/android/volley/p;->i:[Lcom/android/volley/i;

    aput-object v1, v2, v0

    .line 141
    invoke-virtual {v1}, Lcom/android/volley/i;->start()V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/android/volley/p;->j:Lcom/android/volley/d;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/volley/p;->j:Lcom/android/volley/d;

    .line 1074
    iput-boolean v2, v0, Lcom/android/volley/d;->a:Z

    .line 1075
    invoke-virtual {v0}, Lcom/android/volley/d;->interrupt()V

    .line 152
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/volley/p;->i:[Lcom/android/volley/i;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 153
    iget-object v1, p0, Lcom/android/volley/p;->i:[Lcom/android/volley/i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/volley/p;->i:[Lcom/android/volley/i;

    aget-object v1, v1, v0

    .line 2069
    iput-boolean v2, v1, Lcom/android/volley/i;->a:Z

    .line 2070
    invoke-virtual {v1}, Lcom/android/volley/i;->interrupt()V

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    return-void
.end method
