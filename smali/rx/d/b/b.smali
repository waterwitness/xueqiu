.class public final Lrx/d/b/b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ScheduledAction.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lrx/j;"
    }
.end annotation


# instance fields
.field public final a:Lrx/j/b;

.field final b:Lrx/c/a;


# direct methods
.method public constructor <init>(Lrx/c/a;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/d/b/b;->b:Lrx/c/a;

    .line 40
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lrx/d/b/b;->a:Lrx/j/b;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lrx/j/b;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lrx/d/b/b;->a:Lrx/j/b;

    new-instance v1, Lrx/d/b/d;

    invoke-direct {v1, p0, p1}, Lrx/d/b/d;-><init>(Lrx/j;Lrx/j/b;)V

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/j;)V

    .line 104
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lrx/d/b/b;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lrx/d/b/b;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->b()V

    .line 74
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lrx/d/b/b;->a:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->c()Z

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d/b/b;->lazySet(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lrx/d/b/b;->b:Lrx/c/a;

    invoke-interface {v0}, Lrx/c/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lrx/d/b/b;->b()V

    .line 61
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 51
    :try_start_1
    instance-of v1, v0, Lrx/b/i;

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 56
    :goto_1
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/g/d;->b()Lrx/g/a;

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-virtual {p0}, Lrx/d/b/b;->b()V

    goto :goto_0

    .line 54
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/d/b/b;->b()V

    throw v0
.end method
