.class final Lcom/xiaomi/d/r;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/xiaomi/d/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/d/m;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/d/r;->a:Lcom/xiaomi/d/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/d/r;->a:Lcom/xiaomi/d/m;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/d/r;->a:Lcom/xiaomi/d/m;

    .line 1000
    iget-object v2, v2, Lcom/xiaomi/d/m;->a:Ljava/util/List;

    .line 0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/d/n;

    invoke-interface {v0}, Lcom/xiaomi/d/n;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Lcom/xiaomi/d/n;->b()D

    move-result-wide v4

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/d/r;->a:Lcom/xiaomi/d/m;

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/d/m;->a(Lcom/xiaomi/d/m;Ljava/util/List;D)V
    :try_end_1
    .catch Lorg/apache/a/g; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uploadHostStat exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/a/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/d/r;->a:Lcom/xiaomi/d/m;

    .line 2000
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/d/m;->c:Z

    .line 0
    return-void
.end method
