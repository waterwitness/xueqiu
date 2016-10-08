.class public abstract Lcom/android/volley/n;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/volley/n",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field final d:I

.field e:Ljava/lang/Integer;

.field f:Lcom/android/volley/p;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lcom/android/volley/v;

.field public k:Lcom/android/volley/c;

.field private final l:Lcom/android/volley/aa;

.field private final m:Lcom/android/volley/s;

.field private n:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/s;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-boolean v0, Lcom/android/volley/aa;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/volley/aa;

    invoke-direct {v0}, Lcom/android/volley/aa;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/volley/n;->l:Lcom/android/volley/aa;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/n;->g:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/volley/n;->h:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/volley/n;->i:Z

    .line 97
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/volley/n;->n:J

    .line 110
    iput-object v1, p0, Lcom/android/volley/n;->k:Lcom/android/volley/c;

    .line 135
    iput p1, p0, Lcom/android/volley/n;->a:I

    .line 136
    iput-object p2, p0, Lcom/android/volley/n;->b:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/android/volley/n;->m:Lcom/android/volley/s;

    .line 138
    new-instance v0, Lcom/android/volley/e;

    invoke-direct {v0}, Lcom/android/volley/e;-><init>()V

    .line 1198
    iput-object v0, p0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    .line 2180
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2181
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2182
    if-eqz v0, :cond_1

    .line 2183
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2184
    if-eqz v0, :cond_1

    .line 2185
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 140
    :goto_1
    iput v0, p0, Lcom/android/volley/n;->d:I

    .line 141
    return-void

    :cond_0
    move-object v0, v1

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2189
    goto :goto_1
.end method

.method static synthetic a(Lcom/android/volley/n;)Lcom/android/volley/aa;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/volley/n;->l:Lcom/android/volley/aa;

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    :try_start_0
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

    .line 464
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoding not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 469
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/volley/k;)Lcom/android/volley/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/k;",
            ")",
            "Lcom/android/volley/r",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a(Lcom/android/volley/y;)Lcom/android/volley/y;
    .locals 0

    .prologue
    .line 560
    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/volley/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/volley/n;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/volley/n;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/volley/aa;->a:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/volley/n;->l:Lcom/android/volley/aa;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/volley/aa;->a(Ljava/lang/String;J)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-wide v0, p0, Lcom/android/volley/n;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/volley/n;->n:J

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/volley/n;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/volley/n;->m:Lcom/android/volley/s;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/volley/n;->m:Lcom/android/volley/s;

    invoke-interface {v0, p1}, Lcom/android/volley/s;->a(Lcom/android/volley/y;)V

    .line 582
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/volley/n;->f:Lcom/android/volley/p;

    if-eqz v0, :cond_2

    .line 220
    iget-object v1, p0, Lcom/android/volley/n;->f:Lcom/android/volley/p;

    .line 2266
    iget-object v2, v1, Lcom/android/volley/p;->b:Ljava/util/Set;

    monitor-enter v2

    .line 2267
    :try_start_0
    iget-object v0, v1, Lcom/android/volley/p;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2268
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2489
    iget-boolean v0, p0, Lcom/android/volley/n;->g:Z

    .line 2270
    if-eqz v0, :cond_2

    .line 2271
    iget-object v2, v1, Lcom/android/volley/p;->a:Ljava/util/Map;

    monitor-enter v2

    .line 2272
    :try_start_1
    invoke-virtual {p0}, Lcom/android/volley/n;->b()Ljava/lang/String;

    move-result-object v3

    .line 2273
    iget-object v0, v1, Lcom/android/volley/p;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 2274
    if-eqz v0, :cond_1

    .line 2275
    sget-boolean v4, Lcom/android/volley/z;->b:Z

    if-eqz v4, :cond_0

    .line 2276
    const-string v4, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/android/volley/z;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2281
    :cond_0
    iget-object v1, v1, Lcom/android/volley/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 2283
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    :cond_2
    sget-boolean v0, Lcom/android/volley/aa;->a:Z

    if-eqz v0, :cond_5

    .line 223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 224
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_4

    .line 227
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    new-instance v3, Lcom/android/volley/n$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/volley/n$1;-><init>(Lcom/android/volley/n;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_3
    :goto_0
    return-void

    .line 2268
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2283
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 238
    :cond_4
    iget-object v2, p0, Lcom/android/volley/n;->l:Lcom/android/volley/aa;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/volley/aa;->a(Ljava/lang/String;J)V

    .line 239
    iget-object v0, p0, Lcom/android/volley/n;->l:Lcom/android/volley/aa;

    invoke-virtual {p0}, Lcom/android/volley/n;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/volley/n;->n:J

    sub-long/2addr v0, v2

    .line 242
    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 243
    const-string v2, "%d ms: %s"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0}, Lcom/android/volley/n;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Lcom/android/volley/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 38
    check-cast p1, Lcom/android/volley/n;

    .line 5590
    invoke-virtual {p0}, Lcom/android/volley/n;->g()Lcom/android/volley/o;

    move-result-object v0

    .line 5591
    invoke-virtual {p1}, Lcom/android/volley/n;->g()Lcom/android/volley/o;

    move-result-object v1

    .line 5595
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/volley/n;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/volley/n;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/volley/o;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/volley/o;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    .line 38
    goto :goto_0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    const-string v0, "application/x-www-form-urlencoded; charset=UTF-8"

    return-object v0
.end method

.method public f()[B
    .locals 2

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/volley/n;->d()Ljava/util/Map;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4437
    const-string v1, "UTF-8"

    .line 452
    invoke-static {v0, v1}, Lcom/android/volley/n;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lcom/android/volley/o;
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lcom/android/volley/o;->b:Lcom/android/volley/o;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/volley/n;->j:Lcom/android/volley/v;

    invoke-interface {v0}, Lcom/android/volley/v;->a()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5173
    iget v1, p0, Lcom/android/volley/n;->d:I

    .line 602
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/android/volley/n;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/volley/n;->g()Lcom/android/volley/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/n;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method
