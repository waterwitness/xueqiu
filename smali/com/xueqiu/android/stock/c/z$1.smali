.class final Lcom/xueqiu/android/stock/c/z$1;
.super Landroid/webkit/WebViewClient;
.source "StockRemindFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/z;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/z;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/z;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/z$1;->a:Lcom/xueqiu/android/stock/c/z;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z$1;->a:Lcom/xueqiu/android/stock/c/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/z;->z()V

    .line 98
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z$1;->a:Lcom/xueqiu/android/stock/c/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/z;->y()Landroid/app/Dialog;

    .line 105
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "js:searchStock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return v2

    .line 114
    :cond_0
    const-string v0, "https://xueqiu.com/S/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://xueqiu.com/S/"

    .line 115
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z$1;->a:Lcom/xueqiu/android/stock/c/z;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/z;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :cond_2
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
