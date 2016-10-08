.class final Lcom/sleepycat/b/i/c/b/ad;
.super Ljava/lang/Object;
.source "Replay.java"


# instance fields
.field final a:[J

.field b:I

.field c:J

.field final d:J

.field final synthetic e:Lcom/sleepycat/b/i/c/b/ac;

.field private final f:Lcom/sleepycat/b/p/z;

.field private final g:Lcom/sleepycat/b/p/z;

.field private final h:Lcom/sleepycat/b/p/z;

.field private final i:Lcom/sleepycat/b/p/z;


# virtual methods
.method final a(J)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 1298
    iget v0, p0, Lcom/sleepycat/b/i/c/b/ad;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/i/c/b/ad;->b:I

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ad;->a:[J

    array-length v2, v2

    if-eq v0, v2, :cond_1

    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ad;->c:J

    .line 3026
    sub-long v2, p1, v2

    .line 1298
    cmp-long v0, v2, v8

    if-gez v0, :cond_1

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ad;->h:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 1307
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ad;->i:Lcom/sleepycat/b/p/z;

    iget v2, p0, Lcom/sleepycat/b/i/c/b/ad;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 1308
    iget-wide v2, p0, Lcom/sleepycat/b/i/c/b/ad;->c:J

    .line 4026
    sub-long v2, p1, v2

    .line 1308
    cmp-long v0, v2, v8

    if-ltz v0, :cond_3

    .line 1309
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ad;->f:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    .line 1315
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ad;->e:Lcom/sleepycat/b/i/c/b/ac;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/ac;->a(Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v0

    .line 4371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 1315
    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V

    move v0, v1

    .line 1318
    :goto_2
    iget v2, p0, Lcom/sleepycat/b/i/c/b/ad;->b:I

    if-ge v0, v2, :cond_4

    .line 1319
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ad;->a:[J

    aget-wide v2, v2, v0

    .line 1320
    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/ad;->e:Lcom/sleepycat/b/i/c/b/ac;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/ac;->b(Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/e/t;

    move-result-object v4

    new-instance v5, Lcom/sleepycat/b/i/e/u;

    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/ad;->e:Lcom/sleepycat/b/i/c/b/ac;

    invoke-static {v6}, Lcom/sleepycat/b/i/c/b/ac;->b(Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/e/t;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v2, v3}, Lcom/sleepycat/b/i/e/u;-><init>(Lcom/sleepycat/b/i/e/t;J)V

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ad;->e:Lcom/sleepycat/b/i/c/b/ac;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/ac;->c(Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/h/o;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 1321
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ad;->a:[J

    aput-wide v8, v2, v0

    .line 1318
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1310
    :cond_3
    iget v0, p0, Lcom/sleepycat/b/i/c/b/ad;->b:I

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/ad;->a:[J

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 1311
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ad;->g:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    goto :goto_1

    .line 1324
    :cond_4
    iput v1, p0, Lcom/sleepycat/b/i/c/b/ad;->b:I

    .line 1325
    iput-wide v8, p0, Lcom/sleepycat/b/i/c/b/ad;->c:J

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/ad;->a:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
