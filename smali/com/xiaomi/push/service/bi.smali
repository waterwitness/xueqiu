.class public final Lcom/xiaomi/push/service/bi;
.super Lcom/xiaomi/push/service/u;

# interfaces
.implements Lcom/xiaomi/d/g;


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/push/service/u;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/bi;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/xiaomi/d/h;Ljava/lang/String;)Lcom/xiaomi/d/f;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/service/bk;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaomi/push/service/bk;-><init>(Landroid/content/Context;Lcom/xiaomi/d/h;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/xiaomi/push/b/b;)V
    .locals 6

    .prologue
    .line 0
    .line 5000
    iget-boolean v0, p1, Lcom/xiaomi/push/b/b;->b:Z

    .line 0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Switch to BucketV2 :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6000
    iget-boolean v1, p1, Lcom/xiaomi/push/b/b;->c:Z

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v0

    const-class v1, Lcom/xiaomi/d/f;

    monitor-enter v1

    .line 7000
    :try_start_0
    iget-boolean v2, p1, Lcom/xiaomi/push/b/b;->c:Z

    .line 0
    if-eqz v2, :cond_2

    instance-of v0, v0, Lcom/xiaomi/d/i;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/d/g;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/bi;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/bj;

    invoke-direct {v2}, Lcom/xiaomi/push/service/bj;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/xiaomi/d/f;->a(Landroid/content/Context;Lcom/xiaomi/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    monitor-exit v1

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/d/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/d/f;->a(Lcom/xiaomi/d/g;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/bi;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v2, Lcom/xiaomi/push/service/bj;

    invoke-direct {v2}, Lcom/xiaomi/push/service/bj;-><init>()V

    const-string v3, "0"

    const-string v4, "push"

    const-string v5, "2.2"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/xiaomi/d/f;->a(Landroid/content/Context;Lcom/xiaomi/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/xiaomi/push/b/d;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 1000
    iget-boolean v0, p1, Lcom/xiaomi/push/b/d;->a:Z

    .line 0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/push/service/bi;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fetch bucket :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2000
    iget-boolean v2, p1, Lcom/xiaomi/push/b/d;->b:Z

    .line 0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/push/service/bi;->b:J

    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/f;->d()V

    invoke-virtual {v0}, Lcom/xiaomi/d/f;->e()V

    iget-object v2, p0, Lcom/xiaomi/push/service/bi;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 3000
    iget-object v3, v2, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    .line 0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/e/a;->a()Lcom/xiaomi/e/c;

    move-result-object v2

    .line 4000
    iget-object v2, v2, Lcom/xiaomi/e/c;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v2}, Lcom/xiaomi/d/f;->b(Ljava/lang/String;)Lcom/xiaomi/d/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/d/b;->b()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v2, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/xiaomi/e/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bucket changed, force reconnect"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/bi;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/bi;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
