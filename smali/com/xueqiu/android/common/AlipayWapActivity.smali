.class public Lcom/xueqiu/android/common/AlipayWapActivity;
.super Lcom/xueqiu/android/common/b;
.source "AlipayWapActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private j:Z

.field private k:Landroid/webkit/WebView;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->j:Z

    .line 29
    iput-boolean v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/AlipayWapActivity;)Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->p:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->p:Z

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Lcom/xueqiu/android/common/AlipayWapActivity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->setContentView(I)V

    .line 1047
    const v0, 0x7f07025e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->setTitle(I)V

    .line 1048
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    .line 1052
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1053
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1054
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1055
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1056
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1057
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1059
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/common/AlipayWapActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/AlipayWapActivity$1;-><init>(Lcom/xueqiu/android/common/AlipayWapActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 39
    invoke-virtual {p0}, Lcom/xueqiu/android/common/AlipayWapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const-string v1, "extra_url_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 157
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    .line 106
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 108
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-boolean v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->p:Z

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/AlipayWapActivity;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Lcom/xueqiu/android/common/AlipayWapActivity;->finish()V

    .line 116
    :goto_0
    const/4 v0, 0x1

    .line 118
    :goto_1
    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    const-class v2, Lcom/xueqiu/android/common/AlipayWapActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scrollX : %d"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    .line 126
    if-gtz v2, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final x_()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/xueqiu/android/common/AlipayWapActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method
