.class final Lcom/xueqiu/android/trade/c/a$8;
.super Lcom/xueqiu/android/base/b/p;
.source "BindBrokerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/a;
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

.field final synthetic b:Lcom/xueqiu/android/trade/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/a;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    iput-object p3, p0, Lcom/xueqiu/android/trade/c/a$8;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 280
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 281
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->z()V

    .line 282
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 276
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1286
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->z()V

    .line 1288
    const-string v0, "write_access_token"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    const-string v0, "write_access_token"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    const-string v1, "aid"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 1291
    new-instance v2, Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    invoke-direct {v2}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;-><init>()V

    .line 1292
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->setAid(Ljava/lang/String;)V

    .line 1293
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a$8;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->setTid(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->setWriteToken(Ljava/lang/String;)V

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1296
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/trade/model/BrokerAccountToken;)V

    .line 1298
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->i(Lcom/xueqiu/android/trade/c/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1299
    const-string v0, "success_url"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "success_url"

    .line 1300
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 2197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1300
    if-nez v0, :cond_1

    .line 1301
    const-string v0, "success_url"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 1302
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1309
    :goto_0
    const-string v0, "\u6dfb\u52a0\u6210\u529f!"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1316
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/a/k;->setResult(I)V

    .line 1317
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 276
    :cond_0
    return-void

    .line 1304
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/a;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1305
    const-string v1, "extra_notification"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1306
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1307
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/a;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 1313
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$8;->b:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.updateBrokerTokenSuccess"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_1
.end method
