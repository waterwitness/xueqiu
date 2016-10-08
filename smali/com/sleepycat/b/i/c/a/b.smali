.class final Lcom/sleepycat/b/i/c/a/b;
.super Ljava/util/TimerTask;
.source "FeederManager.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/sleepycat/b/i/c/a/a;

.field private final c:I

.field private d:Lcom/sleepycat/b/o/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const-class v0, Lcom/sleepycat/b/i/c/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/a/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/a/a;IJLcom/sleepycat/b/o/b;)V
    .locals 3

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sleepycat/b/i/c/a/b;->b:Lcom/sleepycat/b/i/c/a/a;

    .line 231
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 232
    iput-object p5, p0, Lcom/sleepycat/b/i/c/a/b;->d:Lcom/sleepycat/b/o/b;

    .line 233
    iput p2, p0, Lcom/sleepycat/b/i/c/a/b;->c:I

    .line 234
    iget-object v0, p1, Lcom/sleepycat/b/i/c/a/a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/a/b;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found an old lease for node: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 239
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/i/c/a/a;->d:Ljava/util/Timer;

    invoke-virtual {v0, p0, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 240
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/sleepycat/b/o/b;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/c/a/b;->d:Lcom/sleepycat/b/o/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 267
    :goto_0
    monitor-exit p0

    return-object v0

    .line 262
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/b;->cancel()Z

    .line 263
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/b;->b:Lcom/sleepycat/b/i/c/a/a;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/a/a;->b:Ljava/util/Map;

    iget v1, p0, Lcom/sleepycat/b/i/c/a/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/a/b;

    .line 264
    sget-boolean v1, Lcom/sleepycat/b/i/c/a/b;->a:Z

    if-nez v1, :cond_1

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/b;->d:Lcom/sleepycat/b/o/b;

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/b/i/c/a/b;->d:Lcom/sleepycat/b/o/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized run()V
    .locals 1

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/b;->d:Lcom/sleepycat/b/o/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 250
    :goto_0
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/a/b;->d:Lcom/sleepycat/b/o/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/o/b;->b()V

    .line 249
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/a/b;->a()Lcom/sleepycat/b/o/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
