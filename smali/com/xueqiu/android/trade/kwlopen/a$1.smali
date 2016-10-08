.class final Lcom/xueqiu/android/trade/kwlopen/a$1;
.super Lorg/apache/cordova/l;
.source "KwlOpenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/kwlopen/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/kwlopen/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/kwlopen/a;Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/xueqiu/android/trade/kwlopen/a$1;->a:Lcom/xueqiu/android/trade/kwlopen/a;

    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/l;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/l;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/l;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 133
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    const-string v0, "file:///android_asset/www/error.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 102
    const-string v0, "shouldOverrideUrlLoading"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x1

    return v0
.end method
