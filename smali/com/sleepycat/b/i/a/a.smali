.class public final Lcom/sleepycat/b/i/a/a;
.super Ljava/lang/Object;
.source "Arbiter.java"


# instance fields
.field public volatile a:Z

.field public final b:Lcom/sleepycat/b/i/a/b;

.field public final c:Lcom/sleepycat/b/i/c/aj;

.field public final d:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sleepycat/b/i/a/a;->c:Lcom/sleepycat/b/i/c/aj;

    .line 50
    new-instance v0, Lcom/sleepycat/b/i/a/c;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/i/a/c;-><init>(Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/a/a;->b:Lcom/sleepycat/b/i/a/b;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/a/a;->d:Ljava/util/logging/Logger;

    .line 52
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/a/a;->b:Lcom/sleepycat/b/i/a/b;

    invoke-interface {v0}, Lcom/sleepycat/b/i/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/a/a;->a:Z

    .line 66
    :goto_0
    iget-boolean v0, p0, Lcom/sleepycat/b/i/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/sleepycat/b/i/a/a;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
