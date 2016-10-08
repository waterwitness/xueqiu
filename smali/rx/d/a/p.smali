.class final Lrx/d/a/p;
.super Lrx/i;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/i",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<",
            "Lrx/d/a/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field final b:Lrx/d/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/r",
            "<TT;>;"
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

.field volatile d:I

.field private final g:Lrx/d/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 532
    const-class v0, Lrx/d/a/p;

    const-string v1, "d"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/d/a/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lrx/d/a/r;Lrx/d/a/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d/a/r",
            "<TT;>;",
            "Lrx/d/a/q",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0}, Lrx/i;-><init>()V

    .line 534
    invoke-static {}, Lrx/d/c/f;->d()Lrx/d/c/f;

    move-result-object v0

    iput-object v0, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    .line 537
    iput-object p1, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    .line 538
    iput-object p2, p0, Lrx/d/a/p;->c:Lrx/d/a/q;

    .line 539
    iget-object v0, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    invoke-virtual {p0, v0}, Lrx/d/a/p;->a(Lrx/j;)V

    .line 540
    iget-object v0, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    .line 1361
    iget v0, v0, Lrx/d/c/f;->b:I

    .line 540
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lrx/d/a/p;->a(J)V

    .line 541
    return-void
.end method

.method static synthetic a(Lrx/d/a/p;)Lrx/d/c/f;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    return-object v0
.end method

