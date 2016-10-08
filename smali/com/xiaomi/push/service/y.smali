.class final Lcom/xiaomi/push/service/y;
.super Lcom/xiaomi/e/c;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/e/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 3

    :try_start_0
    new-instance v0, Lcom/xiaomi/push/b/d;

    invoke-direct {v0}, Lcom/xiaomi/push/b/d;-><init>()V

    invoke-static {}, Lcom/xiaomi/push/service/t;->a()Lcom/xiaomi/push/service/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/t;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/b/d;->a(I)Lcom/xiaomi/push/b/d;

    invoke-virtual {v0}, Lcom/xiaomi/push/b/d;->b()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOBBString err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
