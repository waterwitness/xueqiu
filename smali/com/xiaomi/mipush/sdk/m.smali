.class final Lcom/xiaomi/mipush/sdk/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/ak;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/g/a/p;

    invoke-direct {v0}, Lcom/xiaomi/g/a/p;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;

    move-result-object v1

    .line 1000
    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/j;->b:Lcom/xiaomi/mipush/sdk/k;

    iget-object v1, v1, Lcom/xiaomi/mipush/sdk/k;->a:Ljava/lang/String;

    .line 2000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->d:Ljava/lang/String;

    .line 0
    const-string v1, "client_info_update"

    .line 3000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->e:Ljava/lang/String;

    .line 0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 4000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->c:Ljava/lang/String;

    .line 0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5000
    iput-object v1, v0, Lcom/xiaomi/g/a/p;->h:Ljava/util/Map;

    .line 6000
    iget-object v1, v0, Lcom/xiaomi/g/a/p;->h:Ljava/util/Map;

    .line 0
    const-string v2, "imei_md5"

    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/push/service/ak;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/f/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/mipush/sdk/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/g/a/a;->i:Lcom/xiaomi/g/a/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/s;->a(Lorg/apache/a/b;Lcom/xiaomi/g/a/a;ZLcom/xiaomi/g/a/d;)V

    :cond_0
    return-void
.end method
