.class public Lcom/kwlopen/sdk/activity/KwlOpenActivity;
.super Landroid/app/Activity;
.source "KwlOpenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/apache/cordova/f;


# static fields
.field public static cordovaPlugin:Lorg/apache/cordova/g;


# instance fields
.field private backBtn:Landroid/widget/ImageButton;

.field private canBack:Z

.field cordovaWebView:Lorg/apache/cordova/CordovaWebView;

.field private openUrl:Ljava/lang/String;

.field private pbLoading:Landroid/widget/ProgressBar;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshBtn:Landroid/widget/ImageButton;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private title:Ljava/lang/String;

.field private titleBar:Landroid/widget/RelativeLayout;

.field private titleBarBg:I

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaPlugin:Lorg/apache/cordova/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->openUrl:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->title:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->canBack:Z

    .line 47
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->titleBarBg:I

    return-void
.end method

.method static synthetic access$000(Lcom/kwlopen/sdk/activity/KwlOpenActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwlopen/sdk/activity/KwlOpenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const-string v1, "openUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "canBack"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v1, "titleBarBg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 51
    const/high16 v0, -0x1000000

    invoke-static {p0, p1, p2, v0, p3}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 52
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 266
    return-object p0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    const-string v0, "onActivityResult webMallFragment"

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaPlugin:Lorg/apache/cordova/g;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cordovaPlugin\u63d2\u4ef6\u4e3a\u7a7a "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    const-string v0, "=====================                   =================="

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaPlugin:Lorg/apache/cordova/g;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/g;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "titlebar_ibtn_left"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->goBack()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "title_refresh"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->startRefresh()V

    .line 219
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->openUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/CordovaWebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->openUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->reload()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 249
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->requestWindowFeature(I)Z

    .line 69
    const-string v0, "kwlopen_my_cordova_frag"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "openUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->openUrl:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->title:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "canBack"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->canBack:Z

    .line 73
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "titleBarBg"

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->titleBarBg:I

    .line 74
    const-string v0, "cordovaWebView"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CordovaWebView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    .line 75
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/cordova/c;->a(Landroid/app/Activity;)V

    .line 77
    const-string v0, "progressBar1"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 78
    const-string v0, "pb_title_refresh"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->pbLoading:Landroid/widget/ProgressBar;

    .line 79
    const-string v0, "title_refresh"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->refreshBtn:Landroid/widget/ImageButton;

    .line 80
    const-string v0, "titlebar_ibtn_left"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->backBtn:Landroid/widget/ImageButton;

    .line 81
    const-string v0, "titleBar"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->titleBar:Landroid/widget/RelativeLayout;

    .line 82
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->titleBar:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->titleBarBg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 83
    iget-boolean v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->canBack:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 88
    :goto_0
    const-string v0, "titlebar_tv_title"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->tvTitle:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->backBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->refreshBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const-string v0, "*"

    invoke-static {v0}, Lorg/apache/cordova/c;->a(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->openUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :goto_1
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->backBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->openUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 102
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 103
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Lcom/kwlopen/sdk/activity/KwlOpenActivity$1;

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v1, p0, p0, v2}, Lcom/kwlopen/sdk/activity/KwlOpenActivity$1;-><init>(Lcom/kwlopen/sdk/activity/KwlOpenActivity;Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/l;)V

    .line 148
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v1, p0, p0, v2}, Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;-><init>(Lcom/kwlopen/sdk/activity/KwlOpenActivity;Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/e;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 255
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->a()V

    .line 259
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaPlugin:Lorg/apache/cordova/g;

    .line 260
    const-string v0, "onActivityResult onDestroy"

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    const-string v0, "onMessage"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    const-string v0, "onActivityResult onResume"

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setActivityResultCallback(Lorg/apache/cordova/g;)V
    .locals 1

    .prologue
    .line 191
    const-string v0, "webMallFragment setActivityResultCallback"

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaPlugin:Lorg/apache/cordova/g;

    if-nez v0, :cond_0

    .line 193
    sput-object p1, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaPlugin:Lorg/apache/cordova/g;

    .line 197
    :cond_0
    return-void
.end method

.method public startActivityForResult(Lorg/apache/cordova/g;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaPlugin:Lorg/apache/cordova/g;

    if-nez v0, :cond_0

    .line 202
    sput-object p1, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->cordovaPlugin:Lorg/apache/cordova/g;

    .line 204
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    const-string v0, "startActivityForResult webMallFragment"

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public startRefresh()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->refreshBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->pbLoading:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->refreshBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->pbLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 284
    return-void
.end method
