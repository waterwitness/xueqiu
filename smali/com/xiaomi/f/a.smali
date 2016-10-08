.class final Lcom/xiaomi/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/be;


# instance fields
.field a:Lcom/xiaomi/push/service/XMPushService;

.field b:Lcom/xiaomi/push/service/bd;

.field c:Lcom/xiaomi/e/a;

.field d:Lcom/xiaomi/push/service/bf;

.field e:I

.field f:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/bd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/f/a;->f:Z

    iput-object p1, p0, Lcom/xiaomi/f/a;->a:Lcom/xiaomi/push/service/XMPushService;

    sget-object v0, Lcom/xiaomi/push/service/bf;->b:Lcom/xiaomi/push/service/bf;

    iput-object v0, p0, Lcom/xiaomi/f/a;->d:Lcom/xiaomi/push/service/bf;

    iput-object p2, p0, Lcom/xiaomi/f/a;->b:Lcom/xiaomi/push/service/bd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/push/service/bf;Lcom/xiaomi/push/service/bf;I)V
    .locals 4

    .prologue
    .line 0
    iget-boolean v0, p0, Lcom/xiaomi/f/a;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/push/service/bf;->b:Lcom/xiaomi/push/service/bf;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/xiaomi/f/a;->d:Lcom/xiaomi/push/service/bf;

    iput p3, p0, Lcom/xiaomi/f/a;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/f/a;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/f/a;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/f/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/f/c;-><init>(Lcom/xiaomi/f/a;)V

    .line 1000
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    .line 0
    return-void
.end method