.method private a(Ljava/lang/Object;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 568
    .line 607
    iget-object v0, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    .line 3093
    invoke-virtual {v0}, Lrx/d/a/r;->f()Z

    move-result v0

    .line 607
    if-eqz v0, :cond_9

    .line 612
    :try_start_0
    invoke-direct {p0}, Lrx/d/a/p;->g()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v6

    .line 614
    iget-object v4, p0, Lrx/d/a/p;->c:Lrx/d/a/q;

    if-nez v4, :cond_3

    .line 616
    if-eqz p2, :cond_2

    .line 617
    iget-object v4, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    invoke-virtual {v4, p0}, Lrx/d/a/r;->a(Lrx/d/a/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    :goto_0
    iget-object v4, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    .line 4093
    invoke-virtual {v4}, Lrx/d/a/r;->e()Z

    move-result v4

    .line 652
    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    .line 653
    invoke-virtual {p0, v0, v1}, Lrx/d/a/p;->a(J)V

    :cond_0
    move v0, v4

    .line 656
    :goto_1
    if-eqz v2, :cond_8

    .line 5677
    if-eqz p2, :cond_7

    .line 5678
    :try_start_1
    iget-object v0, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    invoke-virtual {v0}, Lrx/d/c/f;->e()V
    :try_end_1
    .catch Lrx/b/g; {:try_start_1 .. :try_end_1} :catch_2

    .line 660
    :goto_2
    if-eqz v3, :cond_1

    .line 671
    iget-object v0, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    .line 6093
    invoke-virtual {v0}, Lrx/d/a/r;->g()Z

    .line 673
    :cond_1
    return-void

    .line 620
    :cond_2
    :try_start_2
    iget-object v4, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    iget-object v4, v4, Lrx/d/a/r;->b:Lrx/i;

    invoke-virtual {v4, p1}, Lrx/i;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 625
    :goto_3
    add-long/2addr v0, v8

    goto :goto_0

    .line 621
    :catch_0
    move-exception v4

    .line 623
    :try_start_3
    invoke-static {v4, p1}, Lrx/b/j;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lrx/d/a/p;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 649
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    .line 5093
    invoke-virtual {v1}, Lrx/d/a/r;->e()Z

    .line 649
    throw v0

    .line 630
    :cond_3
    :try_start_4
    iget-object v4, p0, Lrx/d/a/p;->c:Lrx/d/a/q;

    invoke-static {v4}, Lrx/d/a/q;->a(Lrx/d/a/q;)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    iget-object v4, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    .line 3365
    iget-object v5, v4, Lrx/d/c/f;->a:Ljava/util/Queue;

    if-nez v5, :cond_4

    move v4, v2

    .line 630
    :goto_4
    if-nez v4, :cond_6

    .line 631
    if-eqz p2, :cond_5

    .line 632
    iget-object v4, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    invoke-virtual {v4, p0}, Lrx/d/a/r;->a(Lrx/d/a/p;)V

    goto :goto_0

    .line 3368
    :cond_4
    iget-object v4, v4, Lrx/d/c/f;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    goto :goto_4

    .line 635
    :cond_5
    :try_start_5
    iget-object v4, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    iget-object v4, v4, Lrx/d/a/r;->b:Lrx/i;

    invoke-virtual {v4, p1}, Lrx/i;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 640
    :goto_5
    add-long/2addr v0, v8

    .line 641
    :try_start_6
    sget-object v4, Lrx/d/a/q;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v5, p0, Lrx/d/a/p;->c:Lrx/d/a/q;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    goto :goto_0

    .line 636
    :catch_1
    move-exception v4

    .line 638
    invoke-static {v4, p1}, Lrx/b/j;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lrx/d/a/p;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :cond_6
    move v2, v3

    .line 645
    goto :goto_0

    .line 5680
    :cond_7
    :try_start_7
    iget-object v0, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    invoke-virtual {v0, p1}, Lrx/d/c/f;->a(Ljava/lang/Object;)V
    :try_end_7
    .catch Lrx/b/g; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 5682
    :catch_2
    move-exception v0

    .line 5683
    invoke-virtual {p0, v0}, Lrx/d/a/p;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    move v3, v0

    goto :goto_2

    :cond_9
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method static synthetic b(Lrx/d/a/p;)I
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Lrx/d/a/p;->g()I

    move-result v0

    return v0
.end method

.method private e()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 688
    .line 690
    iget-object v1, p0, Lrx/d/a/p;->c:Lrx/d/a/q;

    invoke-static {v1}, Lrx/d/a/q;->a(Lrx/d/a/q;)J

    move-result-wide v4

    move v2, v0

    .line 692
    :goto_0
    int-to-long v6, v2

    cmp-long v1, v6, v4

    if-gez v1, :cond_2

    .line 693
    iget-object v1, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    invoke-virtual {v1}, Lrx/d/c/f;->g()Ljava/lang/Object;

    move-result-object v3

    .line 694
    if-eqz v3, :cond_2

    .line 697
    invoke-static {v3}, Lrx/d/c/f;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    invoke-virtual {v1, p0}, Lrx/d/a/r;->a(Lrx/d/a/p;)V

    .line 692
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 701
    :cond_1
    :try_start_0
    iget-object v1, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    iget-object v1, v1, Lrx/d/a/r;->b:Lrx/i;

    invoke-static {v3, v1}, Lrx/d/c/f;->a(Ljava/lang/Object;Lrx/e;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 704
    :catch_0
    move-exception v1

    .line 706
    invoke-static {v1, v3}, Lrx/b/j;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/d/a/p;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 712
    :cond_2
    sget-object v1, Lrx/d/a/q;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v2, p0, Lrx/d/a/p;->c:Lrx/d/a/q;

    neg-int v3, v0

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    .line 713
    return v0
.end method

.method private f()I
    .locals 3

    .prologue
    .line 717
    const/4 v0, 0x0

    .line 720
    :cond_0
    :goto_0
    iget-object v1, p0, Lrx/d/a/p;->g:Lrx/d/c/f;

    invoke-virtual {v1}, Lrx/d/c/f;->g()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 721
    invoke-static {v2}, Lrx/d/c/f;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    invoke-virtual {v1, p0}, Lrx/d/a/r;->a(Lrx/d/a/p;)V

    goto :goto_0

    .line 725
    :cond_1
    :try_start_0
    iget-object v1, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    iget-object v1, v1, Lrx/d/a/r;->b:Lrx/i;

    invoke-static {v2, v1}, Lrx/d/c/f;->a(Ljava/lang/Object;Lrx/e;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    :catch_0
    move-exception v1

    .line 730
    invoke-static {v1, v2}, Lrx/b/j;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/d/a/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 734
    :cond_2
    return v0
.end method

.method private g()I
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lrx/d/a/p;->c:Lrx/d/a/q;

    if-eqz v0, :cond_0

    .line 739
    invoke-direct {p0}, Lrx/d/a/p;->e()I

    move-result v0

    .line 741
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lrx/d/a/p;->f()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 558
    sget-object v0, Lrx/d/a/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lrx/d/a/p;->a(Ljava/lang/Object;Z)V

    .line 561
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrx/d/a/p;->a(Ljava/lang/Object;Z)V

    .line 546
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 551
    sget-object v0, Lrx/d/a/p;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lrx/d/a/p;->b:Lrx/d/a/r;

    .line 2093
    invoke-virtual {v0, p1, v2}, Lrx/d/a/r;->a(Ljava/lang/Throwable;Z)V

    .line 554
    :cond_0
    return-void
.end method
