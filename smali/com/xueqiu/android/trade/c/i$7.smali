.class final Lcom/xueqiu/android/trade/c/i$7;
.super Lcom/xueqiu/android/base/b/p;
.source "PerformanceItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/i;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/i;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->d(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->d(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 415
    :cond_0
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 416
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 409
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 1420
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    .line 2240
    iget-object v1, v1, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 1420
    if-eqz v1, :cond_4

    .line 1425
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/i;->e(Lcom/xueqiu/android/trade/c/i;)I

    move-result v1

    if-le v1, v2, :cond_6

    .line 1426
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Z)Z

    .line 1428
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    .line 1430
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1431
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/xueqiu/android/trade/c/i;->b(Lcom/xueqiu/android/trade/c/i;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1432
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    new-instance v3, Lcom/xueqiu/android/trade/model/MarketIncome;

    invoke-direct {v3}, Lcom/xueqiu/android/trade/model/MarketIncome;-><init>()V

    invoke-static {v2, v3}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Lcom/xueqiu/android/trade/model/MarketIncome;)Lcom/xueqiu/android/trade/model/MarketIncome;

    .line 1434
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1435
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 1437
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 1439
    if-nez v0, :cond_1

    .line 1440
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/MarketIncome;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Lcom/xueqiu/android/trade/model/MarketIncome;)Lcom/xueqiu/android/trade/model/MarketIncome;

    .line 1443
    :cond_1
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v3, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Lcom/google/gson/JsonObject;)V

    .line 1434
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1447
    :cond_2
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_5

    .line 1448
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/i;->f(Lcom/xueqiu/android/trade/c/i;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/MarketIncome;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v3, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1456
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1459
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->g(Lcom/xueqiu/android/trade/c/i;)V

    .line 1460
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->h(Lcom/xueqiu/android/trade/c/i;)V

    .line 1461
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->i(Lcom/xueqiu/android/trade/c/i;)V

    .line 1463
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    const-string v2, "cache_key_total"

    invoke-static {v1, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/i;->j(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/trade/model/MarketIncome;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    const-string v2, "cache_key_market_income"

    invoke-static {v1, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/i;->f(Lcom/xueqiu/android/trade/c/i;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    const-string v2, "cache_key_stock_income"

    invoke-static {v1, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/i;->k(Lcom/xueqiu/android/trade/c/i;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->C()V

    .line 1478
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->d(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1479
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->d(Lcom/xueqiu/android/trade/c/i;)Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;->f()V

    .line 409
    :cond_4
    return-void

    .line 1451
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/google/gson/JsonObject;)Lcom/xueqiu/android/trade/model/MarketIncome;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Lcom/xueqiu/android/trade/model/MarketIncome;)Lcom/xueqiu/android/trade/model/MarketIncome;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1467
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/i;->e(Lcom/xueqiu/android/trade/c/i;)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 1468
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-static {v0, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Z)Z

    .line 1471
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    const-string v2, "cache_key_total"

    invoke-static {v1, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    const-string v2, "cache_key_market_income"

    invoke-static {v1, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$7;->a:Lcom/xueqiu/android/trade/c/i;

    const-string v2, "cache_key_stock_income"

    invoke-static {v1, v2}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
