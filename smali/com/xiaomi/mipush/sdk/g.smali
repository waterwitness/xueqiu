.class public final Lcom/xiaomi/mipush/sdk/g;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mipush/sdk/g;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 0
    sget v0, Lcom/xiaomi/mipush/sdk/g;->a:I

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.xiaomi.mipush.sdk.PushServiceReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/xiaomi/mipush/sdk/g;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2000
    sput v0, Lcom/xiaomi/mipush/sdk/g;->a:I

    .line 0
    :cond_0
    :goto_0
    sget v0, Lcom/xiaomi/mipush/sdk/g;->a:I

    return v0

    :cond_1
    const/4 v0, 0x2

    .line 3000
    sput v0, Lcom/xiaomi/mipush/sdk/g;->a:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/mipush/sdk/d;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v0, Lcom/xiaomi/mipush/sdk/d;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/d;-><init>()V

    .line 4000
    iput-object p0, v0, Lcom/xiaomi/mipush/sdk/d;->a:Ljava/lang/String;

    .line 5000
    iput-object p1, v0, Lcom/xiaomi/mipush/sdk/d;->d:Ljava/util/List;

    .line 6000
    iput-wide p2, v0, Lcom/xiaomi/mipush/sdk/d;->b:J

    .line 7000
    iput-object p4, v0, Lcom/xiaomi/mipush/sdk/d;->c:Ljava/lang/String;

    .line 8000
    iput-object p5, v0, Lcom/xiaomi/mipush/sdk/d;->e:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public static a(Lcom/xiaomi/g/a/z;Lcom/xiaomi/g/a/d;Z)Lcom/xiaomi/mipush/sdk/e;
    .locals 3

    .prologue
    .line 0
    new-instance v0, Lcom/xiaomi/mipush/sdk/e;

    invoke-direct {v0}, Lcom/xiaomi/mipush/sdk/e;-><init>()V

    .line 9000
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->c:Ljava/lang/String;

    .line 10000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->a:Ljava/lang/String;

    .line 11000
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->g:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 12000
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/mipush/sdk/e;->b:I

    .line 13000
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->g:Ljava/lang/String;

    .line 14000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->d:Ljava/lang/String;

    .line 24000
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->k:Ljava/lang/String;

    .line 25000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->m:Ljava/lang/String;

    .line 26000
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->h:Lcom/xiaomi/g/a/b;

    .line 0
    if-eqz v1, :cond_0

    .line 27000
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->h:Lcom/xiaomi/g/a/b;

    .line 28000
    iget-object v1, v1, Lcom/xiaomi/g/a/b;->d:Ljava/lang/String;

    .line 29000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->c:Ljava/lang/String;

    .line 0
    :cond_0
    if-eqz p1, :cond_3

    .line 30000
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->a:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31000
    iget-object v1, p1, Lcom/xiaomi/g/a/d;->a:Ljava/lang/String;

    .line 32000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->a:Ljava/lang/String;

    .line 33000
    :cond_1
    iget-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->e:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34000
    iget-object v1, p1, Lcom/xiaomi/g/a/d;->c:Ljava/lang/String;

    .line 35000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->e:Ljava/lang/String;

    .line 36000
    :cond_2
    iget-object v1, p1, Lcom/xiaomi/g/a/d;->e:Ljava/lang/String;

    .line 37000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->k:Ljava/lang/String;

    .line 38000
    iget-object v1, p1, Lcom/xiaomi/g/a/d;->d:Ljava/lang/String;

    .line 39000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->l:Ljava/lang/String;

    .line 40000
    iget v1, p1, Lcom/xiaomi/g/a/d;->f:I

    .line 41000
    iput v1, v0, Lcom/xiaomi/mipush/sdk/e;->h:I

    .line 42000
    iget v1, p1, Lcom/xiaomi/g/a/d;->i:I

    .line 43000
    iput v1, v0, Lcom/xiaomi/mipush/sdk/e;->i:I

    .line 44000
    iget v1, p1, Lcom/xiaomi/g/a/d;->h:I

    .line 45000
    iput v1, v0, Lcom/xiaomi/mipush/sdk/e;->g:I

    .line 46000
    iget-object v1, p1, Lcom/xiaomi/g/a/d;->j:Ljava/util/Map;

    .line 47000
    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/e;->o:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/xiaomi/mipush/sdk/e;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 48000
    :cond_3
    iput-boolean p2, v0, Lcom/xiaomi/mipush/sdk/e;->j:Z

    .line 0
    return-object v0

    .line 15000
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->f:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 16000
    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaomi/mipush/sdk/e;->b:I

    .line 17000
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->f:Ljava/lang/String;

    .line 18000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->e:Ljava/lang/String;

    goto :goto_0

    .line 19000
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->l:Ljava/lang/String;

    .line 0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 20000
    const/4 v1, 0x3

    iput v1, v0, Lcom/xiaomi/mipush/sdk/e;->b:I

    .line 21000
    iget-object v1, p0, Lcom/xiaomi/g/a/z;->l:Ljava/lang/String;

    .line 22000
    iput-object v1, v0, Lcom/xiaomi/mipush/sdk/e;->f:Ljava/lang/String;

    goto :goto_0

    .line 23000
    :cond_6
    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/mipush/sdk/e;->b:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/d;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v1, Lcom/xiaomi/mipush/sdk/i;

    invoke-direct {v1}, Lcom/xiaomi/mipush/sdk/i;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/xiaomi/mipush/sdk/i;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
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
