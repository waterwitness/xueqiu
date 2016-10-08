.class public Lrx/d/b/a;
.super Lrx/h;
.source "NewThreadWorker.java"

# interfaces
.implements Lrx/j;


# instance fields
.field volatile a:Z

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lrx/g/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 35
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 36
    invoke-static {v7, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/d/b/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    iget-object v0, p0, Lrx/d/b/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 39
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setRemoveOnCancelPolicy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 40
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-ne v5, v7, :cond_1

    .line 41
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    .line 43
    :try_start_0
    iget-object v0, p0, Lrx/d/b/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_1
    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->c()Lrx/g/e;

    move-result-object v0

    iput-object v0, p0, Lrx/d/b/a;->c:Lrx/g/e;

    .line 51
    return-void

    .line 45
    :catch_0
    move-exception v0

    invoke-static {}, Lrx/g/d;->a()Lrx/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/g/d;->b()Lrx/g/a;

    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lrx/c/a;)Lrx/j;
    .locals 3

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lrx/d/b/a;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lrx/d/b/a;->a:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lrx/j/g;->b()Lrx/j;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/d/b/a;->b(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/d/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/d/b/b;
    .locals 6

    .prologue
    .line 74
    invoke-static {p1}, Lrx/g/e;->a(Lrx/c/a;)Lrx/c/a;

    move-result-object v0

    .line 75
    new-instance v1, Lrx/d/b/b;

    invoke-direct {v1, v0}, Lrx/d/b/b;-><init>(Lrx/c/a;)V

    .line 77
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    .line 78
    iget-object v0, p0, Lrx/d/b/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1092
    :goto_0
    iget-object v2, v1, Lrx/d/b/b;->a:Lrx/j/b;

    new-instance v3, Lrx/d/b/c;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lrx/d/b/c;-><init>(Lrx/d/b/b;Ljava/util/concurrent/Future;B)V

    invoke-virtual {v2, v3}, Lrx/j/b;->a(Lrx/j;)V

    .line 84
    return-object v1

    .line 80
    :cond_0
    iget-object v0, p0, Lrx/d/b/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/d/b/a;->a:Z

    .line 90
    iget-object v0, p0, Lrx/d/b/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 91
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lrx/d/b/a;->a:Z

    return v0
.end method
