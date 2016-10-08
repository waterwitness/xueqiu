.class final Lcom/xiaomi/push/service/aj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/ai;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/ai;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ai;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ai;->a(Lcom/xiaomi/push/service/ai;Z)Z

    iget-object v0, p0, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ai;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/service/ai;->a(Lcom/xiaomi/push/service/ai;J)J

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaomi/push/service/f;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/service/f;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/f;->c()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aj;->a:Lcom/xiaomi/push/service/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/push/service/ai;->a(Lcom/xiaomi/push/service/ai;Z)Z

    return-void
.end method
