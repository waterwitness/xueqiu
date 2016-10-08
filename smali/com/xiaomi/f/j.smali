.class public final Lcom/xiaomi/f/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 0
    sget-object v0, Lcom/xiaomi/push/d/a;->c:Lcom/xiaomi/push/d/a;

    .line 42000
    iget v0, v0, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    sput v0, Lcom/xiaomi/f/j;->a:I

    return-void
.end method

.method public static a()V
    .locals 1

    sget v0, Lcom/xiaomi/f/j;->a:I

    invoke-static {v0}, Lcom/xiaomi/f/j;->a(I)V

    return-void
.end method

.method public static declared-synchronized a(I)V
    .locals 6

    const-class v1, Lcom/xiaomi/f/j;

    monitor-enter v1

    const v0, 0xffffff

    if-ge p0, v0, :cond_0

    or-int/lit8 v0, p0, 0x0

    :try_start_0
    sget-object v2, Lcom/xiaomi/f/k;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "stats key should less than 16777215"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(ILjava/lang/String;I)V
    .locals 8

    .prologue
    .line 0
    const-class v1, Lcom/xiaomi/f/j;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    or-int/lit8 v0, p0, 0x0

    sget-object v4, Lcom/xiaomi/f/k;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32000
    sget-object v4, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v4}, Lcom/xiaomi/f/g;->b()Lcom/xiaomi/push/d/b;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/xiaomi/push/d/b;->a(I)Lcom/xiaomi/push/d/b;

    sget-object v5, Lcom/xiaomi/f/k;->a:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v0, v2

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/d/b;->b(I)Lcom/xiaomi/push/d/b;

    .line 33000
    iput-object p1, v4, Lcom/xiaomi/push/d/b;->e:Ljava/lang/String;

    .line 0
    if-ltz p2, :cond_0

    invoke-virtual {v4, p2}, Lcom/xiaomi/push/d/b;->c(I)Lcom/xiaomi/push/d/b;

    .line 34000
    :cond_0
    sget-object v0, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v0, v4}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/push/d/b;)V

    sget-object v0, Lcom/xiaomi/f/k;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    const-string v0, "stats key not found"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;)V
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lcom/xiaomi/f/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/f/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;)V

    .line 30000
    iget-object v1, v0, Lcom/xiaomi/f/a;->b:Lcom/xiaomi/push/service/bd;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/be;)V

    iget-object v1, v0, Lcom/xiaomi/f/a;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 31000
    iget-object v1, v1, Lcom/xiaomi/push/service/XMPushService;->a:Lcom/xiaomi/e/a;

    .line 30000
    iput-object v1, v0, Lcom/xiaomi/f/a;->c:Lcom/xiaomi/e/a;

    .line 0
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 6

    .prologue
    .line 18000
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v1}, Lcom/xiaomi/f/g;->b()Lcom/xiaomi/push/d/b;

    move-result-object v2

    if-lez p1, :cond_0

    sget-object v1, Lcom/xiaomi/push/d/a;->h:Lcom/xiaomi/push/d/a;

    .line 19000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    invoke-virtual {v2, v1}, Lcom/xiaomi/push/d/b;->a(I)Lcom/xiaomi/push/d/b;

    .line 20000
    iput-object p0, v2, Lcom/xiaomi/push/d/b;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {v2, p1}, Lcom/xiaomi/push/d/b;->b(I)Lcom/xiaomi/push/d/b;

    .line 21000
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v1, v2}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/push/d/b;)V

    :goto_0
    return-void

    .line 22000
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/f/d;->a(Ljava/lang/Exception;)V

    instance-of v1, p2, Lcom/xiaomi/e/t;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/xiaomi/e/t;

    move-object v1, v0

    .line 23000
    iget-object v1, v1, Lcom/xiaomi/e/t;->a:Ljava/lang/Throwable;

    .line 22000
    if-eqz v1, :cond_1

    check-cast p2, Lcom/xiaomi/e/t;

    .line 24000
    iget-object p2, p2, Lcom/xiaomi/e/t;->a:Ljava/lang/Throwable;

    .line 22000
    :cond_1
    new-instance v3, Lcom/xiaomi/f/e;

    invoke-direct {v3}, Lcom/xiaomi/f/e;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/xiaomi/e/d;->a(Ljava/lang/Throwable;)I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v5, Lcom/xiaomi/push/d/a;->h:Lcom/xiaomi/push/d/a;

    .line 25000
    iget v5, v5, Lcom/xiaomi/push/d/a;->ac:I

    .line 22000
    add-int/2addr v4, v5

    invoke-static {v4}, Lcom/xiaomi/push/d/a;->a(I)Lcom/xiaomi/push/d/a;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    :cond_3
    iget-object v4, v3, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    if-nez v4, :cond_4

    sget-object v4, Lcom/xiaomi/push/d/a;->p:Lcom/xiaomi/push/d/a;

    iput-object v4, v3, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    :cond_4
    iget-object v4, v3, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v5, Lcom/xiaomi/push/d/a;->p:Lcom/xiaomi/push/d/a;

    if-ne v4, v5, :cond_5

    iput-object v1, v3, Lcom/xiaomi/f/e;->b:Ljava/lang/String;

    .line 0
    :cond_5
    iget-object v1, v3, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    .line 26000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    invoke-virtual {v2, v1}, Lcom/xiaomi/push/d/b;->a(I)Lcom/xiaomi/push/d/b;

    iget-object v1, v3, Lcom/xiaomi/f/e;->b:Ljava/lang/String;

    .line 27000
    iput-object v1, v2, Lcom/xiaomi/push/d/b;->g:Ljava/lang/String;

    .line 28000
    iput-object p0, v2, Lcom/xiaomi/push/d/b;->e:Ljava/lang/String;

    .line 29000
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v1, v2}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/push/d/b;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 0
    .line 1000
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/f/d;->a(Ljava/lang/Exception;)V

    instance-of v1, p1, Lcom/xiaomi/e/t;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/e/t;

    move-object v1, v0

    .line 2000
    iget-object v1, v1, Lcom/xiaomi/e/t;->a:Ljava/lang/Throwable;

    .line 1000
    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/e/t;

    .line 3000
    iget-object p1, p1, Lcom/xiaomi/e/t;->a:Ljava/lang/Throwable;

    .line 1000
    :cond_0
    new-instance v2, Lcom/xiaomi/f/e;

    invoke-direct {v2}, Lcom/xiaomi/f/e;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/e/d;->a(Ljava/lang/Throwable;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_5

    sget-object v4, Lcom/xiaomi/push/d/a;->r:Lcom/xiaomi/push/d/a;

    .line 4000
    iget v4, v4, Lcom/xiaomi/push/d/a;->ac:I

    .line 1000
    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/xiaomi/push/d/a;->a(I)Lcom/xiaomi/push/d/a;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    iget-object v3, v2, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v4, Lcom/xiaomi/push/d/a;->C:Lcom/xiaomi/push/d/a;

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v3, v3, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/xiaomi/push/d/a;->B:Lcom/xiaomi/push/d/a;

    iput-object v3, v2, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    :cond_2
    :goto_0
    iget-object v3, v2, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v4, Lcom/xiaomi/push/d/a;->z:Lcom/xiaomi/push/d/a;

    if-eq v3, v4, :cond_3

    iget-object v3, v2, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v4, Lcom/xiaomi/push/d/a;->A:Lcom/xiaomi/push/d/a;

    if-eq v3, v4, :cond_3

    iget-object v3, v2, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v4, Lcom/xiaomi/push/d/a;->C:Lcom/xiaomi/push/d/a;

    if-ne v3, v4, :cond_4

    :cond_3
    iput-object v1, v2, Lcom/xiaomi/f/e;->b:Ljava/lang/String;

    .line 5000
    :cond_4
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v1}, Lcom/xiaomi/f/g;->b()Lcom/xiaomi/push/d/b;

    move-result-object v1

    iget-object v3, v2, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    .line 6000
    iget v3, v3, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    invoke-virtual {v1, v3}, Lcom/xiaomi/push/d/b;->a(I)Lcom/xiaomi/push/d/b;

    iget-object v2, v2, Lcom/xiaomi/f/e;->b:Ljava/lang/String;

    .line 7000
    iput-object v2, v1, Lcom/xiaomi/push/d/b;->g:Ljava/lang/String;

    .line 8000
    iput-object p0, v1, Lcom/xiaomi/push/d/b;->e:Ljava/lang/String;

    .line 9000
    sget-object v2, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v2, v1}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/push/d/b;)V

    :goto_1
    return-void

    .line 1000
    :cond_5
    sget-object v3, Lcom/xiaomi/push/d/a;->A:Lcom/xiaomi/push/d/a;

    iput-object v3, v2, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 0
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static b()V
    .locals 3

    sget v0, Lcom/xiaomi/f/j;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/xiaomi/f/j;->a(ILjava/lang/String;I)V

    return-void
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 38000
    sget-object v0, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v0}, Lcom/xiaomi/f/g;->b()Lcom/xiaomi/push/d/b;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/d/a;->ab:Lcom/xiaomi/push/d/a;

    .line 39000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/d/b;->a(I)Lcom/xiaomi/push/d/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/d/b;->c(I)Lcom/xiaomi/push/d/b;

    .line 40000
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v1, v0}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/push/d/b;)V

    return-void
