.class final Lcom/xueqiu/android/trade/c/s$32;
.super Lcom/xueqiu/android/base/b/p;
.source "TradeItemAccountFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/trade/model/AccountFundInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->e(Lcom/xueqiu/android/trade/c/s;)Z

    .line 510
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 512
    check-cast v0, Lcom/xueqiu/android/base/a/a;

    .line 2064
    iget-object v1, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 514
    invoke-static {v1}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2092
    iget-object v1, v0, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 515
    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    sget v2, Lcom/xueqiu/android/trade/c/u;->b:I

    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/base/a/a;I)V

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->f(Lcom/xueqiu/android/trade/c/s;)V

    .line 528
    return-void

    .line 517
    :cond_0
    const-string v1, "79033"

    .line 3064
    iget-object v2, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    .line 3092
    iget-object v0, v0, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 518
    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 519
    :cond_1
    const-string v1, "70004"

    .line 4064
    iget-object v2, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 522
    :cond_2
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 525
    :cond_3
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 506
    check-cast p1, Ljava/util/List;

    .line 4532
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->e(Lcom/xueqiu/android/trade/c/s;)Z

    .line 4533
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    .line 5240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 4533
    if-eqz v0, :cond_1

    .line 4537
    if-eqz p1, :cond_0

    .line 4538
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4539
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4540
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/AccountFundInfo;

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/c/s;Lcom/xueqiu/android/trade/model/AccountFundInfo;)Lcom/xueqiu/android/trade/model/AccountFundInfo;

    .line 4541
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->g(Lcom/xueqiu/android/trade/c/s;)V

    .line 4542
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    const-string v2, "cache_key_fund_info"

    invoke-static {v1, v2}, Lcom/xueqiu/android/trade/c/s;->b(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/s;->h(Lcom/xueqiu/android/trade/c/s;)Lcom/xueqiu/android/trade/model/AccountFundInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4544
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$32;->a:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->f(Lcom/xueqiu/android/trade/c/s;)V

    .line 506
    :cond_1
    return-void
.end method
