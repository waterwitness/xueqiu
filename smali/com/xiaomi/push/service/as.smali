.class final Lcom/xiaomi/push/service/as;
.super Lcom/xiaomi/push/service/f;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic b:Lcom/xiaomi/g/a/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/g/a/n;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/as;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p2, p0, Lcom/xiaomi/push/service/as;->b:Lcom/xiaomi/g/a/n;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/as;->b:Lcom/xiaomi/g/a/n;

    invoke-static {v0}, Lcom/xiaomi/push/service/aq;->a(Lcom/xiaomi/g/a/n;)Lcom/xiaomi/g/a/n;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/as;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/g/a/n;)V
    :try_end_0
    .catch Lcom/xiaomi/e/t; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/as;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "send ack message for message."

    return-object v0
.end method
