.class final Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;
.super Ljava/lang/Object;
.source "RegisterCompleteUserInfoActivity.java"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    const-string v1, "nickname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->a(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    const-string v1, "figureurl_2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->b(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    new-instance v1, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12$1;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$12;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 490
    return-void

    .line 481
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method public final onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public final onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public final onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public final onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public final onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public final onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 530
    return-void
.end method
