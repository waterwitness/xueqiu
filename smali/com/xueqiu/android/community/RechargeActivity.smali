.class public Lcom/xueqiu/android/community/RechargeActivity;
.super Lcom/xueqiu/android/common/b;
.source "RechargeActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;

.field private k:Landroid/webkit/WebView;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 38
    const-string v0, "https://xueqiu.com/c/deposit"

    iput-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->j:Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/xueqiu/android/community/RechargeActivity$2;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/RechargeActivity$2;-><init>(Lcom/xueqiu/android/community/RechargeActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/RechargeActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->p:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x63

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RechargeActivity;->setResult(I)V

    .line 200
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->finish()V

    .line 201
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 206
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/xueqiu/android/community/RechargeActivity;->finish()V

    .line 212
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RechargeActivity;->setContentView(I)V

    .line 45
    const v0, 0x7f070577

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RechargeActivity;->setTitle(I)V

    .line 1064
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RechargeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    .line 1068
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1069
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1072
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1073
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1075
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/common/u;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1076
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/community/RechargeActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/RechargeActivity$1;-><init>(Lcom/xueqiu/android/community/RechargeActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/community/j;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/j;-><init>(Lcom/xueqiu/android/community/RechargeActivity;)V

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/RechargeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/community/RechargeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Xueqiu Android "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xueqiu/android/community/RechargeActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    return-void

    .line 57
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    .line 223
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 224
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    .line 101
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    const-class v2, Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scrollX : %d"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    .line 116
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
    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/community/RechargeActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method
