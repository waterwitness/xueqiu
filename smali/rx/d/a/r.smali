.class final Lrx/d/a/r;
.super Lrx/i;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i",
        "<",
        "Lrx/a",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lrx/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Lrx/d/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/q",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:I

.field f:Lrx/d/c/f;

.field g:I

.field final h:Lrx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/f",
            "<",
            "Lrx/d/a/p",
            "<TT;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private final j:Z

.field private k:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile l:Lrx/d/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c/i",
            "<",
            "Lrx/d/a/p",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Z


# direct methods
.method public constructor <init>(Lrx/i;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1}, Lrx/i;-><init>(Lrx/i;)V

    .line 94
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/r;->a:Lrx/d/a/a;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    .line 107
    iput v1, p0, Lrx/d/a/r;->m:I

    .line 108
    iput-boolean v1, p0, Lrx/d/a/r;->n:Z

    .line 335
    iput v1, p0, Lrx/d/a/r;->g:I

    .line 380
    new-instance v0, Lrx/d/a/r$1;

    invoke-direct {v0, p0}, Lrx/d/a/r$1;-><init>(Lrx/d/a/r;)V

    iput-object v0, p0, Lrx/d/a/r;->h:Lrx/c/f;

    .line 127
    iput-object p1, p0, Lrx/d/a/r;->b:Lrx/i;

    .line 128
    new-instance v0, Lrx/d/a/q;

    invoke-direct {v0, p0}, Lrx/d/a/q;-><init>(Lrx/d/a/r;)V

    iput-object v0, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    .line 129
    iput-boolean p2, p0, Lrx/d/a/r;->j:Z

    .line 131
    invoke-virtual {p1, p0}, Lrx/i;->a(Lrx/j;)V

    .line 132
    iget-object v0, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    invoke-virtual {p1, v0}, Lrx/i;->a(Lrx/f;)V

    .line 133
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lrx/d/c/f;->d()Lrx/d/c/f;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    .line 286
    iget-object v0, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    invoke-virtual {p0, v0}, Lrx/d/a/r;->a(Lrx/j;)V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 435
    const/4 v0, 0x0

    .line 436
    monitor-enter p0

    .line 437
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lrx/d/a/r;->i:Z

    .line 438
    iget v2, p0, Lrx/d/a/r;->d:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    invoke-virtual {v2}, Lrx/d/c/f;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 441
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {p0}, Lrx/d/a/r;->h()V

    .line 446
    :cond_2
    return-void

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, 0x1

    .line 93
    check-cast p1, Lrx/a;

    .line 5147
    instance-of v2, p1, Lrx/d/c/h;

    if-eqz v2, :cond_7

    .line 5148
    check-cast p1, Lrx/d/c/h;

    .line 5213
    iget-object v2, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    invoke-static {v2}, Lrx/d/a/q;->a(Lrx/d/a/q;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 6050
    iget-object v0, p1, Lrx/d/c/h;->b:Ljava/lang/Object;

    .line 5222
    invoke-virtual {p0}, Lrx/d/a/r;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5225
    :try_start_0
    iget-object v1, p0, Lrx/d/a/r;->b:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5227
    invoke-virtual {p0}, Lrx/d/a/r;->e()Z

    move-result v0

    .line 5229
    if-eqz v0, :cond_0

    .line 5230
    invoke-virtual {p0}, Lrx/d/a/r;->g()Z

    .line 5232
    :cond_0
    invoke-virtual {p0, v6, v7}, Lrx/d/a/r;->a(J)V

    .line 6280
    :cond_1
    :goto_0
    return-void

    .line 5227
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/d/a/r;->e()Z

    throw v0

    .line 5235
    :cond_2
    invoke-direct {p0}, Lrx/d/a/r;->i()V

    .line 5237
    :try_start_1
    iget-object v1, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    invoke-virtual {v1, v0}, Lrx/d/c/f;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lrx/b/g; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5238
    :catch_0
    move-exception v0

    .line 5239
    invoke-virtual {p0, v0}, Lrx/d/a/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6246
    :cond_3
    invoke-virtual {p0}, Lrx/d/a/r;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6251
    :try_start_2
    iget-object v2, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    invoke-static {v2}, Lrx/d/a/q;->a(Lrx/d/a/q;)J

    move-result-wide v2

    .line 6252
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 6254
    iget-object v1, p0, Lrx/d/a/r;->b:Lrx/i;

    .line 7050
    iget-object v2, p1, Lrx/d/c/h;->b:Ljava/lang/Object;

    .line 6254
    invoke-virtual {v1, v2}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 6255
    sget-object v1, Lrx/d/a/q;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v2, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v1, v0

    .line 6260
    :goto_1
    invoke-virtual {p0}, Lrx/d/a/r;->e()Z

    move-result v2

    .line 6262
    if-eqz v2, :cond_4

    .line 6263
    invoke-virtual {p0}, Lrx/d/a/r;->g()Z

    .line 6265
    :cond_4
    if-eqz v1, :cond_5

    .line 6266
    invoke-virtual {p0, v6, v7}, Lrx/d/a/r;->a(J)V

    .line 6268
    :cond_5
    if-nez v0, :cond_1

    .line 6275
    :cond_6
    invoke-direct {p0}, Lrx/d/a/r;->i()V

    .line 6277
    :try_start_3
    iget-object v0, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    .line 8050
    iget-object v1, p1, Lrx/d/c/h;->b:Ljava/lang/Object;

    .line 6277
    invoke-virtual {v0, v1}, Lrx/d/c/f;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Lrx/b/g; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 6278
    :catch_1
    move-exception v0

    .line 6279
    invoke-virtual {p0, v0}, Lrx/d/a/r;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6260
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lrx/d/a/r;->e()Z

    throw v0

    .line 5151
    :cond_7
    if-eqz p1, :cond_1

    .line 8076
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 5151
    if-nez v0, :cond_1

    .line 5154
    monitor-enter p0

    .line 5156
    :try_start_4
    iget v0, p0, Lrx/d/a/r;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/d/a/r;->d:I

    .line 5157
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 8163
    iget-object v0, p0, Lrx/d/a/r;->l:Lrx/d/c/i;

    if-nez v0, :cond_8

    .line 8165
    new-instance v0, Lrx/d/c/i;

    invoke-direct {v0}, Lrx/d/c/i;-><init>()V

    iput-object v0, p0, Lrx/d/a/r;->l:Lrx/d/c/i;

    .line 8166
    iget-object v0, p0, Lrx/d/a/r;->l:Lrx/d/c/i;

    invoke-virtual {p0, v0}, Lrx/d/a/r;->a(Lrx/j;)V

    .line 8168
    :cond_8
    const/4 v0, 0x0

    .line 8170
    iget-object v1, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    invoke-static {v1}, Lrx/d/a/q;->a(Lrx/d/a/q;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 8184
    iget-object v0, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    .line 8186
    :cond_9
    new-instance v1, Lrx/d/a/p;

    invoke-direct {v1, p0, v0}, Lrx/d/a/p;-><init>(Lrx/d/a/r;Lrx/d/a/q;)V

    .line 8187
    iget-object v0, p0, Lrx/d/a/r;->l:Lrx/d/c/i;

    invoke-virtual {v0, v1}, Lrx/d/c/i;->a(Lrx/j;)I

    move-result v0

    iput v0, v1, Lrx/d/a/p;->a:I

    .line 8188
    invoke-virtual {p1, v1}, Lrx/a;->a(Lrx/i;)Lrx/j;

    .line 9076
    iget-object v0, p0, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 8189
    if-nez v0, :cond_1

    .line 8190
    invoke-virtual {p0, v6, v7}, Lrx/d/a/r;->a(J)V

    goto/16 :goto_0

    .line 5157
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 402
    iget-boolean v0, p0, Lrx/d/a/r;->i:Z

    if-nez v0, :cond_0

    .line 403
    iput-boolean v1, p0, Lrx/d/a/r;->i:Z

    .line 404
    invoke-virtual {p0, p1, v1}, Lrx/d/a/r;->a(Ljava/lang/Throwable;Z)V

    .line 406
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/Throwable;Z)V
    .locals 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lrx/d/a/r;->j:Z

    if-eqz v0, :cond_6

    .line 410
    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lrx/d/a/r;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lrx/d/a/r;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 414
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v0, p0, Lrx/d/a/r;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 416
    const/4 v0, 0x0

    .line 417
    monitor-enter p0

    .line 418
    if-nez p2, :cond_1

    .line 419
    :try_start_1
    iget v1, p0, Lrx/d/a/r;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/d/a/r;->d:I

    .line 421
    :cond_1
    iget v1, p0, Lrx/d/a/r;->d:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lrx/d/a/r;->i:Z

    if-nez v1, :cond_3

    :cond_2
    iget v1, p0, Lrx/d/a/r;->d:I

    if-gez v1, :cond_4

    .line 422
    :cond_3
    const/4 v0, 0x1

    .line 424
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    if-eqz v0, :cond_5

    .line 426
    invoke-virtual {p0}, Lrx/d/a/r;->h()V

    .line 431
    :cond_5
    :goto_0
    return-void

    .line 414
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 424
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 429
    :cond_6
    iget-object v0, p0, Lrx/d/a/r;->b:Lrx/i;

    invoke-virtual {v0, p1}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final a(Lrx/d/a/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a/p",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 449
    const/4 v1, 0x0

    .line 450
    monitor-enter p0

    .line 451
    :try_start_0
    iget v2, p0, Lrx/d/a/r;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lrx/d/a/r;->d:I

    .line 452
    iget v2, p0, Lrx/d/a/r;->d:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lrx/d/a/r;->i:Z

    if-eqz v2, :cond_0

    move v1, v0

    .line 455
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    iget-object v2, p0, Lrx/d/a/r;->l:Lrx/d/c/i;

    iget v3, p1, Lrx/d/a/p;->a:I

    .line 3081
    iget v4, v2, Lrx/d/c/i;->b:I

    if-eq v4, v0, :cond_1

    iget-object v0, v2, Lrx/d/c/i;->a:Lrx/d/c/a;

    if-eqz v0, :cond_1

    if-gez v3, :cond_3

    .line 457
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 458
    invoke-virtual {p0}, Lrx/d/a/r;->h()V

    .line 460
    :cond_2
    return-void

    .line 455
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3084
    :cond_3
    iget-object v2, v2, Lrx/d/c/i;->a:Lrx/d/c/a;

    .line 3316
    sget v0, Lrx/d/c/a;->e:I

    if-ge v3, v0, :cond_4

    .line 3318
    iget-object v0, v2, Lrx/d/c/a;->a:Lrx/d/c/b;

    .line 3484
    iget-object v0, v0, Lrx/d/c/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3318
    invoke-virtual {v0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3323
    :goto_1
    invoke-virtual {v2, v3}, Lrx/d/c/a;->b(I)V

    .line 3084
    check-cast v0, Lrx/j;

    .line 3085
    if-eqz v0, :cond_1

    .line 3087
    if-eqz v0, :cond_1

    .line 3088
    invoke-interface {v0}, Lrx/j;->b()V

    goto :goto_0

    .line 3320
    :cond_4
    sget v0, Lrx/d/c/a;->e:I

    rem-int v0, v3, v0

    .line 3321
    invoke-virtual {v2, v3}, Lrx/d/c/a;->a(I)Lrx/d/c/b;

    move-result-object v4

    .line 4484
    iget-object v4, v4, Lrx/d/c/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3321
    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 139
    sget v0, Lrx/d/c/f;->e:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/d/a/r;->a(J)V

    .line 140
    return-void
.end method

.method final declared-synchronized e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 291
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lrx/d/a/r;->n:Z

    .line 292
    iget v1, p0, Lrx/d/a/r;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 295
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized f()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lrx/d/a/r;->n:Z

    if-eqz v2, :cond_0

    .line 301
    iget v1, p0, Lrx/d/a/r;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/d/a/r;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_0
    monitor-exit p0

    return v0

    .line 304
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lrx/d/a/r;->n:Z

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lrx/d/a/r;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 306
    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final g()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lrx/d/a/r;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1350
    :try_start_0
    iget-object v0, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    if-eqz v0, :cond_7

    .line 1351
    iget-object v0, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    invoke-static {v0}, Lrx/d/a/q;->a(Lrx/d/a/q;)J

    move-result-wide v4

    .line 1353
    cmp-long v0, v4, v8

    if-gez v0, :cond_1

    move v0, v1

    .line 1356
    :goto_0
    iget-object v2, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    invoke-virtual {v2}, Lrx/d/c/f;->g()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1357
    iget-object v3, p0, Lrx/d/a/r;->b:Lrx/i;

    invoke-static {v3, v2}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    .line 1358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1360
    :cond_1
    cmp-long v0, v4, v8

    if-lez v0, :cond_8

    move v2, v1

    move v0, v1

    .line 1363
    :goto_1
    int-to-long v6, v2

    cmp-long v3, v6, v4

    if-gez v3, :cond_2

    .line 1364
    iget-object v3, p0, Lrx/d/a/r;->f:Lrx/d/c/f;

    invoke-virtual {v3}, Lrx/d/c/f;->g()Ljava/lang/Object;

    move-result-object v3

    .line 1365
    if-eqz v3, :cond_2

    .line 1368
    iget-object v6, p0, Lrx/d/a/r;->b:Lrx/i;

    invoke-static {v6, v3}, Lrx/d/a/a;->a(Lrx/e;Ljava/lang/Object;)Z

    .line 1369
    add-int/lit8 v3, v0, 0x1

    .line 1363
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 1373
    :cond_2
    sget-object v2, Lrx/d/a/q;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v3, p0, Lrx/d/a/r;->c:Lrx/d/a/q;

    neg-int v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    .line 2341
    :cond_3
    :goto_2
    iget-object v2, p0, Lrx/d/a/r;->l:Lrx/d/c/i;

    if-eqz v2, :cond_4

    .line 2342
    iget-object v2, p0, Lrx/d/a/r;->l:Lrx/d/c/i;

    iget-object v3, p0, Lrx/d/a/r;->h:Lrx/c/f;

    iget v4, p0, Lrx/d/a/r;->g:I

    invoke-virtual {v2, v3, v4}, Lrx/d/c/i;->a(Lrx/c/f;I)I

    move-result v2

    iput v2, p0, Lrx/d/a/r;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_4
    invoke-virtual {p0}, Lrx/d/a/r;->e()Z

    move-result v2

    .line 322
    if-lez v0, :cond_5

    .line 323
    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lrx/d/a/r;->a(J)V

    .line 325
    :cond_5
    if-nez v2, :cond_0

    .line 326
    const/4 v1, 0x1

    .line 330
    :cond_6
    return v1

    :cond_7
    move v0, v1

    .line 1377
    goto :goto_2

    .line 319
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lrx/d/a/r;->e()Z

    throw v0

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method final h()V
    .locals 4

    .prologue
    .line 463
    invoke-virtual {p0}, Lrx/d/a/r;->g()Z

    .line 464
    iget-boolean v0, p0, Lrx/d/a/r;->j:Z

    if-eqz v0, :cond_2

    .line 466
    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p0, Lrx/d/a/r;->k:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 468
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    if-eqz v0, :cond_1

    .line 470
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 472
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 473
    iget-object v1, p0, Lrx/d/a/r;->b:Lrx/i;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 483
    :goto_0
    return-void

    .line 468
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 475
    :cond_0
    iget-object v1, p0, Lrx/d/a/r;->b:Lrx/i;

    new-instance v2, Lrx/b/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lrx/b/a;-><init>(Ljava/util/Collection;B)V

    invoke-virtual {v1, v2}, Lrx/i;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 478
    :cond_1
    iget-object v0, p0, Lrx/d/a/r;->b:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lrx/d/a/r;->b:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    goto :goto_0
.end method
