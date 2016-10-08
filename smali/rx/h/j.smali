.class final Lrx/h/j;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/j;


# static fields
.field static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/h/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lrx/c/a;

.field final b:Lrx/j/b;

.field volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 159
    const-class v0, Lrx/h/j;

    const-string v1, "c"

    .line 160
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/h/j;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 159
    return-void
.end method

.method public constructor <init>(Lrx/c/a;Lrx/j/b;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lrx/h/j;->a:Lrx/c/a;

    .line 164
    iput-object p2, p0, Lrx/h/j;->b:Lrx/j/b;

    .line 165
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .prologue
    .line 189
    sget-object v0, Lrx/h/j;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lrx/h/j;->b:Lrx/j/b;

    invoke-virtual {v0, p0}, Lrx/j/b;->b(Lrx/j;)V

    .line 192
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lrx/h/j;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lrx/h/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/h/j;->a:Lrx/c/a;

    invoke-interface {v0}, Lrx/c/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p0}, Lrx/h/j;->b()V

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :try_start_1
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lrx/g/d;->b()Lrx/g/a;

    .line 176
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-virtual {p0}, Lrx/h/j;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/h/j;->b()V

    throw v0
.end method
