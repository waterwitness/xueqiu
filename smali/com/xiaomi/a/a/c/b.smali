.class public final Lcom/xiaomi/a/a/c/b;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/os/Handler;

.field volatile b:Z

.field c:I

.field volatile d:Lcom/xiaomi/a/a/c/d;

.field private e:Lcom/xiaomi/a/a/c/c;

.field private final f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/a/a/c/b;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/a/a/c/b;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/a/a/c/b;->a:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/xiaomi/a/a/c/b;->b:Z

    iput v1, p0, Lcom/xiaomi/a/a/c/b;->c:I

    new-instance v0, Lcom/xiaomi/a/a/c/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/a/a/c/e;-><init>(Lcom/xiaomi/a/a/c/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/c/b;->a:Landroid/os/Handler;

    iput-boolean p1, p0, Lcom/xiaomi/a/a/c/b;->f:Z

    iput p2, p0, Lcom/xiaomi/a/a/c/b;->c:I

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/a/a/c/b;->e:Lcom/xiaomi/a/a/c/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/a/a/c/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/xiaomi/a/a/c/d;)V
    .locals 2

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/a/a/c/b;->e:Lcom/xiaomi/a/a/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/a/a/c/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/c/c;-><init>(Lcom/xiaomi/a/a/c/b;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/c/b;->e:Lcom/xiaomi/a/a/c/c;

    iget-object v0, p0, Lcom/xiaomi/a/a/c/b;->e:Lcom/xiaomi/a/a/c/c;

    iget-boolean v1, p0, Lcom/xiaomi/a/a/c/b;->f:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/c/c;->setDaemon(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/a/a/c/b;->b:Z

    iget-object v0, p0, Lcom/xiaomi/a/a/c/b;->e:Lcom/xiaomi/a/a/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/c/c;->start()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/a/c/b;->e:Lcom/xiaomi/a/a/c/c;

    .line 1000
    iget-object v0, v0, Lcom/xiaomi/a/a/c/c;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/xiaomi/a/a/c/d;J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/a/a/c/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/a/a/c/f;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/a/a/c/f;-><init>(Lcom/xiaomi/a/a/c/b;Lcom/xiaomi/a/a/c/d;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
