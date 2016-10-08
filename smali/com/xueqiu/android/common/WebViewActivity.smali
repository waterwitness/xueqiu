.class public Lcom/xueqiu/android/common/WebViewActivity;
.super Lcom/xueqiu/android/common/b;
.source "WebViewActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private j:Z

.field private k:Ljava/lang/String;

.field private p:Landroid/webkit/WebView;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Landroid/widget/ProgressBar;

.field private u:Lcom/xueqiu/android/base/h5/o;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->j:Z

    .line 67
    iput-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity;->u:Lcom/xueqiu/android/base/h5/o;

    .line 76
    iput-boolean v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->v:Z

    .line 494
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/WebViewActivity;)Lcom/xueqiu/android/base/h5/o;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->u:Lcom/xueqiu/android/base/h5/o;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/xueqiu/android/common/WebViewActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 383
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    const-string v2, "com.android.providers.downloads.ui"

    const-string v3, "com.android.providers.downloads.ui.DownloadList"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 391
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/WebViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    .line 3547
    const-string v0, "js://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3551
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 3553
    invoke-static {p0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3554
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3555
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    :cond_0
    :goto_0
    return-void

    .line 3556
    :cond_1
    invoke-static {p0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3557
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3558
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/WebViewActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->r:I

    return v0
.end method

.method static synthetic c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    .line 4470
    const-string v0, ".pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".PDF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 55
    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/WebViewActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->s:I

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/WebViewActivity;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/xueqiu/android/common/WebViewActivity;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/WebViewActivity;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->v:Z

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/common/WebViewActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/common/WebViewActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/common/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->t:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_from_ad"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/xueqiu/android/common/WebViewActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 3193
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->c:Z

    .line 2448
    if-nez v0, :cond_1

    .line 2449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2450
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 2451
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2452
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2453
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 443
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->finish()V

    .line 444
    return-void

    .line 2456
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2460
    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2461
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WebViewActivity;->setTitle(I)V

    .line 83
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    const-string v0, "extra_url_path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    .line 86
    invoke-static {p0}, Lcom/xueqiu/android/base/util/ao;->a(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WebViewActivity;->setContentView(I)V

    .line 1135
    :goto_0
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    .line 1137
    const v0, 0x7f0e016b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->t:Landroid/widget/ProgressBar;

    .line 1138
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->t:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1140
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1143
    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Xueqiu Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    new-instance v2, Lcom/xueqiu/android/common/ab;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/ab;-><init>(Lcom/xueqiu/android/common/WebViewActivity;)V

    const-string v3, "AndroidShareJsObject"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1156
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1157
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1158
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1159
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1160
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1161
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1162
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 1164
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    new-instance v2, Lcom/xueqiu/android/common/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/WebViewActivity$1;-><init>(Lcom/xueqiu/android/common/WebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1225
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    new-instance v2, Lcom/xueqiu/android/common/WebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/WebViewActivity$2;-><init>(Lcom/xueqiu/android/common/WebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1324
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    new-instance v2, Lcom/xueqiu/android/common/WebViewActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/WebViewActivity$3;-><init>(Lcom/xueqiu/android/common/WebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 99
    new-instance v0, Lcom/xueqiu/android/base/h5/o;

    iget-object v2, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    const v3, 0x7f0e0387

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/base/h5/o;-><init>(Landroid/webkit/WebView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->u:Lcom/xueqiu/android/base/h5/o;

    .line 101
    const-string v0, "extra_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "extra_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    .line 107
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    sget-object v2, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/xueqiu/android/common/WebViewActivity;->r:I

    .line 111
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->s:I

    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    iget v1, p0, Lcom/xueqiu/android/common/WebViewActivity;->s:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    .line 1485
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_3

    .line 1487
    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 118
    :cond_3
    return-void

    .line 92
    :cond_4
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WebViewActivity;->setContentView(I)V

    .line 93
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    goto/16 :goto_0

    .line 1145
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 105
    :array_0
    .array-data 4
        0x7f010053
        0x7f010052
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 403
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x7f0100a3

    aput v2, v1, v3

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 407
    const-string v1, "\u66f4\u591a"

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 408
    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    .line 409
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 410
    invoke-static {v2, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 412
    const v0, 0x7f07024e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v5, v3, v0}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 413
    const/4 v0, 0x3

    const v2, 0x7f0700c0

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 414
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 477
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 478
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    .line 481
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 482
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    .line 347
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 349
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 352
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xueqiu/android/common/b;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 419
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 420
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    .line 421
    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 425
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 434
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 426
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 427
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    .line 428
    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    sget-object v1, Lcom/xueqiu/android/common/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_3
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 432
    const-string v0, "\u5df2\u590d\u5236\u5230\u526a\u5207\u677f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 539
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 541
    invoke-direct {p0}, Lcom/xueqiu/android/common/WebViewActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->v:Z

    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->finish()V

    .line 544
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onStart()V

    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onStop()V

    .line 131
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 132
    return-void
.end method

.method protected final w_()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/xueqiu/android/common/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "un_support_back"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 361
    if-eqz v1, :cond_0

    .line 362
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v1

    .line 365
    if-gtz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final x_()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity;->p:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method
