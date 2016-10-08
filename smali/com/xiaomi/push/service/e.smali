.class public final Lcom/xiaomi/push/service/e;
.super Lcom/xiaomi/push/service/f;


# instance fields
.field public a:I

.field public b:Ljava/lang/Exception;

.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/e;->c:Lcom/xiaomi/push/service/XMPushService;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/f;-><init>(I)V

    iput p2, p0, Lcom/xiaomi/push/service/e;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/e;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/service/e;->c:Lcom/xiaomi/push/service/XMPushService;

    iget v1, p0, Lcom/xiaomi/push/service/e;->a:I

    iget-object v2, p0, Lcom/xiaomi/push/service/e;->b:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "disconnect the connection."

    return-object v0
.end method
