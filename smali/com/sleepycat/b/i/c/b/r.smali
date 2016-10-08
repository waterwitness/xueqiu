.class public Lcom/sleepycat/b/i/c/b/r;
.super Ljava/lang/Object;
.source "LocalCBVLSNUpdater.java"


# static fields
.field public static e:Z

.field static final synthetic f:Z


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/b/x;

.field public final b:Lcom/sleepycat/b/i/c/b/aa;

.field public c:Lcom/sleepycat/b/p/au;

.field public d:Z

.field private final g:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-class v0, Lcom/sleepycat/b/i/c/b/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/r;->f:Z

    .line 82
    sput-boolean v1, Lcom/sleepycat/b/i/c/b/r;->e:Z

    return-void

    :cond_0
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/r;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 88
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 90
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->c:Lcom/sleepycat/b/p/au;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/b/r;->d:Z

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->g:Ljava/util/logging/Logger;

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 167
    .line 2105
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/r;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 2601
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->b()Z

    move-result v0

    .line 2105
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LocalCBVLSNUpdater.set() can only be called by the master"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2108
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->g:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 3520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 2108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update local CBVLSN for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/r;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from nodeCBVLSN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/r;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 4520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 2119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nodeCBVLSN"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/r;->c:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempted update local CBVLSN for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/r;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2125
    :cond_1
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/r;->c:Lcom/sleepycat/b/p/au;

    .line 2126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/b/r;->d:Z

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 5520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 5977
    iget-object v1, v0, Lcom/sleepycat/b/i/c/aj;->ax:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    .line 5978
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5980
    :try_start_0
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aw:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 5985
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5986
    return-void

    .line 6177
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/b/r;->d:Z

    if-eqz v0, :cond_3

    .line 6181
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/r;->e:Z

    if-eqz v0, :cond_5

    .line 6183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/b/r;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5985
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 6187
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->k()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 6197
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/r;->c:Lcom/sleepycat/b/p/au;

    .line 6199
    invoke-virtual {v0}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 6203
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 6933
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 7073
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 6203
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 6208
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->j:Lcom/sleepycat/b/i/c/p;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/r;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3, v0}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/p/au;)Z

    move-result v0

    .line 6211
    if-eqz v0, :cond_3

    .line 6212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/b/r;->d:Z
    :try_end_3
    .catch Lcom/sleepycat/b/aa; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sleepycat/b/n; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6220
    :catch_0
    move-exception v0

    :try_start_4
    throw v0

    .line 6221
    :catch_1
    move-exception v0

    .line 6223
    invoke-virtual {v0}, Lcom/sleepycat/b/n;->printStackTrace()V

    .line 6224
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/r;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 7520
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 6224
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "local cbvlsn update failed for node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/r;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
