.class final Lcom/tencent/open/p;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/tauth/IRequestListener;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/tencent/open/OpenApi;


# direct methods
.method constructor <init>(Lcom/tencent/open/OpenApi;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/tencent/open/p;->g:Lcom/tencent/open/OpenApi;

    iput-object p2, p0, Lcom/tencent/open/p;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/open/p;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/open/p;->c:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/open/p;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iput-object p7, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/p;->g:Lcom/tencent/open/OpenApi;

    iget-object v1, p0, Lcom/tencent/open/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/open/p;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/open/p;->c:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/open/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/open/OpenApi;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V

    .line 452
    const-string v0, "openSDK_LOG"

    const-string v1, "OpenApi onComplete"

    invoke-static {v0, v1}, Lcom/tencent/record/debug/WnsClientLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/tencent/open/NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/tencent/open/HttpStatusException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 457
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi requestAsync MalformedURLException"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 459
    :catch_1
    move-exception v0

    .line 460
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V

    .line 462
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi requestAsync onConnectTimeoutException"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 464
    :catch_2
    move-exception v0

    .line 465
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V

    .line 467
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi requestAsync onSocketTimeoutException"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 469
    :catch_3
    move-exception v0

    .line 470
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V

    .line 472
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi requestAsync onNetworkUnavailableException"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 474
    :catch_4
    move-exception v0

    .line 475
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V

    .line 477
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi requestAsync onHttpStatusException"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 479
    :catch_5
    move-exception v0

    .line 480
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 482
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi requestAsync IOException"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 484
    :catch_6
    move-exception v0

    .line 485
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V

    .line 487
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi requestAsync JSONException"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 489
    :catch_7
    move-exception v0

    .line 490
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/tencent/open/p;->e:Lcom/tencent/tauth/IRequestListener;

    iget-object v2, p0, Lcom/tencent/open/p;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/tencent/tauth/IRequestListener;->onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 492
    const-string v1, "openSDK_LOG"

    const-string v2, "OpenApi requestAsync onUnknowException"

    invoke-static {v1, v2, v0}, Lcom/tencent/record/debug/WnsClientLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
