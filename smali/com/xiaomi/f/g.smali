.class public final Lcom/xiaomi/f/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field b:I

.field c:J

.field d:Lcom/xiaomi/f/f;

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/a/a/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/f/g;->a:Z

    .line 1000
    invoke-static {}, Lcom/xiaomi/a/a/e/b;->a()Lcom/xiaomi/a/a/e/a;

    move-result-object v0

    .line 0
    iput-object v0, p0, Lcom/xiaomi/f/g;->f:Lcom/xiaomi/a/a/e/a;

    return-void
.end method

.method private a(I)Lcom/xiaomi/push/d/d;
    .locals 8

    .prologue
    .line 0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/xiaomi/push/d/d;

    iget-object v0, p0, Lcom/xiaomi/f/g;->e:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/xiaomi/push/d/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/xiaomi/f/g;->d:Lcom/xiaomi/f/f;

    iget-object v0, v0, Lcom/xiaomi/f/f;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/a/a/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/f/g;->d:Lcom/xiaomi/f/f;

    iget-object v0, v0, Lcom/xiaomi/f/f;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/ak;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5000
    iput-object v0, v3, Lcom/xiaomi/push/d/d;->b:Ljava/lang/String;

    .line 0
    :cond_0
    new-instance v4, Lorg/apache/a/c/b;

    invoke-direct {v4, p1}, Lorg/apache/a/c/b;-><init>(I)V

    new-instance v0, Lorg/apache/a/b/o;

    invoke-direct {v0}, Lorg/apache/a/b/o;-><init>()V

    invoke-virtual {v0, v4}, Lorg/apache/a/b/o;->a(Lorg/apache/a/c/d;)Lorg/apache/a/b/h;

    move-result-object v5

    :try_start_0
    invoke-virtual {v3, v5}, Lcom/xiaomi/push/d/d;->b(Lorg/apache/a/b/h;)V
    :try_end_0
    .catch Lorg/apache/a/g; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->f:Lcom/xiaomi/a/a/e/a;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/e/a;->b()Ljava/util/LinkedList;

    move-result-object v6

    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/a/a/e/b;

    .line 6000
    const/4 v1, 0x0

    iget v7, v0, Lcom/xiaomi/a/a/e/b;->a:I

    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/xiaomi/a/a/e/b;->c:Ljava/lang/Object;

    instance-of v7, v7, Lcom/xiaomi/push/d/b;

    if-eqz v7, :cond_5

    iget-object v0, v0, Lcom/xiaomi/a/a/e/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/d/b;

    .line 0
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/d/b;->b(Lorg/apache/a/b/h;)V

    .line 9000
    :cond_1
    iget-object v1, v4, Lorg/apache/a/c/b;->a:Lorg/apache/a/e;

    invoke-virtual {v1}, Lorg/apache/a/e;->size()I

    move-result v1

    .line 0
    if-gt v1, p1, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/a/g; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stat approximate size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10000
    iget-object v1, v4, Lorg/apache/a/c/b;->a:Lorg/apache/a/e;

    invoke-virtual {v1}, Lorg/apache/a/e;->size()I

    move-result v1

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    return-object v3

    .line 6000
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/xiaomi/f/g;->b()Lcom/xiaomi/push/d/b;

    move-result-object v1

    sget-object v7, Lcom/xiaomi/push/d/a;->ab:Lcom/xiaomi/push/d/a;

    .line 7000
    iget v7, v7, Lcom/xiaomi/push/d/a;->ac:I

    .line 6000
    invoke-virtual {v1, v7}, Lcom/xiaomi/push/d/b;->a(I)Lcom/xiaomi/push/d/b;

    iget v7, v0, Lcom/xiaomi/a/a/e/b;->a:I

    invoke-virtual {v1, v7}, Lcom/xiaomi/push/d/b;->c(I)Lcom/xiaomi/push/d/b;

    iget-object v0, v0, Lcom/xiaomi/a/a/e/b;->b:Ljava/lang/String;

    .line 8000
    iput-object v0, v1, Lcom/xiaomi/push/d/b;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/a/g; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method final declared-synchronized a()Lcom/xiaomi/push/d/d;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 0
    monitor-enter p0

    const/4 v0, 0x0

    .line 3000
    :try_start_0
    iget-boolean v2, p0, Lcom/xiaomi/f/g;->a:Z

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/f/g;->c:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/xiaomi/f/g;->b:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaomi/f/g;->a:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/f/g;->c:J

    .line 2000
    :cond_0
    iget-boolean v2, p0, Lcom/xiaomi/f/g;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/f/g;->f:Lcom/xiaomi/a/a/e/a;

    invoke-virtual {v2}, Lcom/xiaomi/a/a/e/a;->a()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 0
    :cond_1
    if-eqz v1, :cond_3

    const/16 v0, 0x2ee

    .line 4000
    sget-object v1, Lcom/xiaomi/e/e/h;->a:Landroid/content/Context;

    .line 0
    invoke-static {v1}, Lcom/xiaomi/a/a/d/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x177

    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaomi/f/g;->a(I)Lcom/xiaomi/push/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Lcom/xiaomi/push/d/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/f/g;->f:Lcom/xiaomi/a/a/e/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/a/a/e/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/e/p;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/f/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/f/f;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/f/g;->d:Lcom/xiaomi/f/f;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/f/g;->e:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/f/g;->d:Lcom/xiaomi/f/f;

    invoke-virtual {p2, v0}, Lcom/xiaomi/e/p;->a(Lcom/xiaomi/e/e;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/service/t;->a()Lcom/xiaomi/push/service/t;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/f/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/f/i;-><init>(Lcom/xiaomi/f/g;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/t;->a(Lcom/xiaomi/push/service/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b()Lcom/xiaomi/push/d/b;
    .locals 6

    .prologue
    .line 0
    new-instance v0, Lcom/xiaomi/push/d/b;

    invoke-direct {v0}, Lcom/xiaomi/push/d/b;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/f/g;->d:Lcom/xiaomi/f/f;

    iget-object v1, v1, Lcom/xiaomi/f/f;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/a/a/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 11000
    iput-object v1, v0, Lcom/xiaomi/push/d/b;->d:Ljava/lang/String;

    .line 0
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/d/b;->a:B

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/d/b;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 12000
    iput v1, v0, Lcom/xiaomi/push/d/b;->i:I

    invoke-virtual {v0}, Lcom/xiaomi/push/d/b;->a()V

    .line 0
    iget-object v1, p0, Lcom/xiaomi/f/g;->d:Lcom/xiaomi/f/f;

    iget-object v1, v1, Lcom/xiaomi/f/f;->b:Lcom/xiaomi/e/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/f/g;->d:Lcom/xiaomi/f/f;

    iget-object v1, v1, Lcom/xiaomi/f/f;->b:Lcom/xiaomi/e/a;

    invoke-virtual {v1}, Lcom/xiaomi/e/a;->e()I

    move-result v1

    .line 13000
    iput v1, v0, Lcom/xiaomi/push/d/b;->j:I

    invoke-virtual {v0}, Lcom/xiaomi/push/d/b;->b()V

    .line 0
    :cond_0
    return-object v0
.end method
