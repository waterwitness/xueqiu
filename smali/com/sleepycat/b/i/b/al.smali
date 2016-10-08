.class final Lcom/sleepycat/b/i/b/al;
.super Ljava/lang/Object;
.source "RankingProposer.java"


# instance fields
.field a:I

.field b:I

.field c:Z

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i/c/au;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/sleepycat/b/i/b/d;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/b/d;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/i/b/d;",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i/c/au;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sleepycat/b/i/b/al;->a:I

    .line 133
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sleepycat/b/i/b/al;->b:I

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/b/al;->c:Z

    .line 139
    iput-object p2, p0, Lcom/sleepycat/b/i/b/al;->d:Ljava/util/Set;

    .line 140
    iput-object p1, p0, Lcom/sleepycat/b/i/b/al;->e:Lcom/sleepycat/b/i/b/d;

    .line 141
    invoke-direct {p0}, Lcom/sleepycat/b/i/b/al;->a()V

    .line 142
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object v0, p0, Lcom/sleepycat/b/i/b/al;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/au;

    .line 153
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/b/al;->e:Lcom/sleepycat/b/i/b/d;

    .line 1287
    iget-object v4, v4, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    .line 153
    iget-object v4, v4, Lcom/sleepycat/b/i/b/x;->g:Lcom/sleepycat/b/i/c/av;

    if-ne v3, v4, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/b/ac;

    .line 1298
    iget v3, v0, Lcom/sleepycat/b/i/b/ac;->f:I

    .line 160
    iget v4, p0, Lcom/sleepycat/b/i/b/al;->b:I

    if-ge v3, v4, :cond_1

    .line 2298
    iget v3, v0, Lcom/sleepycat/b/i/b/ac;->f:I

    .line 161
    iput v3, p0, Lcom/sleepycat/b/i/b/al;->b:I

    .line 3298
    :cond_1
    iget v3, v0, Lcom/sleepycat/b/i/b/ac;->f:I

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4298
    iget v0, v0, Lcom/sleepycat/b/i/b/ac;->f:I

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5298
    :cond_2
    iget v3, v0, Lcom/sleepycat/b/i/b/ac;->f:I

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6298
    iget v0, v0, Lcom/sleepycat/b/i/b/ac;->f:I

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 177
    iput-boolean v5, p0, Lcom/sleepycat/b/i/b/al;->c:Z

    .line 198
    :cond_4
    :goto_1
    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/i/b/al;->e:Lcom/sleepycat/b/i/b/d;

    .line 7216
    iget-object v0, v0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 185
    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/sleepycat/b/i/b/al;->e:Lcom/sleepycat/b/i/b/d;

    .line 8216
    iget-object v0, v0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    .line 8421
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 190
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/t;->h()I

    move-result v2

    .line 192
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v4, v2, 0x2

    if-le v1, v4, :cond_6

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/b/al;->a:I

    goto :goto_1
.end method