.end method

.method public static b(ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 35000
    sget-object v0, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v0}, Lcom/xiaomi/f/g;->b()Lcom/xiaomi/push/d/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/d/b;->a(B)Lcom/xiaomi/push/d/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/d/b;->a(I)Lcom/xiaomi/push/d/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/d/b;->b(I)Lcom/xiaomi/push/d/b;

    .line 36000
    iput-object p1, v0, Lcom/xiaomi/push/d/b;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, p2}, Lcom/xiaomi/push/d/b;->c(I)Lcom/xiaomi/push/d/b;

    .line 37000
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v1, v0}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/push/d/b;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 0
    .line 10000
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/f/d;->a(Ljava/lang/Exception;)V

    instance-of v1, p1, Lcom/xiaomi/e/t;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/e/t;

    move-object v1, v0

    .line 11000
    iget-object v1, v1, Lcom/xiaomi/e/t;->a:Ljava/lang/Throwable;

    .line 10000
    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/e/t;

    .line 12000
    iget-object p1, p1, Lcom/xiaomi/e/t;->a:Ljava/lang/Throwable;

    .line 10000
    :cond_0
    new-instance v1, Lcom/xiaomi/f/e;

    invoke-direct {v1}, Lcom/xiaomi/f/e;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/xiaomi/e/d;->a(Ljava/lang/Throwable;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sparse-switch v3, :sswitch_data_0

    sget-object v2, Lcom/xiaomi/push/d/a;->X:Lcom/xiaomi/push/d/a;

    iput-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    :cond_1
    :goto_0
    iget-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v3, Lcom/xiaomi/push/d/a;->W:Lcom/xiaomi/push/d/a;

    if-eq v2, v3, :cond_2

    iget-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v3, Lcom/xiaomi/push/d/a;->X:Lcom/xiaomi/push/d/a;

    if-eq v2, v3, :cond_2

    iget-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    sget-object v3, Lcom/xiaomi/push/d/a;->Z:Lcom/xiaomi/push/d/a;

    if-ne v2, v3, :cond_3

    :cond_2
    iput-object v4, v1, Lcom/xiaomi/f/e;->b:Ljava/lang/String;

    .line 13000
    :cond_3
    sget-object v2, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v2}, Lcom/xiaomi/f/g;->b()Lcom/xiaomi/push/d/b;

    move-result-object v2

    iget-object v3, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    .line 14000
    iget v3, v3, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    invoke-virtual {v2, v3}, Lcom/xiaomi/push/d/b;->a(I)Lcom/xiaomi/push/d/b;

    iget-object v1, v1, Lcom/xiaomi/f/e;->b:Ljava/lang/String;

    .line 15000
    iput-object v1, v2, Lcom/xiaomi/push/d/b;->g:Ljava/lang/String;

    .line 16000
    iput-object p0, v2, Lcom/xiaomi/push/d/b;->e:Ljava/lang/String;

    .line 17000
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v1, v2}, Lcom/xiaomi/f/g;->a(Lcom/xiaomi/push/d/b;)V

    :goto_1
    return-void

    .line 10000
    :sswitch_0
    sget-object v2, Lcom/xiaomi/push/d/a;->T:Lcom/xiaomi/push/d/a;

    iput-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    goto :goto_0

    .line 0
    :catch_0
    move-exception v1

    goto :goto_1

    .line 10000
    :sswitch_1
    sget-object v2, Lcom/xiaomi/push/d/a;->U:Lcom/xiaomi/push/d/a;

    iput-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    goto :goto_0

    :sswitch_2
    sget-object v2, Lcom/xiaomi/push/d/a;->V:Lcom/xiaomi/push/d/a;

    iput-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    goto :goto_0

    :sswitch_3
    sget-object v2, Lcom/xiaomi/push/d/a;->W:Lcom/xiaomi/push/d/a;

    iput-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    goto :goto_0

    :sswitch_4
    sget-object v3, Lcom/xiaomi/push/d/a;->Z:Lcom/xiaomi/push/d/a;

    iput-object v3, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;

    const-string v3, "Terminal binding condition encountered: item-not-found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaomi/push/d/a;->Y:Lcom/xiaomi/push/d/a;

    iput-object v2, v1, Lcom/xiaomi/f/e;->a:Lcom/xiaomi/push/d/a;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x6e -> :sswitch_2
        0xc7 -> :sswitch_3
        0x1f3 -> :sswitch_4
    .end sparse-switch
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    const/4 v0, 0x0

    .line 41000
    sget-object v1, Lcom/xiaomi/f/h;->a:Lcom/xiaomi/f/g;

    .line 0
    invoke-virtual {v1}, Lcom/xiaomi/f/g;->a()Lcom/xiaomi/push/d/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/xiaomi/g/a/an;->a(Lorg/apache/a/b;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/a/a/f/a;->a([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stat encoded size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
