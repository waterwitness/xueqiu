.class public Lb/a/a/c;
.super Ljava/lang/Object;
.source "EventBus.java"


# static fields
.field static a:Ljava/util/concurrent/ExecutorService;

.field public static b:Ljava/lang/String;

.field private static volatile c:Lb/a/a/c;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static synthetic o:[I


# instance fields
.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lb/a/a/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lb/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lb/a/a/f;

.field private final j:Lb/a/a/b;

.field private final k:Lb/a/a/a;

.field private final l:Lb/a/a/l;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lb/a/a/c;->a:Ljava/util/concurrent/ExecutorService;

    .line 44
    const-string v0, "Event"

    sput-object v0, Lb/a/a/c;->b:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/a/c;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lb/a/a/c$1;

    invoke-direct {v0, p0}, Lb/a/a/c$1;-><init>(Lb/a/a/c;)V

    iput-object v0, p0, Lb/a/a/c;->h:Ljava/lang/ThreadLocal;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/c;->e:Ljava/util/Map;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/c;->f:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/c;->g:Ljava/util/Map;

    .line 111
    new-instance v0, Lb/a/a/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/a/a/f;-><init>(Lb/a/a/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lb/a/a/c;->i:Lb/a/a/f;

    .line 112
    new-instance v0, Lb/a/a/b;

    invoke-direct {v0, p0}, Lb/a/a/b;-><init>(Lb/a/a/c;)V

    iput-object v0, p0, Lb/a/a/c;->j:Lb/a/a/b;

    .line 113
    new-instance v0, Lb/a/a/a;

    invoke-direct {v0, p0}, Lb/a/a/a;-><init>(Lb/a/a/c;)V

    iput-object v0, p0, Lb/a/a/c;->k:Lb/a/a/a;

    .line 114
    new-instance v0, Lb/a/a/l;

    invoke-direct {v0}, Lb/a/a/l;-><init>()V

    iput-object v0, p0, Lb/a/a/c;->l:Lb/a/a/l;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/c;->n:Z

    .line 116
    return-void
.end method

.method public static a()Lb/a/a/c;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lb/a/a/c;->c:Lb/a/a/c;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Lb/a/a/c;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lb/a/a/c;->c:Lb/a/a/c;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lb/a/a/c;

    invoke-direct {v0}, Lb/a/a/c;-><init>()V

    sput-object v0, Lb/a/a/c;->c:Lb/a/a/c;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Lb/a/a/c;->c:Lb/a/a/c;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 526
    sget-object v2, Lb/a/a/c;->d:Ljava/util/Map;

    monitor-enter v2

    .line 527
    :try_start_0
    sget-object v0, Lb/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 528
    if-nez v0, :cond_0

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    .line 531
    :goto_0
    if-nez v1, :cond_1

    .line 536
    sget-object v1, Lb/a/a/c;->d:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_0
    monitor-exit v2

    return-object v0

    .line 532
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lb/a/a/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 534
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lb/a/a/m;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 569
    :try_start_0
    iget-object v0, p1, Lb/a/a/m;->b:Lb/a/a/k;

    iget-object v0, v0, Lb/a/a/k;->a:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lb/a/a/m;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 586
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 572
    instance-of v1, p2, Lb/a/a/j;

    if-eqz v1, :cond_0

    .line 574
    sget-object v1, Lb/a/a/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SubscriberExceptionEvent subscriber "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lb/a/a/m;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string v3, " threw an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    check-cast p2, Lb/a/a/j;

    .line 577
    sget-object v0, Lb/a/a/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initial event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lb/a/a/j;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caused exception in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 578
    iget-object v2, p2, Lb/a/a/j;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lb/a/a/j;->b:Ljava/lang/Throwable;

    .line 577
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 580
    :cond_0
    iget-boolean v1, p0, Lb/a/a/c;->n:Z

    if-eqz v1, :cond_1

    .line 581
    sget-object v1, Lb/a/a/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not dispatch event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to subscribing class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 582
    iget-object v3, p1, Lb/a/a/m;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 581
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    :cond_1
    new-instance v1, Lb/a/a/j;

    .line 585
    iget-object v2, p1, Lb/a/a/m;->a:Ljava/lang/Object;

    .line 584
    invoke-direct {v1, p0, v0, p2, v2}, Lb/a/a/j;-><init>(Lb/a/a/c;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    invoke-virtual {p0, v1}, Lb/a/a/c;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 588
    :catch_1
    move-exception v0

    .line 589
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 544
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 550
    return-void

    .line 544
    :cond_0
    aget-object v2, p1, v0

    .line 545
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 546
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lb/a/a/c;->a(Ljava/util/List;[Ljava/lang/Class;)V

    .line 544
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static synthetic b()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lb/a/a/c;->o:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lb/a/a/n;->values()[Lb/a/a/n;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lb/a/a/n;->d:Lb/a/a/n;

    invoke-virtual {v1}, Lb/a/a/n;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lb/a/a/n;->c:Lb/a/a/n;

    invoke-virtual {v1}, Lb/a/a/n;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lb/a/a/n;->b:Lb/a/a/n;

    invoke-virtual {v1}, Lb/a/a/n;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lb/a/a/n;->a:Lb/a/a/n;

    invoke-virtual {v1}, Lb/a/a/n;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lb/a/a/c;->o:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method final a(Lb/a/a/h;)V
    .locals 3

    .prologue
    .line 559
    iget-object v0, p1, Lb/a/a/h;->a:Ljava/lang/Object;

    .line 560
    iget-object v1, p1, Lb/a/a/h;->b:Lb/a/a/m;

    .line 561
    invoke-static {p1}, Lb/a/a/h;->a(Lb/a/a/h;)V

    .line 562
    iget-boolean v2, v1, Lb/a/a/m;->d:Z

    if-eqz v2, :cond_0

    .line 563
    invoke-direct {p0, v1, v0}, Lb/a/a/c;->a(Lb/a/a/m;Ljava/lang/Object;)V

    .line 565
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 339
    if-eqz v0, :cond_2

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lb/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_0
    monitor-exit p0

    return-void

    .line 340
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1321
    iget-object v1, p0, Lb/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1322
    if-eqz v0, :cond_0

    .line 1323
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v4

    .line 1324
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1325
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/m;

    .line 1326
    iget-object v6, v1, Lb/a/a/m;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_3

    .line 1327
    const/4 v6, 0x0

    iput-boolean v6, v1, Lb/a/a/m;->d:Z

    .line 1328
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1329
    add-int/lit8 v1, v2, -0x1

    .line 1330
    add-int/lit8 v2, v3, -0x1

    .line 1324
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 345
    :cond_2
    sget-object v0, Lb/a/a/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscriber to unregister was not registered before: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v1, v2

    move v2, v3

    goto :goto_2
.end method

.method public final declared-synchronized a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Lb/a/a/l;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 188
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 191
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lb/a/a/k;

    move-object v2, v0

    .line 1246
    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/a/c;->m:Z

    .line 1247
    iget-object v5, v2, Lb/a/a/k;->c:Ljava/lang/Class;

    .line 1248
    iget-object v1, p0, Lb/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1249
    new-instance v6, Lb/a/a/m;

    invoke-direct {v6, p1, v2}, Lb/a/a/m;-><init>(Ljava/lang/Object;Lb/a/a/k;)V

    .line 1250
    if-nez v1, :cond_2

    .line 1251
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 1252
    iget-object v2, p0, Lb/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 1265
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    .line 1266
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-le v2, v7, :cond_5

    .line 1273
    :goto_3
    iget-object v1, p0, Lb/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1274
    if-nez v1, :cond_1

    .line 1275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    iget-object v2, p0, Lb/a/a/c;->f:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1254
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v3, v1

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/m;

    .line 1255
    invoke-virtual {v2, v6}, Lb/a/a/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1256
    new-instance v1, Lb/a/a/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscriber "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered to event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1257
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1256
    invoke-direct {v1, v2}, Lb/a/a/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1267
    :cond_5
    if-eq v2, v7, :cond_6

    iget v8, v6, Lb/a/a/m;->c:I

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/m;

    iget v1, v1, Lb/a/a/m;->c:I

    if-le v8, v1, :cond_7

    .line 1268
    :cond_6
    invoke-virtual {v3, v2, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1266
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 351
    iget-object v0, p0, Lb/a/a/c;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/d;

    .line 352
    iget-object v6, v0, Lb/a/a/d;->a:Ljava/util/List;

    .line 353
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iget-boolean v1, v0, Lb/a/a/d;->b:Z

    if-eqz v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lb/a/a/d;->c:Z

    .line 359
    iput-boolean v2, v0, Lb/a/a/d;->b:Z

    .line 360
    iget-boolean v1, v0, Lb/a/a/d;->f:Z

    if-eqz v1, :cond_3

    .line 361
    new-instance v0, Lb/a/a/e;

    const-string v1, "Internal error. Abort state was not reset"

    invoke-direct {v0, v1}, Lb/a/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v3

    .line 358
    goto :goto_1

    .line 365
    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 1459
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1460
    invoke-static {v8}, Lb/a/a/c;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 1462
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v5, v3

    move v4, v3

    .line 1463
    :goto_2
    if-lt v5, v10, :cond_4

    .line 1489
    if-nez v4, :cond_3

    .line 1490
    sget-object v1, Lb/a/a/c;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No subscribers registered for event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const-class v1, Lb/a/a/g;

    if-eq v8, v1, :cond_3

    const-class v1, Lb/a/a/j;

    if-eq v8, v1, :cond_3

    .line 1492
    new-instance v1, Lb/a/a/g;

    invoke-direct {v1, p0, v7}, Lb/a/a/g;-><init>(Lb/a/a/c;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lb/a/a/c;->b(Ljava/lang/Object;)V

    .line 364
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    iput-boolean v3, v0, Lb/a/a/d;->b:Z

    .line 369
    iput-boolean v3, v0, Lb/a/a/d;->c:Z

    goto :goto_0

    .line 1464
    :cond_4
    :try_start_1
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1466
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1467
    :try_start_2
    iget-object v11, p0, Lb/a/a/c;->e:Ljava/util/Map;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1466
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1469
    if-eqz v1, :cond_b

    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 1470
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move v1, v2

    .line 1463
    :goto_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v1

    goto :goto_2

    .line 1466
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 367
    :catchall_1
    move-exception v1

    .line 368
    iput-boolean v3, v0, Lb/a/a/d;->b:Z

    .line 369
    iput-boolean v3, v0, Lb/a/a/d;->c:Z

    .line 370
    throw v1

    .line 1470
    :cond_6
    :try_start_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/m;

    .line 1471
    iput-object v7, v0, Lb/a/a/d;->e:Ljava/lang/Object;

    .line 1472
    iput-object v1, v0, Lb/a/a/d;->d:Lb/a/a/m;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1475
    :try_start_7
    iget-boolean v11, v0, Lb/a/a/d;->c:Z

    .line 1498
    invoke-static {}, Lb/a/a/c;->b()[I

    move-result-object v12

    iget-object v13, v1, Lb/a/a/m;->b:Lb/a/a/k;

    iget-object v13, v13, Lb/a/a/k;->b:Lb/a/a/n;

    invoke-virtual {v13}, Lb/a/a/n;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1520
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown thread mode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lb/a/a/m;->b:Lb/a/a/k;

    iget-object v1, v1, Lb/a/a/k;->b:Lb/a/a/n;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1477
    :catchall_2
    move-exception v1

    .line 1478
    const/4 v2, 0x0

    :try_start_8
    iput-object v2, v0, Lb/a/a/d;->e:Ljava/lang/Object;

    .line 1479
    const/4 v2, 0x0

    iput-object v2, v0, Lb/a/a/d;->d:Lb/a/a/m;

    .line 1480
    const/4 v2, 0x0

    iput-boolean v2, v0, Lb/a/a/d;->f:Z

    .line 1481
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1500
    :pswitch_0
    :try_start_9
    invoke-direct {p0, v1, v7}, Lb/a/a/c;->a(Lb/a/a/m;Ljava/lang/Object;)V

    .line 1476
    :goto_5
    iget-boolean v1, v0, Lb/a/a/d;->f:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1478
    const/4 v11, 0x0

    :try_start_a
    iput-object v11, v0, Lb/a/a/d;->e:Ljava/lang/Object;

    .line 1479
    const/4 v11, 0x0

    iput-object v11, v0, Lb/a/a/d;->d:Lb/a/a/m;

    .line 1480
    const/4 v11, 0x0

    iput-boolean v11, v0, Lb/a/a/d;->f:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1482
    if-nez v1, :cond_5

    goto :goto_3

    .line 1503
    :pswitch_1
    if-eqz v11, :cond_7

    .line 1504
    :try_start_b
    invoke-direct {p0, v1, v7}, Lb/a/a/c;->a(Lb/a/a/m;Ljava/lang/Object;)V

    goto :goto_5

    .line 1506
    :cond_7
    iget-object v11, p0, Lb/a/a/c;->i:Lb/a/a/f;

    .line 2038
    invoke-static {v1, v7}, Lb/a/a/h;->a(Lb/a/a/m;Ljava/lang/Object;)Lb/a/a/h;

    move-result-object v1

    .line 2039
    monitor-enter v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2040
    :try_start_c
    iget-object v12, v11, Lb/a/a/f;->a:Lb/a/a/i;

    invoke-virtual {v12, v1}, Lb/a/a/i;->a(Lb/a/a/h;)V

    .line 2041
    iget-boolean v1, v11, Lb/a/a/f;->b:Z

    if-nez v1, :cond_8

    .line 2042
    const/4 v1, 0x1

    iput-boolean v1, v11, Lb/a/a/f;->b:Z

    .line 2043
    invoke-virtual {v11}, Lb/a/a/f;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v11, v1}, Lb/a/a/f;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2044
    new-instance v1, Lb/a/a/e;

    const-string v2, "Could not send handler message"

    invoke-direct {v1, v2}, Lb/a/a/e;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2039
    :catchall_3
    move-exception v1

    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_8
    :try_start_e
    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_5

    .line 1510
    :pswitch_2
    if-eqz v11, :cond_a

    .line 1511
    :try_start_f
    iget-object v11, p0, Lb/a/a/c;->j:Lb/a/a/b;

    .line 3038
    invoke-static {v1, v7}, Lb/a/a/h;->a(Lb/a/a/m;Ljava/lang/Object;)Lb/a/a/h;

    move-result-object v1

    .line 3039
    monitor-enter v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 3040
    :try_start_10
    iget-object v12, v11, Lb/a/a/b;->a:Lb/a/a/i;

    invoke-virtual {v12, v1}, Lb/a/a/i;->a(Lb/a/a/h;)V

    .line 3041
    iget-boolean v1, v11, Lb/a/a/b;->b:Z

    if-nez v1, :cond_9

    .line 3042
    const/4 v1, 0x1

    iput-boolean v1, v11, Lb/a/a/b;->b:Z

    .line 3043
    sget-object v1, Lb/a/a/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3039
    :cond_9
    monitor-exit v11

    goto :goto_5

    :catchall_4
    move-exception v1

    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v1

    .line 1513
    :cond_a
    invoke-direct {p0, v1, v7}, Lb/a/a/c;->a(Lb/a/a/m;Ljava/lang/Object;)V

    goto :goto_5

    .line 1517
    :pswitch_3
    iget-object v11, p0, Lb/a/a/c;->k:Lb/a/a/a;

    .line 4036
    invoke-static {v1, v7}, Lb/a/a/h;->a(Lb/a/a/m;Ljava/lang/Object;)Lb/a/a/h;

    move-result-object v1

    .line 4037
    iget-object v12, v11, Lb/a/a/a;->a:Lb/a/a/i;

    invoke-virtual {v12, v1}, Lb/a/a/i;->a(Lb/a/a/h;)V

    .line 4038
    sget-object v1, Lb/a/a/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_5

    :cond_b
    move v1, v4

    goto/16 :goto_4

    .line 1498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
