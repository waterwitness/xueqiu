.class final Lcom/xueqiu/android/common/WebViewActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/WebViewActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WebViewActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const v5, 0xffffff

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WebViewActivity;->a(Lcom/xueqiu/android/common/WebViewActivity;)Lcom/xueqiu/android/base/h5/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WebViewActivity;->a(Lcom/xueqiu/android/common/WebViewActivity;)Lcom/xueqiu/android/base/h5/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/o;->b()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WebViewActivity;->b(Lcom/xueqiu/android/common/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    const-string v0, "#%06X"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/WebViewActivity;->c(Lcom/xueqiu/android/common/WebViewActivity;)I

    move-result v2

    and-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v1, "#%06X"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/WebViewActivity;->d(Lcom/xueqiu/android/common/WebViewActivity;)I

    move-result v3

    and-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:(function () { var styleNode = document.createElement(\'style\'); styleNode.type = \'text/css\'; var styleText = document.createTextNode(\'body {color:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";background: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";}\'); styleNode.appendChild(styleText); document.getElementsByTagName(\'head\')[0].appendChild(styleNode);})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/WebViewActivity;->i()V

    .line 263
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 237
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WebViewActivity;->a(Lcom/xueqiu/android/common/WebViewActivity;)Lcom/xueqiu/android/base/h5/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/o;->c()V

    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 268
    if-eqz p2, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 278
    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 280
    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 317
    :goto_0
    return v0

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/WebViewActivity;->e(Lcom/xueqiu/android/common/WebViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-static {p2}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {p2, v2}, Lcom/xueqiu/android/common/q;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    .line 288
    if-eqz v2, :cond_1

    .line 289
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 290
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/WebViewActivity;->f(Lcom/xueqiu/android/common/WebViewActivity;)Z

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {p2}, Lcom/xueqiu/android/common/WebViewActivity;->b(Ljava/lang/String;)V

    .line 297
    const-string v2, "close://"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/WebViewActivity;->finish()V

    goto :goto_0

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/WebViewActivity;->g(Lcom/xueqiu/android/common/WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    .line 301
    invoke-static {v2}, Lcom/xueqiu/android/common/WebViewActivity;->g(Lcom/xueqiu/android/common/WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    .line 302
    invoke-static {v2}, Lcom/xueqiu/android/common/WebViewActivity;->e(Lcom/xueqiu/android/common/WebViewActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 303
    invoke-static {p2}, Lcom/xueqiu/android/common/WebViewActivity;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 304
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/WebViewActivity;->h(Lcom/xueqiu/android/common/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/WebViewActivity;->h(Lcom/xueqiu/android/common/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/WebViewActivity;->onBackPressed()V

    goto :goto_0

    .line 312
    :cond_4
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ftp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 313
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/WebViewActivity;->h(Lcom/xueqiu/android/common/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity$2;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v1, p2}, Lcom/xueqiu/android/common/WebViewActivity;->a(Lcom/xueqiu/android/common/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 317
    goto/16 :goto_0
.end method
