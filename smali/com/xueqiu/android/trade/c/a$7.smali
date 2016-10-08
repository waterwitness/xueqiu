.class final Lcom/xueqiu/android/trade/c/a$7;
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
.field final synthetic a:Lcom/xueqiu/android/trade/c/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/a;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/a$7;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$7;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->z()V

    .line 228
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 230
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_1

    .line 231
    check-cast p1, Lcom/xueqiu/android/base/a/a;

    .line 1092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 232
    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 233
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 234
    const-string v1, "need_captcha"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4092
    iget-object v0, p1, Lcom/xueqiu/android/base/a/a;->data:Lcom/google/gson/JsonObject;

    .line 235
    const-string v1, "need_captcha"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$7;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->h(Lcom/xueqiu/android/trade/c/a;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$7;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/a;->a(Lcom/xueqiu/android/trade/c/a;Lcom/xueqiu/android/base/a/a;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$7;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->d(Lcom/xueqiu/android/trade/c/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$7;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/a;->g(Lcom/xueqiu/android/trade/c/a;)V

    .line 246
    :cond_2
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 224
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 4250
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4251
    const-string v0, "callback"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 4252
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4253
    const-string v1, "auth_code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4253
    if-nez v1, :cond_0

    .line 4254
    const-string v1, "auth_code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4255
    const-string v2, "tid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4256
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/a$7;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-static {v2, v0, v1}, Lcom/xueqiu/android/trade/c/a;->a(Lcom/xueqiu/android/trade/c/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 4258
    :cond_0
    :goto_0
    return-void

    .line 4259
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/a$7;->a:Lcom/xueqiu/android/trade/c/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/a;->z()V

    goto :goto_0
.end method
