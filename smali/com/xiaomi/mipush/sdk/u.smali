.class final Lcom/xiaomi/mipush/sdk/u;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/s;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/s;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/s;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/s;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/s;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/mipush/sdk/s;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/o;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/o;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/mipush/sdk/s;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/s;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/s;->b(Lcom/xiaomi/mipush/sdk/s;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/s;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/mipush/sdk/s;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/s;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/mipush/sdk/s;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->a:Lcom/xiaomi/mipush/sdk/s;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/s;->d()V

    :cond_0
    return-void
.end method
