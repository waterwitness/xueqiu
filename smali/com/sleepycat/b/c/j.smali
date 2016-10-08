.class final Lcom/sleepycat/b/c/j;
.super Ljava/lang/Object;
.source "DatabaseImpl.java"


# instance fields
.field final a:Z

.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Comparator",
            "<[B>;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2657
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2658
    iput-object v2, p0, Lcom/sleepycat/b/c/j;->b:Ljava/lang/Class;

    .line 2659
    iput-object v2, p0, Lcom/sleepycat/b/c/j;->c:Ljava/util/Comparator;

    .line 2660
    iput-boolean v3, p0, Lcom/sleepycat/b/c/j;->a:Z

    .line 2687
    :goto_0
    return-void

    .line 2665
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sleepycat/b/c/i;->a([BLjava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2668
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2669
    check-cast v0, Ljava/lang/String;

    .line 2671
    :try_start_0
    invoke-static {v0, p3}, Lcom/sleepycat/c/a;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/j;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    iget-object v0, p0, Lcom/sleepycat/b/c/j;->b:Ljava/lang/Class;

    invoke-static {v0, p2}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/j;->c:Ljava/util/Comparator;

    .line 2678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/c/j;->a:Z

    goto :goto_0

    .line 2674
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2683
    :cond_1
    instance-of v1, v0, Ljava/util/Comparator;

    if-eqz v1, :cond_2

    .line 2684
    iput-object v2, p0, Lcom/sleepycat/b/c/j;->b:Ljava/lang/Class;

    .line 2685
    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/sleepycat/b/c/j;->c:Ljava/util/Comparator;

    .line 2686
    iput-boolean v3, p0, Lcom/sleepycat/b/c/j;->a:Z

    goto :goto_0

    .line 2691
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected class name or Comparator instance, got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
