.class public final Lcom/sleepycat/b/i/c/b/a;
.super Ljava/util/TimerTask;
.source "ChannelTimeoutTask.java"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/i/h/p;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private c:J


# direct methods
.method constructor <init>(Ljava/util/Timer;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 47
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 33
    iput-wide v2, p0, Lcom/sleepycat/b/i/c/b/a;->b:J

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/a;->c:J

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/a;->a:Ljava/util/List;

    move-object v0, p1

    move-object v1, p0

    move-wide v4, v2

    .line 48
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 49
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/a;->c:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/a;->c:J

    .line 60
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/a;->a:Ljava/util/List;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 62
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/p;

    iget-wide v4, p0, Lcom/sleepycat/b/i/c/b/a;->c:J

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/i/h/p;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
