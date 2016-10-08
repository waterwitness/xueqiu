.class public final Lcom/sleepycat/b/i/e/j;
.super Ljava/lang/Object;
.source "FeederTxns.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field public final a:Ljava/util/concurrent/CountDownLatch;

.field public final b:Lcom/sleepycat/b/i/f/b;

.field final synthetic d:Lcom/sleepycat/b/i/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-class v0, Lcom/sleepycat/b/i/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e/j;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sleepycat/b/i/e/i;Lcom/sleepycat/b/i/f/b;)V
    .locals 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sleepycat/b/i/e/j;->d:Lcom/sleepycat/b/i/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    sget-boolean v0, Lcom/sleepycat/b/i/e/j;->c:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1322
    :cond_0
    iget v1, p2, Lcom/sleepycat/b/i/f/b;->b:I

    .line 146
    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/b/i/e/j;->a:Ljava/util/concurrent/CountDownLatch;

    .line 149
    iput-object p2, p0, Lcom/sleepycat/b/i/e/j;->b:Lcom/sleepycat/b/i/f/b;

    .line 150
    return-void

    .line 146
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/sleepycat/b/i/e/i;Lcom/sleepycat/b/i/f/b;B)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/e/j;-><init>(Lcom/sleepycat/b/i/e/i;Lcom/sleepycat/b/i/f/b;)V

    return-void
.end method

.method public static synthetic a(Lcom/sleepycat/b/i/e/j;I)Z
    .locals 6

    .prologue
    .line 2163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2164
    iget-object v0, p0, Lcom/sleepycat/b/i/e/j;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/e/j;->a:Ljava/util/concurrent/CountDownLatch;

    int-to-long v4, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2166
    :goto_0
    if-eqz v0, :cond_2

    .line 2167
    iget-object v1, p0, Lcom/sleepycat/b/i/e/j;->d:Lcom/sleepycat/b/i/e/i;

    invoke-static {v1}, Lcom/sleepycat/b/i/e/i;->a(Lcom/sleepycat/b/i/e/i;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/p/d;->g()V

    .line 2168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2169
    iget-object v1, p0, Lcom/sleepycat/b/i/e/j;->d:Lcom/sleepycat/b/i/e/i;

    invoke-static {v1}, Lcom/sleepycat/b/i/e/i;->b(Lcom/sleepycat/b/i/e/i;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/p/d;->a(J)V

    .line 2170
    iget-object v1, p0, Lcom/sleepycat/b/i/e/j;->d:Lcom/sleepycat/b/i/e/i;

    invoke-static {v1}, Lcom/sleepycat/b/i/e/i;->c(Lcom/sleepycat/b/i/e/i;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/e/j;->b:Lcom/sleepycat/b/i/f/b;

    .line 2336
    iget-wide v2, v2, Lcom/sleepycat/b/i/f/b;->c:J

    .line 2170
    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/p/d;->a(J)V

    .line 138
    :goto_1
    return v0

    .line 2164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2172
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/i/e/j;->d:Lcom/sleepycat/b/i/e/i;

    invoke-static {v1}, Lcom/sleepycat/b/i/e/i;->d(Lcom/sleepycat/b/i/e/i;)Lcom/sleepycat/b/p/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/p/d;->g()V

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sleepycat/b/i/e/j;->a:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 190
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/j;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method
