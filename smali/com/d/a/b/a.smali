.class public final Lcom/d/a/b/a;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/d/a/a/a/b/a;JI)Lcom/d/a/a/a/b;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 81
    .line 1098
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/d/a/c/f;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v2

    .line 1099
    new-instance v0, Ljava/io/File;

    const-string v1, "uil-images"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v2, v0

    .line 82
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    if-lez p4, :cond_3

    .line 3052
    :cond_2
    invoke-static {p0, v7}, Lcom/d/a/c/f;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    .line 2098
    new-instance v0, Ljava/io/File;

    const-string v3, "uil-images"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2099
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2100
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_4

    .line 85
    :goto_0
    :try_start_0
    new-instance v0, Lcom/d/a/a/a/a/a/f;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/d/a/a/a/a/a/f;-><init>(Ljava/io/File;Ljava/io/File;Lcom/d/a/a/a/b/a;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V

    .line 4052
    :cond_3
    invoke-static {p0, v7}, Lcom/d/a/c/f;->a(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    .line 93
    new-instance v0, Lcom/d/a/a/a/a/b;

    invoke-direct {v0, v1, v2, p1}, Lcom/d/a/a/a/a/b;-><init>(Ljava/io/File;Ljava/io/File;Lcom/d/a/a/a/b/a;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public static a(III)Ljava/util/concurrent/Executor;
    .locals 9

    .prologue
    .line 59
    sget v0, Lcom/d/a/b/a/h;->b:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    if-eqz v0, :cond_1

    new-instance v7, Lcom/d/a/b/a/a/c;

    invoke-direct {v7}, Lcom/d/a/b/a/a/c;-><init>()V

    :goto_1
    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    .line 62
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v0, "uil-pool-"

    invoke-static {p1, v0}, Lcom/d/a/b/a;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_1
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_1
.end method

.method static a(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/d/a/b/b;

    invoke-direct {v0, p0, p1}, Lcom/d/a/b/b;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
