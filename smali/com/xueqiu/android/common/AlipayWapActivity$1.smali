.class final Lcom/xueqiu/android/common/AlipayWapActivity$1;
.super Landroid/webkit/WebViewClient;
.source "AlipayWapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/AlipayWapActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/AlipayWapActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/AlipayWapActivity;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/xueqiu/android/common/AlipayWapActivity$1;->a:Lcom/xueqiu/android/common/AlipayWapActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity$1;->a:Lcom/xueqiu/android/common/AlipayWapActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->i()V

    .line 70
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity$1;->a:Lcom/xueqiu/android/common/AlipayWapActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->h()Landroid/app/Dialog;

    .line 65
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 76
    if-eqz p2, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    const-string v0, "js://rechargeSucceed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity$1;->a:Lcom/xueqiu/android/common/AlipayWapActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/AlipayWapActivity;->setResult(I)V

    .line 87
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity$1;->a:Lcom/xueqiu/android/common/AlipayWapActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->finish()V

    .line 96
    :goto_0
    return v2

    .line 89
    :cond_0
    const-string v0, "js://rechargeFailed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity$1;->a:Lcom/xueqiu/android/common/AlipayWapActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_1
    const-string v0, "cashier/asyn_payment_result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity$1;->a:Lcom/xueqiu/android/common/AlipayWapActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->a(Lcom/xueqiu/android/common/AlipayWapActivity;)Z

    .line 95
    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
