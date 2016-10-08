.class public final Lcom/xueqiu/android/stock/d/a$6;
.super Lcom/xueqiu/android/base/b/p;
.source "QuotesCenterItemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/d/a;
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
.field final synthetic a:Lcom/xueqiu/android/stock/d/a;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/d/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/xueqiu/android/stock/d/a$6;->a:Lcom/xueqiu/android/stock/d/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 248
    const-string v0, "private_fund_certified"

    const/4 v1, 0x0

    .line 249
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 248
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v0

    .line 250
    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$6;->a:Lcom/xueqiu/android/stock/d/a;

    .line 1057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    .line 251
    invoke-interface {v0}, Lcom/xueqiu/android/stock/b/c;->D_()V

    .line 253
    :cond_0
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 254
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 245
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1258
    const-string v0, "confirmed"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1259
    const-string v0, "confirmed"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1260
    const-string v1, "private_fund_certified"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1261
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    .line 1260
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putBoolean(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 1262
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/xueqiu/android/stock/d/a$6;->a:Lcom/xueqiu/android/stock/d/a;

    .line 2057
    iget-object v0, v0, Lcom/xueqiu/android/stock/d/a;->b:Lcom/xueqiu/android/stock/b/c;

    .line 1263
    invoke-interface {v0}, Lcom/xueqiu/android/stock/b/c;->D_()V

    .line 245
    :cond_0
    return-void
.end method
