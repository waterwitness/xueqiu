.class final Lcom/xiaomi/push/service/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/be;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/bd;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/bg;->a:Lcom/xiaomi/push/service/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/service/bf;Lcom/xiaomi/push/service/bf;I)V
    .locals 4

    .prologue
    .line 0
    sget-object v0, Lcom/xiaomi/push/service/bf;->b:Lcom/xiaomi/push/service/bf;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/bg;->a:Lcom/xiaomi/push/service/bd;

    .line 1000
    iget-object v0, v0, Lcom/xiaomi/push/service/bd;->p:Lcom/xiaomi/push/service/XMPushService;

    .line 0
    iget-object v1, p0, Lcom/xiaomi/push/service/bg;->a:Lcom/xiaomi/push/service/bd;

    .line 2000
    iget-object v1, v1, Lcom/xiaomi/push/service/bd;->q:Lcom/xiaomi/push/service/c;

    .line 0
    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/bg;->a:Lcom/xiaomi/push/service/bd;

    .line 3000
    iget-object v0, v0, Lcom/xiaomi/push/service/bd;->p:Lcom/xiaomi/push/service/XMPushService;

    .line 0
    iget-object v1, p0, Lcom/xiaomi/push/service/bg;->a:Lcom/xiaomi/push/service/bd;

    .line 4000
    iget-object v1, v1, Lcom/xiaomi/push/service/bd;->q:Lcom/xiaomi/push/service/c;

    .line 0
    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;)V

    goto :goto_0
.end method
