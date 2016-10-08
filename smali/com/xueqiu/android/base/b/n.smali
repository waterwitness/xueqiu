.class public final Lcom/xueqiu/android/base/b/n;
.super Ljava/lang/Object;
.source "QQAuthorize.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/m;


# direct methods
.method protected constructor <init>(Lcom/xueqiu/android/base/b/m;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/xueqiu/android/base/b/n;->a:Lcom/xueqiu/android/base/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final onComplete(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/b/n;->a:Lcom/xueqiu/android/base/b/m;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    iput-object v1, v0, Lcom/xueqiu/android/base/b/m;->c:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/xueqiu/android/base/b/n;->a:Lcom/xueqiu/android/base/b/m;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2030
    iput-wide v2, v0, Lcom/xueqiu/android/base/b/m;->e:J

    .line 116
    iget-object v0, p0, Lcom/xueqiu/android/base/b/n;->a:Lcom/xueqiu/android/base/b/m;

    const-string v1, "openid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3030
    iput-object v1, v0, Lcom/xueqiu/android/base/b/m;->d:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/base/b/n;->a:Lcom/xueqiu/android/base/b/m;

    .line 4030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->g:Lcom/xueqiu/android/base/b/h;

    .line 118
    invoke-interface {v0}, Lcom/xueqiu/android/base/b/h;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/xueqiu/android/base/b/n;->a:Lcom/xueqiu/android/base/b/m;

    .line 5030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/base/b/n;->a:Lcom/xueqiu/android/base/b/m;

    .line 6030
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->a:Landroid/app/Activity;

    .line 121
    iget-object v1, p0, Lcom/xueqiu/android/base/b/n;->a:Lcom/xueqiu/android/base/b/m;

    .line 7030
    iget-object v1, v1, Lcom/xueqiu/android/base/b/m;->h:Lcom/xueqiu/android/base/b/o;

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .prologue
    .line 131
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

    .line 132
    return-void
.end method
