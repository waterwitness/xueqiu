.class final Lcom/xueqiu/android/stock/PrivateFundActivity$19;
.super Lcom/xueqiu/android/base/b/p;
.source "PrivateFundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
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
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$19;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onErrorResponse error = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "private_fund_certified"

    const/4 v1, 0x0

    .line 341
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 340
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v0

    .line 342
    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$19;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->g(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    .line 345
    :cond_0
    return-void

    .line 339
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 336
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1349
    const-string v0, "confirmed"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    const-string v0, "confirmed"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1351
    const-string v1, "private_fund_certified"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1352
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    .line 1351
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putBoolean(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1353
    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onResponse confirmed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$19;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->g(Lcom/xueqiu/android/stock/PrivateFundActivity;)V

    .line 336
    :cond_0
    return-void
.end method
