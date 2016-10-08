.class public final Lrx/d/c/a;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"

# interfaces
.implements Lrx/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/j;"
    }
.end annotation


# static fields
.field static d:I

.field public static final e:I

.field private static final f:Lrx/d/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c/d",
            "<",
            "Lrx/d/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lrx/d/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/c/b",
            "<TE;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Lrx/d/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    new-instance v0, Lrx/d/c/a$1;

    invoke-direct {v0}, Lrx/d/c/a$1;-><init>()V

    sput-object v0, Lrx/d/c/a;->f:Lrx/d/c/d;

    .line 240
    const/16 v0, 0x100

    sput v0, Lrx/d/c/a;->d:I

    .line 243
    invoke-static {}, Lrx/d/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const/16 v0, 0x8

    sput v0, Lrx/d/c/a;->d:I

    .line 248
    :cond_0
    const-string v0, "rx.indexed-ring-buffer.size"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_1

    .line 251
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lrx/d/c/a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_1
    :goto_0
    sget v0, Lrx/d/c/a;->d:I

    sput v0, Lrx/d/c/a;->e:I

    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to set \'rx.indexed-ring-buffer.size\' with value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lrx/d/c/b;

    invoke-direct {v0, v1}, Lrx/d/c/b;-><init>(B)V

    iput-object v0, p0, Lrx/d/c/a;->a:Lrx/d/c/b;

    .line 65
    new-instance v0, Lrx/d/c/c;

    invoke-direct {v0, v1}, Lrx/d/c/c;-><init>(B)V

    iput-object v0, p0, Lrx/d/c/a;->g:Lrx/d/c/c;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/d/c/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 293
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lrx/d/c/a;-><init>()V

    return-void
.end method

