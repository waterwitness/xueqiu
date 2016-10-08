.class final Lcom/xueqiu/android/trade/c$2;
.super Lcom/xueqiu/android/base/b/p;
.source "RefreshTradeTokenHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c$2;->b:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 384
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 362
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1366
    const-string v0, "trade"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1367
    if-eqz v0, :cond_0

    .line 1370
    const-string v1, "broker_list"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1371
    invoke-static {v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonArray;)Ljava/util/List;

    move-result-object v0

    .line 1372
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradeAccountByStockBrokers(Ljava/util/List;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v1

    .line 1373
    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradableBrokers(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1374
    if-nez v1, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$2;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v2, p0, Lcom/xueqiu/android/trade/c$2;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/xueqiu/android/trade/c$2;->b:Landroid/content/Intent;

    .line 2049
    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v0, v4}, Lcom/xueqiu/android/trade/c;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method
