.class public Lcom/sleepycat/b/f/f;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "SharedLatch.java"


# static fields
.field public static final synthetic e:Z


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 42
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/f/f;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-boolean v1, p0, Lcom/sleepycat/b/f/f;->d:Z

    .line 45
    iput-object p1, p0, Lcom/sleepycat/b/f/f;->a:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latch already held: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/f/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    :cond_0
    throw v0

    .line 95
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 97
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sleepycat/b/f/f;->b:Z

    if-eqz v0, :cond_2

    .line 1253
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/f/e;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_2
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 100
    :cond_3
    return-void
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latch already held: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/f/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    :cond_0
    throw v0

    .line 119
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z

    move-result v0

    .line 122
    sget-boolean v1, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sleepycat/b/f/f;->b:Z

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 2253
    sget-object v1, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v1, p0}, Lcom/sleepycat/b/f/e;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_2
    sget-boolean v1, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    .line 123
    :cond_3
    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/sleepycat/b/f/f;->d:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->a()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const/4 v0, 0x0

    .line 141
    :try_start_0
    sget-boolean v1, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 142
    :cond_2
    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/sleepycat/b/f/f;->c:Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 152
    :cond_4
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sleepycat/b/f/f;->b:Z

    if-eqz v0, :cond_5

    .line 3253
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/f/e;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_5
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v1, :cond_6

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    :cond_6
    throw v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 167
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/f/f;->b:Z

    if-eqz v0, :cond_0

    .line 3261
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/f/e;->b(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->printStackTrace()V

    .line 197
    :cond_0
    return-void

    .line 171
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sleepycat/b/f/f;->d:Z

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 176
    sget-boolean v1, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 177
    :cond_2
    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/sleepycat/b/f/f;->c:Ljava/util/List;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Latch not held: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/f/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 190
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/b/f/f;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 193
    sget-boolean v0, Lcom/sleepycat/b/f/f;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/f/f;->b:Z

    if-eqz v0, :cond_0

    .line 4261
    sget-object v0, Lcom/sleepycat/b/f/d;->a:Lcom/sleepycat/b/f/e;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/f/e;->b(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_1 .. :try_end_1} :catch_0
.end method
