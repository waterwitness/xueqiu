.class final Lcom/xiaomi/push/service/k;
.super Lcom/xiaomi/push/service/f;


# instance fields
.field a:Lcom/xiaomi/push/service/bd;

.field final synthetic b:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/f;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    iput-object p2, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    sget-object v1, Lcom/xiaomi/push/service/bf;->a:Lcom/xiaomi/push/service/bf;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/bf;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    iget-object v1, v1, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    iget-object v2, v2, Lcom/xiaomi/push/service/bd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    sget-object v1, Lcom/xiaomi/push/service/bf;->b:Lcom/xiaomi/push/service/bf;

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/push/service/bd;->a(Lcom/xiaomi/push/service/bf;IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->e(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/a;->a(Lcom/xiaomi/push/service/bd;)V
    :try_end_0
    .catch Lcom/xiaomi/e/t; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bind the client. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    iget-object v1, v1, Lcom/xiaomi/push/service/bd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/bd;

    iget-object v1, v1, Lcom/xiaomi/push/service/bd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