.method private a(Lrx/c/f;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/f",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 452
    iget-object v0, p0, Lrx/d/c/a;->a:Lrx/d/c/b;

    .line 454
    sget v1, Lrx/d/c/a;->e:I

    if-lt p2, v1, :cond_5

    .line 456
    invoke-virtual {p0, p2}, Lrx/d/c/a;->a(I)Lrx/d/c/b;

    move-result-object v0

    .line 457
    sget v1, Lrx/d/c/a;->e:I

    rem-int v1, p2, v1

    move-object v3, v0

    move v0, v1

    move v1, p2

    .line 460
    :goto_0
    if-eqz v3, :cond_4

    move v2, v1

    move v1, v0

    .line 461
    :goto_1
    sget v0, Lrx/d/c/a;->e:I

    if-ge v1, v0, :cond_3

    .line 462
    if-ge v2, v4, :cond_0

    if-lt v2, p3, :cond_1

    .line 481
    :cond_0
    :goto_2
    return v2

    .line 4484
    :cond_1
    iget-object v0, v3, Lrx/d/c/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 466
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_2

    .line 471
    invoke-interface {p1, v0}, Lrx/c/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 472
    if-eqz v0, :cond_0

    .line 461
    :cond_2
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 5484
    :cond_3
    iget-object v0, v3, Lrx/d/c/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 476
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d/c/b;

    .line 477
    const/4 p2, 0x0

    move-object v3, v0

    move v1, v2

    move v0, p2

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move-object v3, v0

    move v1, p2

    move v0, p2

    goto :goto_0
.end method

.method public static final a()Lrx/d/c/a;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lrx/d/c/a;->f:Lrx/d/c/d;

    invoke-virtual {v0}, Lrx/d/c/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d/c/a;

    return-object v0
.end method

.method private c(I)Lrx/d/c/c;
    .locals 6

    .prologue
    .line 329
    sget v0, Lrx/d/c/a;->e:I

    if-ge p1, v0, :cond_0

    .line 330
    iget-object v0, p0, Lrx/d/c/a;->g:Lrx/d/c/c;

    .line 339
    :goto_0
    return-object v0

    .line 334
    :cond_0
    sget v0, Lrx/d/c/a;->e:I

    div-int v3, p1, v0

    .line 335
    iget-object v1, p0, Lrx/d/c/a;->g:Lrx/d/c/c;

    .line 336
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 2519
    iget-object v0, v1, Lrx/d/c/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2522
    new-instance v0, Lrx/d/c/c;

    invoke-direct {v0}, Lrx/d/c/c;-><init>()V

    .line 2523
    iget-object v4, v1, Lrx/d/c/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 2528
    :cond_1
    iget-object v0, v1, Lrx/d/c/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d/c/c;

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 339
    goto :goto_0
.end method

.method private declared-synchronized e()I
    .locals 3

    .prologue
    .line 393
    monitor-enter p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/d/c/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 394
    if-lez v0, :cond_1

    .line 396
    iget-object v1, p0, Lrx/d/c/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    add-int/lit8 v0, v0, -0x1

    .line 401
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lrx/c/f;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/f",
            "<-TE;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 437
    iget-object v1, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lrx/d/c/a;->a(Lrx/c/f;II)I

    move-result v1

    .line 438
    if-lez p2, :cond_1

    iget-object v2, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 440
    invoke-direct {p0, p1, v0, p2}, Lrx/d/c/a;->a(Lrx/c/f;II)I

    move-result v0

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 441
    :cond_1
    iget-object v2, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final a(I)Lrx/d/c/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/d/c/b",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 344
    sget v0, Lrx/d/c/a;->e:I

    if-ge p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lrx/d/c/a;->a:Lrx/d/c/b;

    .line 354
    :goto_0
    return-object v0

    .line 349
    :cond_0
    sget v0, Lrx/d/c/a;->e:I

    div-int v3, p1, v0

    .line 350
    iget-object v1, p0, Lrx/d/c/a;->a:Lrx/d/c/b;

    .line 351
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 3489
    iget-object v0, v1, Lrx/d/c/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3492
    new-instance v0, Lrx/d/c/b;

    invoke-direct {v0}, Lrx/d/c/b;-><init>()V

    .line 3493
    iget-object v4, v1, Lrx/d/c/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 3498
    :cond_1
    iget-object v0, v1, Lrx/d/c/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d/c/b;

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 354
    goto :goto_0
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 289
    .line 1266
    iget-object v0, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 1268
    iget-object v0, p0, Lrx/d/c/a;->a:Lrx/d/c/b;

    move-object v3, v0

    move v0, v1

    .line 1269
    :goto_0
    if-eqz v3, :cond_1

    move v2, v0

    move v0, v1

    .line 1270
    :goto_1
    sget v5, Lrx/d/c/a;->e:I

    if-ge v0, v5, :cond_0

    .line 1271
    if-ge v2, v4, :cond_1

    .line 1484
    iget-object v5, v3, Lrx/d/c/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1277
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1270
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2484
    :cond_0
    iget-object v0, v3, Lrx/d/c/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1279
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/d/c/b;

    move-object v3, v0

    move v0, v2

    goto :goto_0

    .line 1282
    :cond_1
    iget-object v0, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1283
    iget-object v0, p0, Lrx/d/c/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1284
    sget-object v0, Lrx/d/c/a;->f:Lrx/d/c/d;

    invoke-virtual {v0, p0}, Lrx/d/c/d;->a(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method public final declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lrx/d/c/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 412
    sget v1, Lrx/d/c/a;->e:I

    if-ge v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Lrx/d/c/a;->g:Lrx/d/c/c;

    invoke-virtual {v1, v0, p1}, Lrx/d/c/c;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :goto_0
    monitor-exit p0

    return-void

    .line 416
    :cond_0
    :try_start_1
    sget v1, Lrx/d/c/a;->e:I

    rem-int v1, v0, v1

    .line 417
    invoke-direct {p0, v0}, Lrx/d/c/a;->c(I)Lrx/d/c/c;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lrx/d/c/c;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method final declared-synchronized d()I
    .locals 2

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lrx/d/c/a;->e()I

    move-result v0

    .line 363
    if-ltz v0, :cond_2

    .line 364
    sget v1, Lrx/d/c/a;->e:I

    if-ge v0, v1, :cond_1

    .line 366
    iget-object v1, p0, Lrx/d/c/a;->g:Lrx/d/c/c;

    invoke-virtual {v1, v0}, Lrx/d/c/c;->a(I)I

    move-result v0

    .line 371
    :goto_0
    iget-object v1, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v1, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 368
    :cond_1
    :try_start_1
    sget v1, Lrx/d/c/a;->e:I

    rem-int v1, v0, v1

    .line 369
    invoke-direct {p0, v0}, Lrx/d/c/a;->c(I)Lrx/d/c/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrx/d/c/c;->a(I)I

    move-result v0

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lrx/d/c/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
