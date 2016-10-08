.class final Lcom/xiaomi/push/service/v;
.super Lcom/xiaomi/a/a/c/d;


# instance fields
.field a:Z

.field final synthetic b:Lcom/xiaomi/push/service/t;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/t;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/t;

    invoke-direct {p0}, Lcom/xiaomi/a/a/c/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/v;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1000
    :try_start_0
    sget-object v0, Lcom/xiaomi/e/e/h;->a:Landroid/content/Context;

    .line 0
    const-string v1, "http://resolver.msg.xiaomi.net/psc/?t=a"

    .line 2000
    new-instance v2, Lcom/xiaomi/d/l;

    invoke-direct {v2}, Lcom/xiaomi/d/l;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/xiaomi/d/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/d/j;)Ljava/lang/String;

    move-result-object v0

    .line 0
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3000
    new-instance v1, Lcom/xiaomi/push/b/b;

    invoke-direct {v1}, Lcom/xiaomi/push/b/b;-><init>()V

    .line 4000
    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/a/a/e;->a([BI)Lcom/google/a/a/e;

    move-result-object v0

    .line 3000
    check-cast v0, Lcom/xiaomi/push/b/b;

    check-cast v0, Lcom/xiaomi/push/b/b;

    .line 0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/t;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/t;->a(Lcom/xiaomi/push/service/t;Lcom/xiaomi/push/b/b;)Lcom/xiaomi/push/b/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/v;->a:Z

    iget-object v0, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/t;

    invoke-static {v0}, Lcom/xiaomi/push/service/t;->a(Lcom/xiaomi/push/service/t;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetch config failure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/t;

    invoke-static {v0}, Lcom/xiaomi/push/service/t;->b(Lcom/xiaomi/push/service/t;)Lcom/xiaomi/a/a/c/d;

    iget-boolean v0, p0, Lcom/xiaomi/push/service/v;->a:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/t;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/t;

    invoke-static {v0}, Lcom/xiaomi/push/service/t;->c(Lcom/xiaomi/push/service/t;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/t;

    invoke-static {v2}, Lcom/xiaomi/push/service/t;->c(Lcom/xiaomi/push/service/t;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/xiaomi/push/service/u;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/u;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/xiaomi/push/service/v;->b:Lcom/xiaomi/push/service/t;

    invoke-static {v4}, Lcom/xiaomi/push/service/t;->d(Lcom/xiaomi/push/service/t;)Lcom/xiaomi/push/b/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/u;->a(Lcom/xiaomi/push/b/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
