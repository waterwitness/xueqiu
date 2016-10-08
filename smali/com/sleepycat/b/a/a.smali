.class abstract Lcom/sleepycat/b/a/a;
.super Lcom/sleepycat/b/a/b;
.source "BaseLocalUtilizationTracker.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sleepycat/b/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ad;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sleepycat/b/a/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .line 3504
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/a/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;)V

    .line 46
    iput-object p2, p0, Lcom/sleepycat/b/a/a;->a:Ljava/util/Map;

    .line 47
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)Lcom/sleepycat/b/a/f;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 134
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/sleepycat/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/g;

    .line 136
    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/sleepycat/b/a/g;

    invoke-direct {v0, v4}, Lcom/sleepycat/b/a/g;-><init>(Z)V

    .line 138
    iget-object v1, p0, Lcom/sleepycat/b/a/a;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/g;->a(Lcom/sleepycat/b/c/ad;)V

    .line 139
    iget-object v1, p0, Lcom/sleepycat/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sleepycat/b/a/a;->b:Lcom/sleepycat/b/c/ad;

    .line 6375
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 146
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sleepycat/b/a/g;->a(Ljava/lang/Long;ZZLcom/sleepycat/b/g/m;)Lcom/sleepycat/b/a/f;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract a(Ljava/lang/Object;)Lcom/sleepycat/b/c/i;
.end method

.method public a(Lcom/sleepycat/b/a/ae;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/sleepycat/b/a/a;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/z;

    .line 4062
    iget-wide v6, v0, Lcom/sleepycat/b/a/z;->m:J

    .line 68
    invoke-virtual {p1, v6, v7}, Lcom/sleepycat/b/a/ae;->b(J)Lcom/sleepycat/b/a/z;

    move-result-object v5

    .line 4124
    invoke-virtual {v5, v0}, Lcom/sleepycat/b/a/z;->a(Lcom/sleepycat/b/a/o;)V

    .line 4132
    iget v1, v5, Lcom/sleepycat/b/a/z;->o:I

    iget v3, v0, Lcom/sleepycat/b/a/z;->o:I

    add-int/2addr v1, v3

    iput v1, v5, Lcom/sleepycat/b/a/z;->o:I

    .line 4133
    iget-object v1, v0, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    if-eqz v1, :cond_0

    .line 4134
    iget-object v1, v5, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    if-eqz v1, :cond_4

    .line 4136
    iget-object v6, v5, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    iget-object v0, v0, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    .line 5081
    const/4 v3, 0x1

    .line 5082
    iget-object v0, v0, Lcom/sleepycat/b/a/t;->a:Lcom/sleepycat/b/a/u;

    .line 5198
    :goto_1
    iget-object v1, v0, Lcom/sleepycat/b/a/u;->b:Lcom/sleepycat/b/a/u;

    .line 5085
    if-eqz v1, :cond_1

    .line 5087
    iget-object v7, v6, Lcom/sleepycat/b/a/t;->a:Lcom/sleepycat/b/a/u;

    .line 5205
    iput-object v7, v0, Lcom/sleepycat/b/a/u;->b:Lcom/sleepycat/b/a/u;

    .line 5088
    iput-object v0, v6, Lcom/sleepycat/b/a/t;->a:Lcom/sleepycat/b/a/u;

    move-object v0, v1

    .line 5089
    goto :goto_1

    :cond_1
    move v1, v2

    .line 5212
    :goto_2
    iget v7, v0, Lcom/sleepycat/b/a/u;->a:I

    .line 5092
    if-ge v1, v7, :cond_3

    .line 5093
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/u;->a(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v2}, Lcom/sleepycat/b/a/t;->a(JZ)Z

    move-result v7

    if-eqz v7, :cond_2

    move v3, v2

    .line 5092
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4136
    :cond_3
    if-eqz v3, :cond_0

    .line 4138
    sget v0, Lcom/sleepycat/b/c/ao;->R:I

    neg-int v0, v0

    invoke-virtual {v5, v0}, Lcom/sleepycat/b/a/z;->a(I)V

    goto :goto_0

    .line 4143
    :cond_4
    iget-object v0, v0, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    iput-object v0, v5, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    goto :goto_0

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 75
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/a/a;->a(Ljava/lang/Object;)Lcom/sleepycat/b/c/i;

    move-result-object v4

    .line 79
    iget-object v1, p0, Lcom/sleepycat/b/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sleepycat/b/a/g;

    .line 81
    if-eqz v4, :cond_7

    .line 82
    invoke-virtual {v2}, Lcom/sleepycat/b/a/g;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 85
    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 90
    invoke-virtual {v4, v1}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/Long;)Lcom/sleepycat/b/a/f;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/f;

    .line 6042
    iget v6, v1, Lcom/sleepycat/b/a/f;->a:I

    iget v7, v0, Lcom/sleepycat/b/a/f;->a:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sleepycat/b/a/f;->a:I

    .line 6043
    iget v6, v1, Lcom/sleepycat/b/a/f;->b:I

    iget v7, v0, Lcom/sleepycat/b/a/f;->b:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sleepycat/b/a/f;->b:I

    .line 6044
    iget v6, v1, Lcom/sleepycat/b/a/f;->c:I

    iget v7, v0, Lcom/sleepycat/b/a/f;->c:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sleepycat/b/a/f;->c:I

    .line 6045
    iget v6, v1, Lcom/sleepycat/b/a/f;->d:I

    iget v7, v0, Lcom/sleepycat/b/a/f;->d:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sleepycat/b/a/f;->d:I

    .line 6046
    iget v6, v1, Lcom/sleepycat/b/a/f;->e:I

    iget v7, v0, Lcom/sleepycat/b/a/f;->e:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sleepycat/b/a/f;->e:I

    .line 6047
    iget v6, v1, Lcom/sleepycat/b/a/f;->f:I

    iget v7, v0, Lcom/sleepycat/b/a/f;->f:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sleepycat/b/a/f;->f:I

    .line 6048
    iget v6, v1, Lcom/sleepycat/b/a/f;->g:I

    iget v7, v0, Lcom/sleepycat/b/a/f;->g:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sleepycat/b/a/f;->g:I

    .line 6049
    iget v6, v1, Lcom/sleepycat/b/a/f;->h:I

    iget v0, v0, Lcom/sleepycat/b/a/f;->h:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/sleepycat/b/a/f;->h:I

    goto :goto_4

    .line 99
    :cond_7
    invoke-virtual {p0, v4}, Lcom/sleepycat/b/a/a;->a(Lcom/sleepycat/b/c/i;)V

    .line 101
    invoke-virtual {v2}, Lcom/sleepycat/b/a/g;->a()V

    goto :goto_3

    .line 103
    :cond_8
    return-void
.end method

.method abstract a(Lcom/sleepycat/b/c/i;)V
.end method
