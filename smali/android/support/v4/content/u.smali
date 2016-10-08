.class abstract Landroid/support/v4/content/u;
.super Ljava/lang/Object;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/concurrent/Executor;

.field private static g:Landroid/support/v4/content/w;

.field private static volatile h:Ljava/util/concurrent/Executor;


# instance fields
.field final d:Landroid/support/v4/content/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/y",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field volatile f:I

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 55
    new-instance v0, Landroid/support/v4/content/u$1;

    invoke-direct {v0}, Landroid/support/v4/content/u$1;-><init>()V

    sput-object v0, Landroid/support/v4/content/u;->a:Ljava/util/concurrent/ThreadFactory;

    .line 63
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/content/u;->b:Ljava/util/concurrent/BlockingQueue;

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroid/support/v4/content/u;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroid/support/v4/content/u;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 78
    sput-object v1, Landroid/support/v4/content/u;->c:Ljava/util/concurrent/Executor;

    sput-object v1, Landroid/support/v4/content/u;->h:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget v0, Landroid/support/v4/content/x;->a:I

    iput v0, p0, Landroid/support/v4/content/u;->f:I

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/u;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    new-instance v0, Landroid/support/v4/content/u$2;

    invoke-direct {v0, p0}, Landroid/support/v4/content/u$2;-><init>(Landroid/support/v4/content/u;)V

    iput-object v0, p0, Landroid/support/v4/content/u;->d:Landroid/support/v4/content/y;

    .line 132
    new-instance v0, Landroid/support/v4/content/u$3;

    iget-object v1, p0, Landroid/support/v4/content/u;->d:Landroid/support/v4/content/y;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/u$3;-><init>(Landroid/support/v4/content/u;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/support/v4/content/u;->e:Ljava/util/concurrent/FutureTask;

    .line 152
    return-void
.end method

.method static synthetic a(Landroid/support/v4/content/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/support/v4/content/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/content/u;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/v4/content/u;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method protected static varargs b()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 231
    return-void
.end method

.method static synthetic b(Landroid/support/v4/content/u;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 48
    .line 1155
    iget-object v0, p0, Landroid/support/v4/content/u;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1156
    if-nez v0, :cond_0

    .line 1157
    invoke-direct {p0, p1}, Landroid/support/v4/content/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method

.method private static c()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 106
    const-class v1, Landroid/support/v4/content/u;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Landroid/support/v4/content/u;->g:Landroid/support/v4/content/w;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/support/v4/content/w;

    invoke-direct {v0}, Landroid/support/v4/content/w;-><init>()V

    sput-object v0, Landroid/support/v4/content/u;->g:Landroid/support/v4/content/w;

    .line 110
    :cond_0
    sget-object v0, Landroid/support/v4/content/u;->g:Landroid/support/v4/content/w;

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 162
    invoke-static {}, Landroid/support/v4/content/u;->c()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/content/v;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/support/v4/content/v;-><init>(Landroid/support/v4/content/u;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 165
    return-object p1
.end method

.method static synthetic c(Landroid/support/v4/content/u;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 48
    .line 2278
    iget-object v0, p0, Landroid/support/v4/content/u;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    .line 1463
    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {p0, p1}, Landroid/support/v4/content/u;->b(Ljava/lang/Object;)V

    .line 1468
    :goto_0
    sget v0, Landroid/support/v4/content/x;->c:I

    iput v0, p0, Landroid/support/v4/content/u;->f:I

    .line 48
    return-void

    .line 1466
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/content/u;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 218
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 250
    return-void
.end method
