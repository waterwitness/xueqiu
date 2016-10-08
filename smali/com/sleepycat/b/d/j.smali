.class final Lcom/sleepycat/b/d/j;
.super Lcom/sleepycat/b/d/n;
.source "PrivateSelector.java"


# instance fields
.field private final b:Lcom/sleepycat/b/c/ad;

.field private c:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/sleepycat/b/l/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sleepycat/b/d/n;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 34
    iput-object p1, p0, Lcom/sleepycat/b/d/j;->b:Lcom/sleepycat/b/c/ad;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/d/j;->c:Ljava/util/Iterator;

    .line 36
    return-void
.end method


# virtual methods
.method final declared-synchronized a()Lcom/sleepycat/b/d/p;
    .locals 4

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sleepycat/b/d/p;

    invoke-direct {v0}, Lcom/sleepycat/b/d/p;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/sleepycat/b/d/j;->c:Ljava/util/Iterator;

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sleepycat/b/d/j;->b:Lcom/sleepycat/b/c/ad;

    .line 3492
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 60
    invoke-virtual {v1}, Lcom/sleepycat/b/c/al;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/d/j;->c:Ljava/util/Iterator;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/d/j;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/ad;->F()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sleepycat/b/d/p;->a:J

    .line 68
    iget-object v1, p0, Lcom/sleepycat/b/d/j;->b:Lcom/sleepycat/b/c/ad;

    .line 4492
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 68
    invoke-virtual {v1}, Lcom/sleepycat/b/c/al;->b()I

    move-result v1

    iput v1, v0, Lcom/sleepycat/b/d/p;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/sleepycat/b/d/n;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method final b()Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/sleepycat/b/d/j;->b:Lcom/sleepycat/b/c/ad;

    .line 4508
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 77
    invoke-virtual {v1}, Lcom/sleepycat/b/c/ao;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/sleepycat/b/d/j;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/sleepycat/b/d/j;->b:Lcom/sleepycat/b/c/ad;

    .line 5492
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 79
    invoke-virtual {v1}, Lcom/sleepycat/b/c/al;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/d/j;->c:Ljava/util/Iterator;

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/d/j;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/d/j;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 84
    :cond_1
    return-object v0
.end method

.method final b(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sleepycat/b/d/j;->b:Lcom/sleepycat/b/c/ad;

    .line 6492
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 92
    invoke-virtual {v0}, Lcom/sleepycat/b/c/al;->a()Lcom/sleepycat/b/p/ai;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final c(Lcom/sleepycat/b/c/ad;)Z
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
