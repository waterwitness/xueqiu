.class public final Lcom/xueqiu/android/stock/c/z;
.super Lcom/xueqiu/android/common/c;
.source "StockRemindFragment.java"


# instance fields
.field public a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xueqiu/android/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/z;->e_(Z)V

    .line 41
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/z;->d(I)V

    .line 44
    const v0, 0x7f030150

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 51
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0703c7

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/z;->d(I)V

    .line 1069
    const v0, 0x7f0e0523

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/stock/c/z;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1074
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1081
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/z;->y()Landroid/app/Dialog;

    .line 1085
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1087
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1088
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1089
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1090
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1092
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/common/u;

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/z;->g()Landroid/support/v4/a/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1093
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/stock/c/z$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/stock/c/z$1;-><init>(Lcom/xueqiu/android/stock/c/z;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 57
    const-string v1, "extra_stock_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockQuote;

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/z;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/c/z;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Xueqiu Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/z;->a:Landroid/webkit/WebView;

    const-string v2, "%s?symbol=%s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "https://xueqiu.com/setting/mobile/stock-alert"

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    return-void

    .line 62
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
