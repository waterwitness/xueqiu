.class final Lcom/xiaomi/e/r;
.super Lcom/xiaomi/push/service/f;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/xiaomi/e/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/e/p;ILjava/lang/Exception;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/e/r;->c:Lcom/xiaomi/e/p;

    iput p2, p0, Lcom/xiaomi/e/r;->a:I

    iput-object p3, p0, Lcom/xiaomi/e/r;->b:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/e/r;->c:Lcom/xiaomi/e/p;

    invoke-static {v0}, Lcom/xiaomi/e/p;->a(Lcom/xiaomi/e/p;)Lcom/xiaomi/push/service/XMPushService;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/e/r;->a:I

    iget-object v2, p0, Lcom/xiaomi/e/r;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shutdown the connection. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/e/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/e/r;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
