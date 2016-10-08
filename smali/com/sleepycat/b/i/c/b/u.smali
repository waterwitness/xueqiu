.class public Lcom/sleepycat/b/i/c/b/u;
.super Ljava/lang/Object;
.source "MasterTransfer.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/sleepycat/b/i/c/b/aa;

.field final c:Ljava/util/logging/Logger;

.field private volatile e:Z

.field private f:Lcom/sleepycat/b/i/h/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/i/h/s",
            "<",
            "Lcom/sleepycat/b/i/c/b/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sleepycat/b/i/c/b/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/u;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized a()Lcom/sleepycat/b/i/h/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/b/i/h/s",
            "<",
            "Lcom/sleepycat/b/i/c/b/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/u;->f:Lcom/sleepycat/b/i/h/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Lcom/sleepycat/b/i/c/b/v;)V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/u;->a()Lcom/sleepycat/b/i/h/s;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/h/s;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Exception;)Z
    .locals 3

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/u;->d:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/b/u;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 113
    :goto_0
    monitor-exit p0

    return v0

    .line 109
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/u;->a()Lcom/sleepycat/b/i/h/s;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    .line 1317
    iget-object v1, v0, Lcom/sleepycat/b/i/h/s;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1318
    iget-object v1, v0, Lcom/sleepycat/b/i/h/s;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/s;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
