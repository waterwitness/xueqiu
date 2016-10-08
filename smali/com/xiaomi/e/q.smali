.class final Lcom/xiaomi/e/q;
.super Lcom/xiaomi/push/service/f;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xiaomi/e/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/e/p;J)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/e/q;->b:Lcom/xiaomi/e/p;

    iput-wide p2, p0, Lcom/xiaomi/e/q;->a:J

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/e/q;->b:Lcom/xiaomi/e/p;

    invoke-virtual {v0}, Lcom/xiaomi/e/p;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/e/q;->b:Lcom/xiaomi/e/p;

    iget-wide v2, p0, Lcom/xiaomi/e/q;->a:J

    .line 1000
    iget-wide v0, v0, Lcom/xiaomi/e/a;->q:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 0
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/e/q;->b:Lcom/xiaomi/e/p;

    invoke-static {v0}, Lcom/xiaomi/e/p;->a(Lcom/xiaomi/e/p;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :cond_0
    return-void

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "check the ping-pong."

    return-object v0
.end method
