.class public Lcom/sleepycat/b/j/d;
.super Ljava/lang/Object;
.source "StatManager.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/b/j/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/sleepycat/b/c/ad;

.field private c:Lcom/sleepycat/b/j/f;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/j/d;->a:Ljava/util/Map;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/j/d;->c:Lcom/sleepycat/b/j/f;

    .line 55
    iput-object p1, p0, Lcom/sleepycat/b/j/d;->b:Lcom/sleepycat/b/c/ad;

    .line 56
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/b/ae;
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
            "Lcom/sleepycat/b/ae;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Lcom/sleepycat/b/ae;

    invoke-direct {v2}, Lcom/sleepycat/b/ae;-><init>()V

    .line 136
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ai;

    .line 7161
    iget-object v1, v0, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 137
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/ai;

    .line 138
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ai;)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/ae;->a(Lcom/sleepycat/b/p/ai;)V

    goto :goto_0

    .line 140
    :cond_0
    return-object v2
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/p/ai;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/sleepycat/b/p/ai;->b()V

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 150
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/sleepycat/b/j/e;

    invoke-direct {v2, p0}, Lcom/sleepycat/b/j/e;-><init>(Lcom/sleepycat/b/j/d;)V

    .line 60
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/sleepycat/b/j/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v1, v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 67
    iget-object v1, p0, Lcom/sleepycat/b/j/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/j/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/sleepycat/b/bn;Ljava/lang/Integer;)Lcom/sleepycat/b/ae;
    .locals 6

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/j/d;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/j/e;

    .line 78
    if-nez v0, :cond_0

    .line 79
    const-string v0, "Internal error stat context is not registered"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 83
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/j/d;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, p1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/ae;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/sleepycat/b/ae;->a()Ljava/util/Map;

    move-result-object v3

    .line 87
    iget-object v2, p0, Lcom/sleepycat/b/j/d;->c:Lcom/sleepycat/b/j/f;

    if-nez v2, :cond_1

    .line 88
    new-instance v2, Lcom/sleepycat/b/j/f;

    invoke-direct {v2, p0, v3}, Lcom/sleepycat/b/j/f;-><init>(Lcom/sleepycat/b/j/d;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/sleepycat/b/j/d;->c:Lcom/sleepycat/b/j/f;

    .line 1166
    :cond_1
    iget-object v2, v0, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;

    .line 94
    if-eqz v2, :cond_7

    .line 95
    invoke-static {v3, v2}, Lcom/sleepycat/b/j/d;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/b/ae;

    move-result-object v1

    move-object v2, v1

    .line 2103
    :goto_0
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 100
    if-eqz v1, :cond_6

    .line 106
    iget-object v1, p0, Lcom/sleepycat/b/j/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/j/e;

    .line 2166
    iget-object v5, v1, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;

    .line 107
    if-eqz v5, :cond_2

    .line 108
    iget-object v5, p0, Lcom/sleepycat/b/j/d;->c:Lcom/sleepycat/b/j/f;

    .line 3166
    iget-object v1, v1, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;

    .line 108
    invoke-virtual {v5, v1, v3}, Lcom/sleepycat/b/j/f;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/j/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/j/e;

    .line 113
    if-ne v1, v0, :cond_4

    .line 4162
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;

    goto :goto_2

    .line 4166
    :cond_4
    iget-object v5, v1, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;

    .line 116
    if-nez v5, :cond_5

    .line 117
    invoke-static {v3}, Lcom/sleepycat/b/j/d;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 5162
    iput-object v5, v1, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;

    goto :goto_2

    .line 5166
    :cond_5
    iget-object v5, v1, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;

    .line 120
    invoke-static {v5, v3}, Lcom/sleepycat/b/j/d;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/sleepycat/b/ae;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/b/ae;->a()Ljava/util/Map;

    move-result-object v5

    .line 6162
    iput-object v5, v1, Lcom/sleepycat/b/j/e;->a:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 127
    :cond_6
    monitor-exit p0

    return-object v2

    :cond_7
    move-object v2, v1

    goto :goto_0
.end method
