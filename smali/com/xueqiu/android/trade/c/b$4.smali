.class final Lcom/xueqiu/android/trade/c/b$4;
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
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->b()V

    .line 454
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_4

    .line 455
    check-cast p1, Lcom/xueqiu/android/base/a/a;

    .line 456
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->o(Lcom/xueqiu/android/trade/c/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 457
    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 458
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 459
    const-string v1, "need_captcha"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 460
    const-string v1, "need_captcha"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->p(Lcom/xueqiu/android/trade/c/b;)Z

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/b;->a(J)J

    .line 466
    :cond_0
    const-string v0, "72102"

    .line 5064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "72103"

    .line 6064
    iget-object v1, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    .line 468
    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->o(Lcom/xueqiu/android/trade/c/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->p(Lcom/xueqiu/android/trade/c/b;)Z

    .line 7064
    :cond_2
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 473
    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->e(Ljava/lang/String;)Z

    move-result v0

    .line 474
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/b;->q(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/c/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 475
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/b;->q(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v2}, Lcom/xueqiu/android/trade/c/b;->l(Lcom/xueqiu/android/trade/c/b;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v3}, Lcom/xueqiu/android/trade/c/b;->o(Lcom/xueqiu/android/trade/c/b;)Z

    move-result v3

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/xueqiu/android/trade/c/d;->a(Lcom/xueqiu/android/trade/model/TradeAccount;ZLcom/xueqiu/android/base/a/a;Z)V

    .line 480
    :cond_3
    :goto_0
    return-void

    .line 478
    :cond_4
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 450
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 7484
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7485
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 7486
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7487
    const-string v1, "auth_code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 7487
    if-nez v1, :cond_0

    .line 7488
    const-string v1, "auth_code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7489
    const-string v2, "tid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7490
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/b$4;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v2, v0, v1}, Lcom/xueqiu/android/trade/c/b;->a(Lcom/xueqiu/android/trade/c/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method
