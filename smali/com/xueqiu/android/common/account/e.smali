.class public final Lcom/xueqiu/android/common/account/e;
.super Ljava/lang/Object;
.source "ThirdAuthHelp.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/c;


# direct methods
.method protected constructor <init>(Lcom/xueqiu/android/common/account/c;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    .line 8500
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 321
    return-void
.end method

.method public final onComplete(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    .line 1500
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3059
    iput-wide v2, v0, Lcom/xueqiu/android/common/account/c;->f:J

    .line 301
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "openid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    .line 5059
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->e:Ljava/lang/String;

    .line 306
    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    const-string v1, "qq"

    .line 6059
    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->c:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/c;->a(Lcom/xueqiu/android/common/account/c;)V

    .line 310
    :cond_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/xueqiu/android/common/account/e;->a:Lcom/xueqiu/android/common/account/c;

    .line 7500
    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 316
    return-void
.end method
