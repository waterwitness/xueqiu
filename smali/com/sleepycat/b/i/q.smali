.class public final Lcom/sleepycat/b/i/q;
.super Lcom/sleepycat/b/j/d;
.source "RepStatManager.java"


# instance fields
.field private c:Lcom/sleepycat/b/j/f;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sleepycat/b/j/d;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/q;->c:Lcom/sleepycat/b/j/f;

    .line 24
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/b/i/v;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;)",
            "Lcom/sleepycat/b/i/v;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v2, Lcom/sleepycat/b/i/v;

    invoke-direct {v2}, Lcom/sleepycat/b/i/v;-><init>()V

    .line 85
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ai;

    .line 86
    if-eqz p1, :cond_0

    .line 9161
    iget-object v1, v0, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 87
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/ai;

    .line 88
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ai;)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/i/v;->a(Lcom/sleepycat/b/p/ai;)V

    goto :goto_0

    .line 90
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/i/v;->a(Lcom/sleepycat/b/p/ai;)V

    goto :goto_0

    .line 93
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/sleepycat/b/bn;Ljava/lang/Integer;)Lcom/sleepycat/b/i/v;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/q;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/j/e;

    .line 31
    if-nez v0, :cond_0

    .line 32
    const-string v0, "Internal error stat context is not registered"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 35
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/q;->b:Lcom/sleepycat/b/c/ad;

    check-cast v1, Lcom/sleepycat/b/i/c/aj;

    .line 1836
    iget-object v3, v1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    move-object v1, v2

    .line 37
    :goto_0
    if-nez v1, :cond_2

    move-object v0, v2

    .line 77
    :goto_1
    monitor-exit p0

    return-object v0

    .line 1839
    :cond_1
    :try_start_2
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 2367
    iget-object v3, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3094
    new-instance v1, Lcom/sleepycat/b/i/v;

    invoke-direct {v1, v3, p1}, Lcom/sleepycat/b/i/v;-><init>(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/bn;)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/b/i/v;->b()Ljava/util/Map;

    move-result-object v3

    .line 3174
    iget-object v2, v0, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;

    .line 42
    iget-object v4, p0, Lcom/sleepycat/b/i/q;->c:Lcom/sleepycat/b/j/f;

    if-nez v4, :cond_3

    .line 43
    new-instance v4, Lcom/sleepycat/b/j/f;

    invoke-direct {v4, p0, v3}, Lcom/sleepycat/b/j/f;-><init>(Lcom/sleepycat/b/j/d;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/sleepycat/b/i/q;->c:Lcom/sleepycat/b/j/f;

    .line 47
    :cond_3
    if-eqz v2, :cond_9

    .line 48
    invoke-static {v3, v2}, Lcom/sleepycat/b/i/q;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/b/i/v;

    move-result-object v2

    .line 4103
    :goto_2
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 53
    if-eqz v1, :cond_8

    .line 55
    iget-object v1, p0, Lcom/sleepycat/b/i/q;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/j/e;

    .line 4174
    iget-object v5, v1, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;

    .line 56
    if-eqz v5, :cond_4

    .line 57
    iget-object v5, p0, Lcom/sleepycat/b/i/q;->c:Lcom/sleepycat/b/j/f;

    .line 5174
    iget-object v1, v1, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;

    .line 57
    invoke-virtual {v5, v1, v3}, Lcom/sleepycat/b/j/f;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    .line 61
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/b/i/q;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/j/e;

    .line 62
    if-ne v1, v0, :cond_6

    .line 6170
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;

    goto :goto_4

    .line 6174
    :cond_6
    iget-object v5, v1, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;

    .line 65
    if-nez v5, :cond_7

    .line 66
    invoke-static {v3}, Lcom/sleepycat/b/i/q;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 7170
    iput-object v5, v1, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;

    goto :goto_4

    .line 7174
    :cond_7
    iget-object v5, v1, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;

    .line 69
    invoke-static {v5, v3}, Lcom/sleepycat/b/i/q;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/b/i/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/b/i/v;->b()Ljava/util/Map;

    move-result-object v5

    .line 8170
    iput-object v5, v1, Lcom/sleepycat/b/j/e;->b:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_8
    move-object v0, v2

    .line 77
    goto :goto_1

    :cond_9
    move-object v2, v1

    goto :goto_2
.end method
