.class public final Lcom/xueqiu/android/trade/kwlopen/a;
.super Landroid/support/v4/a/i;
.source "KwlOpenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/apache/cordova/f;


# static fields
.field private static d:Landroid/widget/ProgressBar;


# instance fields
.field a:Lorg/apache/cordova/CordovaWebView;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/a/i;-><init>()V

    .line 37
    const-string v0, "Xueqiu Android "

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->b:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->c:Ljava/util/concurrent/ExecutorService;

    .line 41
    const-string v0, "Xueqiu Android "

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xueqiu/android/trade/kwlopen/a;
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/xueqiu/android/trade/kwlopen/a;

    invoke-direct {v0}, Lcom/xueqiu/android/trade/kwlopen/a;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v2, "arg_url"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/trade/kwlopen/a;->e(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method

.method static synthetic b()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/xueqiu/android/trade/kwlopen/a;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/kwlopen/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/kwlopen/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/a/k;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Xueqiu Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->e:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    new-instance v0, Lcom/kwlopen/sdk/a;

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/kwlopen/a;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kwlopen/sdk/a;-><init>(Landroid/content/Context;Lorg/apache/cordova/f;)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    const v1, 0x7f0301ef

    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    const v0, 0x7f0e053c

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CordovaWebView;

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    .line 74
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/kwlopen/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/cordova/c;->a(Landroid/app/Activity;)V

    .line 76
    const v0, 0x7f0e053b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/xueqiu/android/trade/kwlopen/a;->d:Landroid/widget/ProgressBar;

    .line 84
    const-string v0, "*"

    invoke-static {v0}, Lorg/apache/cordova/c;->a(Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 86
    if-eqz v0, :cond_0

    .line 2564
    iget-object v0, p0, Landroid/support/v4/a/i;->r:Landroid/os/Bundle;

    .line 87
    const-string v2, "arg_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 92
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 95
    iget-object v2, p0, Lcom/xueqiu/android/trade/kwlopen/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    new-instance v2, Lcom/xueqiu/android/trade/kwlopen/a$1;

    iget-object v3, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v2, p0, p0, v3}, Lcom/xueqiu/android/trade/kwlopen/a$1;-><init>(Lcom/xueqiu/android/trade/kwlopen/a;Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/l;)V

    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    new-instance v2, Lcom/xueqiu/android/trade/kwlopen/a$2;

    iget-object v3, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v2, p0, p0, v3}, Lcom/xueqiu/android/trade/kwlopen/a$2;-><init>(Lcom/xueqiu/android/trade/kwlopen/a;Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/e;)V

    .line 156
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/a/i;->a(IILandroid/content/Intent;)V

    .line 241
    sget-object v0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    if-nez v0, :cond_0

    .line 243
    const-string v0, "cordovaPlugin\u63d2\u4ef6\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/g;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/i;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/support/v4/a/i;->e()V

    .line 232
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->a()V

    .line 235
    :cond_0
    return-void
.end method

.method public final synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/a/i;->g()Landroid/support/v4/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final o()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/a/i;->o()V

    .line 169
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 206
    :sswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/www/error.html"

    iget-object v1, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    .line 207
    invoke-virtual {v1}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->goBack()V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/kwlopen/a;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->onBackPressed()V

    goto :goto_0

    .line 216
    :sswitch_1
    const-string v0, "file:///android_asset/www/error.html"

    iget-object v1, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->goBack()V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/a;->a:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->reload()V

    goto :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x7f0e05a1 -> :sswitch_1
        0x7f0e06d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/support/v4/a/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 256
    return-void
.end method

.method public final onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    const-string v0, "onMessage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/support/v4/a/i;->q()V

    .line 262
    return-void
.end method

.method public final startActivityForResult(Lorg/apache/cordova/g;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    if-nez v0, :cond_0

    .line 196
    sput-object p1, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    .line 198
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/xueqiu/android/trade/kwlopen/a;->a(Landroid/content/Intent;I)V

    .line 199
    return-void
.end method
