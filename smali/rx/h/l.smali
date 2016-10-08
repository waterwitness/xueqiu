.class final Lrx/h/l;
.super Ljava/lang/Object;
.source "GenericScheduledExecutorService.java"


# static fields
.field private static final a:Lrx/d/c/g;

.field private static final b:Lrx/h/l;


# instance fields
.field private final c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lrx/d/c/g;

    const-string v1, "RxScheduledExecutorPool-"

    invoke-direct {v0, v1}, Lrx/d/c/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrx/h/l;->a:Lrx/d/c/g;

    .line 40
    new-instance v0, Lrx/h/l;

    invoke-direct {v0}, Lrx/h/l;-><init>()V

    sput-object v0, Lrx/h/l;->b:Lrx/h/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 45
    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 46
    div-int/lit8 v1, v1, 0x2

    .line 49
    :cond_0
    if-le v1, v0, :cond_1

    .line 52
    :goto_0
    sget-object v1, Lrx/h/l;->a:Lrx/d/c/g;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lrx/h/l;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lrx/h/l;->b:Lrx/h/l;

    iget-object v0, v0, Lrx/h/l;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
