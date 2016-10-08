.class public final Lorg/apache/cordova/n;
.super Lorg/apache/cordova/l;
.source "IceCreamCordovaWebViewClient.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/l;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 53
    .line 1080
    :try_start_0
    const-string v3, "http:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {p2}, Lorg/apache/cordova/c;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string v3, "app_webview"

    .line 1081
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v3, v0

    .line 53
    :goto_0
    if-eqz v3, :cond_4

    .line 54
    const-string v0, "IceCreamCordovaWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL blocked by whitelist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/cordova/o;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/plain"

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 75
    :goto_1
    return-object v0

    :cond_3
    move v3, v2

    .line 1081
    goto :goto_0

    .line 59
    :cond_4
    iget-object v3, p0, Lorg/apache/cordova/n;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/h;

    move-result-object v4

    .line 60
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 62
    invoke-virtual {v4, v5}, Lorg/apache/cordova/h;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 64
    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1089
    invoke-static {v5}, Lorg/apache/cordova/h;->a(Landroid/net/Uri;)I

    move-result v3

    if-ne v3, v0, :cond_9

    .line 1092
    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    :cond_5
    move v3, v0

    .line 64
    :goto_2
    if-nez v3, :cond_6

    .line 2085
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v3, v7, :cond_a

    const-string v3, "content"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 64
    :goto_3
    if-eqz v0, :cond_b

    .line 65
    :cond_6
    invoke-virtual {v4, v6}, Lorg/apache/cordova/h;->c(Landroid/net/Uri;)Lorg/apache/cordova/i;

    move-result-object v2

    .line 66
    new-instance v0, Landroid/webkit/WebResourceResponse;

    iget-object v3, v2, Lorg/apache/cordova/i;->c:Ljava/lang/String;

    const-string v4, "UTF-8"

    iget-object v2, v2, Lorg/apache/cordova/i;->b:Ljava/io/InputStream;

    invoke-direct {v0, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_7

    .line 72
    const-string v2, "IceCreamCordovaWebViewClient"

    const-string v3, "Error occurred while loading a file (returning a 404)."

    invoke-static {v2, v3, v0}, Lorg/apache/cordova/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_7
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "text/plain"

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_1

    .line 1096
    :cond_8
    :try_start_1
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v3, :pswitch_data_0

    :cond_9
    move v3, v2

    .line 1105
    goto :goto_2

    :pswitch_0
    move v3, v0

    .line 1103
    goto :goto_2

    :cond_a
    move v0, v2

    .line 2085
    goto :goto_3

    :cond_b
    move-object v0, v1

    .line 69
    goto :goto_1

    .line 1100
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
