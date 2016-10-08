.class public final Lcom/xiaomi/push/a/f;
.super Lcom/xiaomi/push/a/d;


# instance fields
.field a:Ljava/io/File;

.field final synthetic d:I

.field final synthetic e:Ljava/util/Date;

.field final synthetic f:Ljava/util/Date;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Z

.field final synthetic j:Lcom/xiaomi/push/a/b;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/a/b;ILjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/a/f;->j:Lcom/xiaomi/push/a/b;

    iput p2, p0, Lcom/xiaomi/push/a/f;->d:I

    iput-object p3, p0, Lcom/xiaomi/push/a/f;->e:Ljava/util/Date;

    iput-object p4, p0, Lcom/xiaomi/push/a/f;->f:Ljava/util/Date;

    iput-object p5, p0, Lcom/xiaomi/push/a/f;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/a/f;->h:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/xiaomi/push/a/f;->i:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/push/a/d;-><init>(Lcom/xiaomi/push/a/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1000
    invoke-static {}, Lcom/xiaomi/a/a/a/c;->b()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3000
    invoke-static {}, Lcom/xiaomi/a/a/a/c;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2000
    :cond_0
    :goto_0
    const-wide/32 v6, 0x19000

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    move v3, v0

    .line 1000
    :goto_1
    if-nez v3, :cond_4

    invoke-static {}, Lcom/xiaomi/a/a/a/c;->a()Z

    move-result v3

    if-nez v3, :cond_4

    .line 0
    :goto_2
    if-nez v0, :cond_5

    :cond_1
    :goto_3
    return-void

    .line 3000
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v8, 0x4

    sub-long/2addr v4, v8

    mul-long/2addr v4, v6

    goto :goto_0

    :cond_3
    move v3, v2

    .line 2000
    goto :goto_1

    :cond_4
    move v0, v2

    .line 1000
    goto :goto_2

    .line 0
    :cond_5
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/push/a/f;->j:Lcom/xiaomi/push/a/b;

    invoke-static {v3}, Lcom/xiaomi/push/a/b;->a(Lcom/xiaomi/push/a/b;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/.logcache"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Lcom/xiaomi/push/a/a;

    invoke-direct {v3}, Lcom/xiaomi/push/a/a;-><init>()V

    iget v0, p0, Lcom/xiaomi/push/a/f;->d:I

    .line 4000
    if-eqz v0, :cond_6

    iput v0, v3, Lcom/xiaomi/push/a/a;->e:I

    .line 0
    :cond_6
    iget-object v0, p0, Lcom/xiaomi/push/a/f;->j:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->a(Lcom/xiaomi/push/a/b;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/a/f;->e:Ljava/util/Date;

    iget-object v6, p0, Lcom/xiaomi/push/a/f;->f:Ljava/util/Date;

    .line 5000
    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    const-string v7, "xmsf.log.1"

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/a/a;->a(Ljava/io/File;)Lcom/xiaomi/push/a/a;

    new-instance v4, Ljava/io/File;

    const-string v7, "xmsf.log"

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/a/a;->a(Ljava/io/File;)Lcom/xiaomi/push/a/a;

    :goto_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".zip"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    .line 6000
    invoke-virtual {v5, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/xiaomi/push/a/a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/push/a/a;->c:Ljava/lang/String;

    iget-object v4, v3, Lcom/xiaomi/push/a/a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/push/a/a;->d:Ljava/lang/String;

    .line 5000
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/io/File;

    const-string v7, "log.txt"

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/xiaomi/push/a/a;->b(Ljava/io/File;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LOG: filter cost = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v6}, Lcom/xiaomi/a/a/a/a;->a(Ljava/io/File;Ljava/io/File;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LOG: zip cost = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 0
    :goto_6
    iput-object v0, p0, Lcom/xiaomi/push/a/f;->a:Ljava/io/File;

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 5000
    :cond_7
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/xiaomi/push/a/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v7, "log0.txt"

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/a/a;->a(Ljava/io/File;)Lcom/xiaomi/push/a/a;

    new-instance v4, Ljava/io/File;

    const-string v7, "log1.txt"

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/a/a;->a(Ljava/io/File;)Lcom/xiaomi/push/a/a;

    goto/16 :goto_4

    .line 6000
    :cond_8
    iget-object v4, v3, Lcom/xiaomi/push/a/a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/push/a/a;->c:Ljava/lang/String;

    iget-object v4, v3, Lcom/xiaomi/push/a/a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/push/a/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :cond_9
    move-object v0, v1

    .line 5000
    goto :goto_6
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/push/a/f;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/a/f;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/a/f;->j:Lcom/xiaomi/push/a/b;

    invoke-static {v0}, Lcom/xiaomi/push/a/b;->b(Lcom/xiaomi/push/a/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    new-instance v0, Lcom/xiaomi/push/a/e;

    iget-object v1, p0, Lcom/xiaomi/push/a/f;->j:Lcom/xiaomi/push/a/b;

    iget-object v2, p0, Lcom/xiaomi/push/a/f;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/a/f;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/a/f;->a:Ljava/io/File;

    iget-boolean v5, p0, Lcom/xiaomi/push/a/f;->i:Z

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/push/a/e;-><init>(Lcom/xiaomi/push/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/a/f;->j:Lcom/xiaomi/push/a/b;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/a/b;->a(Lcom/xiaomi/push/a/b;J)V

    return-void
.end method
