.class final Lcom/sleepycat/b/d/l;
.super Lcom/sleepycat/b/d/n;
.source "SharedSelector.java"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/d/m;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final i:Lcom/sleepycat/b/p/o;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/sleepycat/b/d/n;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/d/l;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/d/l;->e:Z

    .line 105
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/d/l;->a:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/d/h;->h:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/d/l;->i:Lcom/sleepycat/b/p/o;

    .line 106
    return-void
.end method

.method private static a(Lcom/sleepycat/b/d/m;)Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sleepycat/b/d/m;->a:Lcom/sleepycat/b/c/ad;

    .line 5508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 297
    invoke-virtual {v0}, Lcom/sleepycat/b/c/ao;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method final declared-synchronized a()Lcom/sleepycat/b/d/p;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/sleepycat/b/d/p;

    invoke-direct {v2}, Lcom/sleepycat/b/d/p;-><init>()V

    .line 218
    iget-boolean v1, p0, Lcom/sleepycat/b/d/l;->e:Z

    if-eqz v1, :cond_2

    .line 5305
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/b/d/l;->g:I

    .line 5306
    const v1, 0x7fffffff

    iput v1, p0, Lcom/sleepycat/b/d/l;->f:I

    .line 5307
    iget-object v1, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 5308
    :goto_0
    if-ge v1, v3, :cond_1

    .line 5309
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/m;

    .line 5310
    iget-object v4, v0, Lcom/sleepycat/b/d/m;->b:Lcom/sleepycat/b/c/al;

    invoke-virtual {v4}, Lcom/sleepycat/b/c/al;->b()I

    move-result v4

    .line 5311
    iget v5, p0, Lcom/sleepycat/b/d/l;->f:I

    if-le v5, v4, :cond_0

    .line 5312
    iput v4, p0, Lcom/sleepycat/b/d/l;->f:I

    .line 5314
    :cond_0
    iget v5, p0, Lcom/sleepycat/b/d/l;->g:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sleepycat/b/d/l;->g:I

    .line 5315
    iput v4, v0, Lcom/sleepycat/b/d/m;->d:I

    .line 5316
    mul-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/sleepycat/b/d/m;->e:I

    .line 5308
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5318
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/d/l;->e:Z

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 225
    if-lez v0, :cond_4

    .line 226
    iget v1, p0, Lcom/sleepycat/b/d/l;->d:I

    if-lt v1, v0, :cond_3

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/d/l;->d:I

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    iget v1, p0, Lcom/sleepycat/b/d/l;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/m;

    .line 230
    iget v1, p0, Lcom/sleepycat/b/d/l;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/b/d/l;->d:I

    .line 231
    iget-object v0, v0, Lcom/sleepycat/b/d/m;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->F()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/sleepycat/b/d/p;->a:J

    .line 235
    :cond_4
    iget v0, p0, Lcom/sleepycat/b/d/l;->g:I

    iput v0, v2, Lcom/sleepycat/b/d/p;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-object v2

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->i:Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/o;->a(Ljava/lang/Integer;)V

    .line 140
    invoke-super {p0, p1}, Lcom/sleepycat/b/d/n;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    iget v1, p0, Lcom/sleepycat/b/d/l;->g:I

    div-int/lit8 v1, v1, 0xa

    if-le v0, v1, :cond_0

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/d/l;->e:Z

    .line 152
    :cond_0
    return-void
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    .line 161
    :goto_0
    if-ge v1, v2, :cond_1

    .line 162
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/m;

    .line 163
    iget-object v0, v0, Lcom/sleepycat/b/d/m;->a:Lcom/sleepycat/b/c/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 172
    :goto_1
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 167
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/d/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/b/d/m;-><init>(B)V

    .line 168
    iput-object p1, v0, Lcom/sleepycat/b/d/m;->a:Lcom/sleepycat/b/c/ad;

    .line 4492
    iget-object v1, p1, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 169
    iput-object v1, v0, Lcom/sleepycat/b/d/m;->b:Lcom/sleepycat/b/c/al;

    .line 170
    iget-object v1, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/d/l;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Lcom/sleepycat/b/l/j;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 249
    if-nez v5, :cond_0

    move-object v0, v3

    .line 288
    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    .line 255
    :goto_1
    iget v0, p0, Lcom/sleepycat/b/d/l;->c:I

    if-lt v0, v5, :cond_1

    .line 256
    iput v2, p0, Lcom/sleepycat/b/d/l;->c:I

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    iget v4, p0, Lcom/sleepycat/b/d/l;->c:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/m;

    .line 259
    iget v4, p0, Lcom/sleepycat/b/d/l;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sleepycat/b/d/l;->c:I

    .line 260
    iget v4, v0, Lcom/sleepycat/b/d/m;->e:I

    if-lez v4, :cond_5

    invoke-static {v0}, Lcom/sleepycat/b/d/l;->a(Lcom/sleepycat/b/d/m;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 261
    iget v4, v0, Lcom/sleepycat/b/d/m;->e:I

    iget v6, p0, Lcom/sleepycat/b/d/l;->f:I

    sub-int/2addr v4, v6

    iput v4, v0, Lcom/sleepycat/b/d/m;->e:I

    .line 262
    iget-object v4, v0, Lcom/sleepycat/b/d/m;->c:Ljava/util/Iterator;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/sleepycat/b/d/m;->c:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 263
    :cond_2
    iget-object v4, v0, Lcom/sleepycat/b/d/m;->b:Lcom/sleepycat/b/c/al;

    invoke-virtual {v4}, Lcom/sleepycat/b/c/al;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iput-object v4, v0, Lcom/sleepycat/b/d/m;->c:Ljava/util/Iterator;

    .line 265
    :cond_3
    iget-object v4, v0, Lcom/sleepycat/b/d/m;->c:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 267
    iget-object v0, v0, Lcom/sleepycat/b/d/m;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    goto :goto_0

    .line 271
    :cond_4
    const/4 v4, -0x1

    iput v4, v0, Lcom/sleepycat/b/d/m;->e:I

    .line 273
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .line 274
    if-lt v0, v5, :cond_8

    move v4, v2

    move v1, v2

    .line 277
    :goto_2
    if-ge v4, v5, :cond_6

    .line 278
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/m;

    .line 279
    iget v6, v0, Lcom/sleepycat/b/d/m;->d:I

    if-lez v6, :cond_9

    .line 280
    iget v6, v0, Lcom/sleepycat/b/d/m;->d:I

    mul-int/lit8 v6, v6, 0xa

    iput v6, v0, Lcom/sleepycat/b/d/m;->e:I

    .line 281
    invoke-static {v0}, Lcom/sleepycat/b/d/l;->a(Lcom/sleepycat/b/d/m;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 282
    const/4 v0, 0x1

    .line 277
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_2

    .line 286
    :cond_6
    if-nez v1, :cond_7

    move-object v0, v3

    .line 288
    goto :goto_0

    :cond_7
    move v0, v2

    :cond_8
    move v1, v0

    .line 293
    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method final b(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 3

    .prologue
    .line 113
    new-instance v1, Lcom/sleepycat/b/p/ai;

    const-string v0, "temp"

    const-string v2, "temp"

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    iget-boolean v0, p1, Lcom/sleepycat/b/bn;->b:Z

    .line 114
    if-eqz v0, :cond_0

    move-object v0, v1

    .line 132
    :goto_0
    return-object v0

    .line 124
    :cond_0
    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/m;

    .line 129
    iget-object v0, v0, Lcom/sleepycat/b/d/m;->a:Lcom/sleepycat/b/c/ad;

    .line 3492
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 129
    invoke-virtual {v0}, Lcom/sleepycat/b/c/al;->a()Lcom/sleepycat/b/p/ai;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    .line 132
    goto :goto_0
.end method

.method public final declared-synchronized b(Lcom/sleepycat/b/c/ad;)V
    .locals 3

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 181
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/m;

    .line 183
    iget-object v0, v0, Lcom/sleepycat/b/d/m;->a:Lcom/sleepycat/b/c/ad;

    if-ne v0, p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/d/l;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/sleepycat/b/c/ad;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 198
    :goto_0
    if-ge v2, v3, :cond_1

    .line 199
    iget-object v0, p0, Lcom/sleepycat/b/d/l;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/d/m;

    .line 200
    iget-object v0, v0, Lcom/sleepycat/b/d/m;->a:Lcom/sleepycat/b/c/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 204
    :goto_1
    monitor-exit p0

    return v0

    .line 198
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 204
    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
