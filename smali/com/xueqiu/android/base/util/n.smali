.class public final Lcom/xueqiu/android/base/util/n;
.super Ljava/lang/Object;
.source "ImageCacheUtil.java"


# direct methods
.method public static a()Lcom/d/a/b/e;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    .line 5341
    iput-boolean v1, v0, Lcom/d/a/b/e;->h:Z

    .line 5367
    iput-boolean v1, v0, Lcom/d/a/b/e;->i:Z

    .line 88
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/d/a/b/h;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x4

    .line 42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 43
    long-to-float v0, v0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x1400000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v4, "snowball"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/io/File;

    const-string v4, "image_cache"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "ImageLoaderConfiguration"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying to create storageDirectory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-static {v0, v4}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    :goto_0
    :try_start_0
    new-instance v4, Lcom/d/a/b/e;

    invoke-direct {v4}, Lcom/d/a/b/e;-><init>()V

    .line 1341
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/d/a/b/e;->h:Z

    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/d/a/b/e;->i:Z

    .line 62
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 63
    if-ge v0, v2, :cond_8

    .line 64
    :goto_1
    new-instance v7, Lcom/d/a/b/i;

    invoke-direct {v7, p0}, Lcom/d/a/b/i;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v4}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v2

    .line 1543
    iput-object v2, v7, Lcom/d/a/b/i;->m:Lcom/d/a/b/d;

    .line 2294
    iget-object v2, v7, Lcom/d/a/b/i;->b:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iget-object v2, v7, Lcom/d/a/b/i;->c:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_2

    .line 2295
    :cond_1
    const-string v2, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2298
    :cond_2
    iput v0, v7, Lcom/d/a/b/i;->d:I

    .line 66
    new-instance v0, Lcom/xueqiu/android/base/util/p;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/util/p;-><init>(Landroid/content/Context;)V

    .line 2521
    iput-object v0, v7, Lcom/d/a/b/i;->l:Lcom/d/a/b/d/b;

    .line 3333
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/d/a/b/i;->e:Z

    .line 68
    new-instance v0, Lcom/d/a/a/b/a/b;

    invoke-direct {v0, v3}, Lcom/d/a/a/b/a/b;-><init>(I)V

    .line 3403
    iget v2, v7, Lcom/d/a/b/i;->f:I

    if-eqz v2, :cond_3

    .line 3404
    const-string v2, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3407
    :cond_3
    iput-object v0, v7, Lcom/d/a/b/i;->i:Lcom/d/a/a/b/c;

    .line 69
    new-instance v0, Lcom/d/a/a/a/a/a/f;

    const/4 v2, 0x0

    .line 4073
    new-instance v3, Lcom/d/a/a/a/b/b;

    invoke-direct {v3}, Lcom/d/a/a/a/b/b;-><init>()V

    .line 70
    const-wide/16 v4, 0x0

    const/16 v6, 0xbb8

    invoke-direct/range {v0 .. v6}, Lcom/d/a/a/a/a/a/f;-><init>(Ljava/io/File;Ljava/io/File;Lcom/d/a/a/a/b/a;JI)V

    .line 4503
    iget-wide v2, v7, Lcom/d/a/b/i;->g:J

    cmp-long v1, v2, v8

    if-gtz v1, :cond_4

    iget v1, v7, Lcom/d/a/b/i;->h:I

    if-lez v1, :cond_5

    .line 4504
    :cond_4
    const-string v1, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4506
    :cond_5
    iget-object v1, v7, Lcom/d/a/b/i;->k:Lcom/d/a/a/a/b/a;

    if-eqz v1, :cond_6

    .line 4507
    const-string v1, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/d/a/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4510
    :cond_6
    iput-object v0, v7, Lcom/d/a/b/i;->j:Lcom/d/a/a/a/b;

    .line 71
    invoke-virtual {v7}, Lcom/d/a/b/i;->a()Lcom/d/a/b/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_2
    return-object v0

    .line 55
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 63
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 5127
    new-instance v0, Lcom/d/a/b/i;

    invoke-direct {v0, p0}, Lcom/d/a/b/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/d/a/b/i;->a()Lcom/d/a/b/h;

    move-result-object v0

    goto :goto_2
.end method

.method public static b()Lcom/d/a/b/e;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    .line 6341
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/d/a/b/e;->h:Z

    .line 6367
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/d/a/b/e;->i:Z

    .line 99
    return-object v0
.end method
