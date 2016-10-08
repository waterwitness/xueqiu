.class public Lcom/xueqiu/android/trade/kwlopen/WebCordovaPlugin;
.super Lcom/kwlopen/sdk/b;
.source "WebCordovaPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kwlopen/sdk/b;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/WebCordovaPlugin;->b:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 27
    const v1, 0x7f0e053c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CordovaWebView;

    .line 28
    const-string v1, "file:///android_asset/www/error.html"

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->goBack()V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->reload()V

    goto :goto_0
.end method
