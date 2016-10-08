.class public final Lcom/xiaomi/push/service/aq;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/g/a/n;)Lcom/xiaomi/g/a/n;
    .locals 6

    .prologue
    .line 1000
    new-instance v0, Lcom/xiaomi/g/a/h;

    invoke-direct {v0}, Lcom/xiaomi/g/a/h;-><init>()V

    .line 2000
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    .line 3000
    iput-object v1, v0, Lcom/xiaomi/g/a/h;->d:Ljava/lang/String;

    .line 4000
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 1000
    if-eqz v1, :cond_0

    .line 5000
    iget-object v2, v1, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 6000
    iput-object v2, v0, Lcom/xiaomi/g/a/h;->c:Ljava/lang/String;

    .line 7000
    iget-wide v2, v1, Lcom/xiaomi/g/a/d;->b:J

    .line 1000
    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/g/a/h;->a(J)Lcom/xiaomi/g/a/h;

    .line 8000
    iget-object v2, v1, Lcom/xiaomi/g/a/d;->c:Ljava/lang/String;

    .line 1000
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9000
    iget-object v1, v1, Lcom/xiaomi/g/a/d;->c:Ljava/lang/String;

    .line 10000
    iput-object v1, v0, Lcom/xiaomi/g/a/h;->f:Ljava/lang/String;

    .line 11000
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->f:Ljava/lang/String;

    .line 12000
    iget-object v2, p0, Lcom/xiaomi/g/a/n;->e:Ljava/lang/String;

    .line 1000
    sget-object v3, Lcom/xiaomi/g/a/a;->f:Lcom/xiaomi/g/a/a;

    invoke-static {v1, v2, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/a/b;Lcom/xiaomi/g/a/a;)Lcom/xiaomi/g/a/n;

    move-result-object v0

    .line 13000
    iget-object v1, p0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 14000
    new-instance v2, Lcom/xiaomi/g/a/d;

    invoke-direct {v2, v1}, Lcom/xiaomi/g/a/d;-><init>(Lcom/xiaomi/g/a/d;)V

    .line 1000
    const-string v1, "mat"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/g/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15000
    iput-object v2, v0, Lcom/xiaomi/g/a/n;->h:Lcom/xiaomi/g/a/d;

    .line 0
    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/am;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/al;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "token-expired"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/push/service/al;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/push/service/al;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/xiaomi/push/service/al;->f:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/xiaomi/push/service/am;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/al;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.mipush.miui.CLICK_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xiaomi.mipush.miui.RECEIVE_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x20

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/16 v4, 0x20

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method
