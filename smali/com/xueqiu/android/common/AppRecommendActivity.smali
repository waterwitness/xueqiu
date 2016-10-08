.class public Lcom/xueqiu/android/common/AppRecommendActivity;
.super Lcom/xueqiu/android/common/b;
.source "AppRecommendActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f0300c8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/AppRecommendActivity;->setContentView(I)V

    .line 26
    const v0, 0x7f0e032f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/AppRecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 27
    invoke-virtual {p0}, Lcom/xueqiu/android/common/AppRecommendActivity;->h()Landroid/app/Dialog;

    .line 28
    const-string v1, "/service/affiliates?type=android"

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 32
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 33
    new-instance v1, Lcom/xueqiu/android/common/AppRecommendActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/AppRecommendActivity$1;-><init>(Lcom/xueqiu/android/common/AppRecommendActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 42
    return-void
.end method
