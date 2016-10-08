.class public final Lcom/xiaomi/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/e/e;


# instance fields
.field a:Lcom/xiaomi/push/service/XMPushService;

.field b:Lcom/xiaomi/e/a;

.field c:Ljava/lang/Exception;

.field private d:I


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/f/f;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/e/a;)V
    .locals 3

    .prologue
    .line 0
    sget-object v0, Lcom/xiaomi/push/d/a;->r:Lcom/xiaomi/push/d/a;

    .line 2000
    iget v0, v0, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    invoke-virtual {p1}, Lcom/xiaomi/e/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/e/a;->i()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/f/j;->a(ILjava/lang/String;I)V

    return-void
.end method

.method public final a(Lcom/xiaomi/e/a;ILjava/lang/Exception;)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/f/f;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/f/f;->c:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iput p2, p0, Lcom/xiaomi/f/f;->d:I

    iput-object p3, p0, Lcom/xiaomi/f/f;->c:Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/xiaomi/e/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/xiaomi/f/j;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/xiaomi/e/a;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/f/f;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/xiaomi/push/d/a;->d:Lcom/xiaomi/push/d/a;

    .line 3000
    iget v1, v1, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    invoke-virtual {p1}, Lcom/xiaomi/e/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/f/j;->b(ILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/xiaomi/e/a;)V
    .locals 1

    .prologue
    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/f/f;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/f/f;->c:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/xiaomi/f/f;->b:Lcom/xiaomi/e/a;

    sget-object v0, Lcom/xiaomi/push/d/a;->r:Lcom/xiaomi/push/d/a;

    .line 1000
    iget v0, v0, Lcom/xiaomi/push/d/a;->ac:I

    .line 0
    invoke-static {v0}, Lcom/xiaomi/f/j;->a(I)V

    return-void
.end method
