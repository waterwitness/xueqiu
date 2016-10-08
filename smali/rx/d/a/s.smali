.class public final Lrx/d/a/s;
.super Lrx/e/a;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e/a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final b:Lrx/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/a",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;

.field final d:Lrx/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/e",
            "<+",
            "Lrx/i/l",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field e:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/i/l",
            "<-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/i",
            "<-TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/a;Lrx/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/i/l",
            "<-TT;+TR;>;>;",
            "Ljava/util/List",
            "<",
            "Lrx/i",
            "<-TR;>;>;",
            "Lrx/a",
            "<+TT;>;",
            "Lrx/c/e",
            "<+",
            "Lrx/i/l",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lrx/d/a/s$1;

    invoke-direct {v0, p1, p2, p3}, Lrx/d/a/s$1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lrx/e/a;-><init>(Lrx/b;)V

    .line 69
    iput-object p1, p0, Lrx/d/a/s;->c:Ljava/lang/Object;

    .line 70
    iput-object p2, p0, Lrx/d/a/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    iput-object p3, p0, Lrx/d/a/s;->g:Ljava/util/List;

    .line 72
    iput-object p4, p0, Lrx/d/a/s;->b:Lrx/a;

    .line 73
    iput-object p5, p0, Lrx/d/a/s;->d:Lrx/c/e;

    .line 74
    return-void
.end method

.method public constructor <init>(Lrx/a;Lrx/c/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/a",
            "<+TT;>;",
            "Lrx/c/e",
            "<+",
            "Lrx/i/l",
            "<-TT;+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/d/a/s;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/a;Lrx/c/e;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lrx/d/a/s;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lrx/d/a/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public final d(Lrx/c/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b",
            "<-",
            "Lrx/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v2, p0, Lrx/d/a/s;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    iget-object v0, p0, Lrx/d/a/s;->e:Lrx/i;

    if-eqz v0, :cond_1

    .line 86
    monitor-exit v2

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lrx/d/a/s;->d:Lrx/c/e;

    invoke-interface {v0}, Lrx/c/e;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/l;

    .line 93
    new-instance v1, Lrx/d/a/s$2;

    invoke-direct {v1, p0, v0}, Lrx/d/a/s$2;-><init>(Lrx/d/a/s;Lrx/i/l;)V

    iput-object v1, p0, Lrx/d/a/s;->e:Lrx/i;

    .line 111
    iget-object v1, p0, Lrx/d/a/s;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/i;

    .line 112
    invoke-virtual {v0, v1}, Lrx/i/l;->a(Lrx/i;)Lrx/j;

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 115
    :cond_2
    :try_start_1
    iget-object v1, p0, Lrx/d/a/s;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 117
    iget-object v1, p0, Lrx/d/a/s;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 119
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    new-instance v0, Lrx/d/a/s$3;

    invoke-direct {v0, p0}, Lrx/d/a/s$3;-><init>(Lrx/d/a/s;)V

    invoke-static {v0}, Lrx/j/g;->a(Lrx/c/a;)Lrx/j;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lrx/d/a/s;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_2
    iget-object v0, p0, Lrx/d/a/s;->e:Lrx/i;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 144
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lrx/d/a/s;->b:Lrx/a;

    iget-object v1, p0, Lrx/d/a/s;->e:Lrx/i;

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/i;)Lrx/j;

    goto :goto_0

    .line 143
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 144
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
