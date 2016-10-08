.class public Lorg/apache/cordova/l;
.super Landroid/webkit/WebViewClient;
.source "CordovaWebViewClient.java"


# static fields
.field private static final CORDOVA_EXEC_URL_PREFIX:Ljava/lang/String; = "http://cdv_exec/"

.field private static final TAG:Ljava/lang/String; = "CordovaWebViewClient"


# instance fields
.field appView:Lorg/apache/cordova/CordovaWebView;

.field private authenticationTokens:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/a;",
            ">;"
        }
    .end annotation
.end field

.field cordova:Lorg/apache/cordova/f;

.field private doClearHistory:Z

.field helper:Lorg/apache/cordova/j;

.field isCurrentlyLoading:Z


# direct methods
.method public constructor <init>(Lorg/apache/cordova/f;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/l;->doClearHistory:Z

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    .line 77
    iput-object p1, p0, Lorg/apache/cordova/l;->cordova:Lorg/apache/cordova/f;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/l;->doClearHistory:Z

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    .line 87
    iput-object p1, p0, Lorg/apache/cordova/l;->cordova:Lorg/apache/cordova/f;

    .line 88
    iput-object p2, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    .line 89
    new-instance v0, Lorg/apache/cordova/j;

    invoke-direct {v0, p1, p2}, Lorg/apache/cordova/j;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    iput-object v0, p0, Lorg/apache/cordova/l;->helper:Lorg/apache/cordova/j;

    .line 90
    return-void
.end method

.method private handleExecUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x23

    const/4 v3, -0x1

    .line 107
    const/16 v0, 0x11

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 108
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 109
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 110
    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    if-ne v2, v3, :cond_1

    .line 111
    :cond_0
    const-string v0, "CordovaWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not decode URL command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_1
    const/16 v3, 0x10

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 115
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    iget-object v4, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v4, v4, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    invoke-virtual {v4, v3, v0, v1, v2}, Lorg/apache/cordova/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearAuthenticationTokens()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 391
    return-void
.end method

.method public getAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/a;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/a;

    .line 368
    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/a;

    .line 373
    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/a;

    .line 378
    :cond_0
    if-nez v0, :cond_1

    .line 379
    iget-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/a;

    .line 383
    :cond_1
    return-object v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lorg/apache/cordova/l;->isCurrentlyLoading:Z

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iput-boolean v3, p0, Lorg/apache/cordova/l;->isCurrentlyLoading:Z

    .line 199
    const-string v0, "CordovaWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lorg/apache/cordova/l;->doClearHistory:Z

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 209
    iput-boolean v3, p0, Lorg/apache/cordova/l;->doClearHistory:Z

    .line 213
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    iget v1, v0, Lorg/apache/cordova/CordovaWebView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/cordova/CordovaWebView;->c:I

    .line 216
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1, p2}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 220
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/cordova/l$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/l$1;-><init>(Lorg/apache/cordova/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    :cond_3
    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "exit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/l;->isCurrentlyLoading:Z

    .line 170
    const-string v0, "CordovaWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->d:Lorg/apache/cordova/p;

    invoke-virtual {v0}, Lorg/apache/cordova/p;->a()V

    .line 175
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1, p2}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->a:Lorg/apache/cordova/x;

    invoke-virtual {v0}, Lorg/apache/cordova/x;->c()V

    .line 181
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 254
    iget-boolean v0, p0, Lorg/apache/cordova/l;->isCurrentlyLoading:Z

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v0, "CordovaWebViewClient"

    const-string v1, "CordovaWebViewClient.onReceivedError: Error code=%s Description=%s URL=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    iget v1, v0, Lorg/apache/cordova/CordovaWebView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/cordova/CordovaWebView;->c:I

    .line 265
    const/16 v0, -0xa

    if-ne p2, v0, :cond_2

    .line 266
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 270
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 277
    :try_start_0
    const-string v0, "errorCode"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string v0, "description"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v0, "url"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_1
    iget-object v0, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v2, "onReceivedError"

    invoke-virtual {v0, v2, v1}, Lorg/apache/cordova/CordovaWebView;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0, p3, p4}, Lorg/apache/cordova/l;->getAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/a;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 1034
    iget-object v1, v0, Lorg/apache/cordova/a;->a:Ljava/lang/String;

    .line 1053
    iget-object v0, v0, Lorg/apache/cordova/a;->b:Ljava/lang/String;

    .line 149
    invoke-virtual {p2, v1, v0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/cordova/l;->cordova:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lorg/apache/cordova/l;->cordova:Lorg/apache/cordova/f;

    invoke-interface {v1}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 305
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 306
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 318
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public removeAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/a;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/a;

    return-object v0
.end method

.method public setAuthenticationToken(Lorg/apache/cordova/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    if-nez p2, :cond_0

    .line 330
    const-string p2, ""

    .line 332
    :cond_0
    if-nez p3, :cond_1

    .line 333
    const-string p3, ""

    .line 335
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/l;->authenticationTokens:Ljava/util/Hashtable;

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void
.end method

.method public setWebView(Lorg/apache/cordova/CordovaWebView;)V
    .locals 2

    .prologue
    .line 98
    iput-object p1, p0, Lorg/apache/cordova/l;->appView:Lorg/apache/cordova/CordovaWebView;

    .line 99
    new-instance v0, Lorg/apache/cordova/j;

    iget-object v1, p0, Lorg/apache/cordova/l;->cordova:Lorg/apache/cordova/f;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/j;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    iput-object v0, p0, Lorg/apache/cordova/l;->helper:Lorg/apache/cordova/j;

    .line 100
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/cordova/l;->helper:Lorg/apache/cordova/j;

    invoke-virtual {v0, p2}, Lorg/apache/cordova/j;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
