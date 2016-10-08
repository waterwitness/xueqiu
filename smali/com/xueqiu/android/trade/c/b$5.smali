.class final Lcom/xueqiu/android/trade/c/b$5;
.super Lcom/xueqiu/android/base/b/p;
.source "InputPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/b;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$5;->b:Lcom/xueqiu/android/trade/c/b;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/b$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 518
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 519
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$5;->b:Lcom/xueqiu/android/trade/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->b()V

    .line 520
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 515
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1524
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$5;->b:Lcom/xueqiu/android/trade/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->b()V

    .line 1525
    const-string v0, "write_access_token"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1526
    const-string v0, "write_access_token"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 1527
    const-string v1, "aid"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 1529
    new-instance v2, Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    invoke-direct {v2}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;-><init>()V

    .line 1530
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->setAid(Ljava/lang/String;)V

    .line 1531
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$5;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->setTid(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->setWriteToken(Ljava/lang/String;)V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1533
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/trade/model/BrokerAccountToken;)V

    .line 1535
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$5;->b:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->q(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/c/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$5;->b:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->q(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/trade/c/d;->a()V

    .line 1537
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/b;->a(J)J

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$5;->b:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->l(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$5;->b:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->l(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->setTid(Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$5;->b:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->e(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 515
    :cond_1
    return-void
.end method
