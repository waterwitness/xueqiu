.class final Lcom/sleepycat/b/i/b/i;
.super Ljava/lang/Object;
.source "Elections.java"

# interfaces
.implements Lcom/sleepycat/b/i/b/u;


# instance fields
.field final a:I

.field b:I

.field private final c:Lcom/sleepycat/b/i/c/b/aa;

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private final e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/c/b/aa;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/i/b/i;->f:I

    .line 605
    iput-object p1, p0, Lcom/sleepycat/b/i/b/i;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 606
    iput v1, p0, Lcom/sleepycat/b/i/b/i;->a:I

    .line 607
    iput v1, p0, Lcom/sleepycat/b/i/b/i;->b:I

    .line 608
    iput-object p2, p0, Lcom/sleepycat/b/i/b/i;->d:Ljava/util/concurrent/CountDownLatch;

    .line 2520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 610
    sget-object v1, Lcom/sleepycat/b/i/c/an;->J:Lcom/sleepycat/b/b/e;

    .line 612
    if-eqz v0, :cond_0

    .line 3392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 612
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sleepycat/b/i/b/i;->e:I

    .line 615
    return-void

    .line 4094
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/b/b/b;->b:Ljava/lang/String;

    .line 612
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 633
    iget v2, p0, Lcom/sleepycat/b/i/b/i;->a:I

    iget v3, p0, Lcom/sleepycat/b/i/b/i;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sleepycat/b/i/b/i;->e:I

    if-lt v2, v3, :cond_1

    .line 634
    iget-object v2, p0, Lcom/sleepycat/b/i/b/i;->c:Lcom/sleepycat/b/i/c/b/aa;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/i;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 4133
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 634
    invoke-virtual {v2}, Lcom/sleepycat/b/i/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    iget v1, p0, Lcom/sleepycat/b/i/b/i;->a:I

    iput v1, p0, Lcom/sleepycat/b/i/b/i;->b:I

    .line 652
    :cond_0
    :goto_0
    return v0

    .line 640
    :cond_1
    iget v2, p0, Lcom/sleepycat/b/i/b/i;->b:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/sleepycat/b/i/b/i;->b:I

    if-gtz v2, :cond_2

    .line 642
    iget-object v0, p0, Lcom/sleepycat/b/i/b/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move v0, v1

    .line 643
    goto :goto_0

    .line 646
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/i/b/i;->d:Ljava/util/concurrent/CountDownLatch;

    .line 4623
    const/16 v3, 0x40

    iget v4, p0, Lcom/sleepycat/b/i/b/i;->f:I

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/sleepycat/b/i/b/i;->f:I

    .line 4625
    iget v3, p0, Lcom/sleepycat/b/i/b/i;->f:I

    mul-int/lit16 v3, v3, 0x3e8

    .line 646
    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 647
    iget-object v2, p0, Lcom/sleepycat/b/i/b/i;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 649
    goto :goto_0
.end method
