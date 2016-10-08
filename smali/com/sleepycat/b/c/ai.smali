.class final Lcom/sleepycat/b/c/ai;
.super Lcom/sleepycat/b/c/ay;
.source "EnvironmentImpl.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/c/ad;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/ad;[Lcom/sleepycat/b/c/i;[JLcom/sleepycat/b/c/bc;Lcom/sleepycat/b/aw;)V
    .locals 2

    .prologue
    .line 3303
    iput-object p1, p0, Lcom/sleepycat/b/c/ai;->a:Lcom/sleepycat/b/c/ad;

    .line 3305
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/sleepycat/b/c/ay;-><init>([Lcom/sleepycat/b/c/i;Z[JLcom/sleepycat/b/c/bc;)V

    .line 4128
    iget-boolean v0, p5, Lcom/sleepycat/b/aw;->c:Z

    .line 3310
    iput-boolean v0, p0, Lcom/sleepycat/b/c/ai;->e:Z

    .line 4216
    iget-wide v0, p5, Lcom/sleepycat/b/aw;->e:J

    .line 4297
    iput-wide v0, p0, Lcom/sleepycat/b/c/ay;->g:J

    .line 5253
    iget-wide v0, p5, Lcom/sleepycat/b/aw;->f:J

    .line 5301
    iput-wide v0, p0, Lcom/sleepycat/b/c/ay;->d:J

    .line 3313
    return-void
.end method


# virtual methods
.method protected final a(Lcom/sleepycat/b/c/i;J)Lcom/sleepycat/b/l/j;
    .locals 3

    .prologue
    .line 3354
    .line 7485
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 3354
    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/a;Z)Lcom/sleepycat/b/l/j;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3319
    iget-object v1, p0, Lcom/sleepycat/b/c/ai;->b:[Lcom/sleepycat/b/c/i;

    array-length v2, v1

    move v1, v0

    .line 3323
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3324
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/c/ai;->b:[Lcom/sleepycat/b/c/i;

    aget-object v3, v3, v0

    .line 5485
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 6435
    iget-object v3, v3, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v3}, Lcom/sleepycat/b/f/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3326
    add-int/lit8 v1, v1, 0x1

    .line 3323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3328
    :catch_0
    move-exception v0

    .line 3329
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/b/c/ai;->a:Lcom/sleepycat/b/c/ad;

    const-string v3, "Couldn\'t latch all DatabaseImpls during preload"

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3341
    :catchall_0
    move-exception v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 3342
    iget-object v2, p0, Lcom/sleepycat/b/c/ai;->b:[Lcom/sleepycat/b/c/i;

    aget-object v2, v2, v1

    .line 6485
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 7441
    iget-object v2, v2, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 3341
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3334
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ai;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3341
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 3342
    iget-object v1, p0, Lcom/sleepycat/b/c/ai;->b:[Lcom/sleepycat/b/c/i;

    aget-object v1, v1, v0

    .line 6485
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 7441
    iget-object v1, v1, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    .line 3341
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1
    throw v0

    .line 3345
    :cond_2
    return-void
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 3360
    const/4 v0, 0x1

    return v0
.end method
