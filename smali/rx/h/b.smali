.class final Lrx/h/b;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"


# static fields
.field private static d:Lrx/h/b;


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lrx/h/b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1}, Lrx/h/b;-><init>(Ljava/util/concurrent/TimeUnit;)V

    sput-object v0, Lrx/h/b;->d:Lrx/h/b;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 7

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x3c

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lrx/h/b;->a:J

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/h/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 48
    const/4 v0, 0x1

    invoke-static {}, Lrx/h/a;->b()Lrx/d/c/g;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/h/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    iget-object v0, p0, Lrx/h/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lrx/h/b$1;

    invoke-direct {v1, p0}, Lrx/h/b$1;-><init>(Lrx/h/b;)V

    iget-wide v2, p0, Lrx/h/b;->a:J

    iget-wide v4, p0, Lrx/h/b;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 57
    return-void
.end method

.method static b()J
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c()Lrx/h/b;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lrx/h/b;->d:Lrx/h/b;

    return-object v0
.end method


# virtual methods
.method final a()Lrx/h/d;
    .locals 2

    .prologue
    .line 64
    :cond_0
    iget-object v0, p0, Lrx/h/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lrx/h/b;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/h/d;

    .line 66
    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lrx/h/d;

    invoke-static {}, Lrx/h/a;->c()Lrx/d/c/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/h/d;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_0
.end method
