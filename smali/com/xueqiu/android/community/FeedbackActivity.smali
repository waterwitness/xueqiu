.class public Lcom/xueqiu/android/community/FeedbackActivity;
.super Lcom/xueqiu/android/common/b;
.source "FeedbackActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field private k:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "/service/app_feedback"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/FeedbackActivity;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/FeedbackActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FeedbackActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FeedbackActivity;->setTitle(I)V

    .line 1051
    const v0, 0x7f0e016a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    .line 1052
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1056
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1063
    :cond_0
    invoke-virtual {p0}, Lcom/xueqiu/android/community/FeedbackActivity;->h()Landroid/app/Dialog;

    .line 1067
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1068
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 1069
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 1071
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1072
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1073
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/common/u;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/u;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1075
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/xueqiu/android/community/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/FeedbackActivity$1;-><init>(Lcom/xueqiu/android/community/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 45
    const v0, 0x7f07015a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/FeedbackActivity;->setTitle(I)V

    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    sget-object v1, Lcom/xueqiu/android/community/FeedbackActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 100
    iget-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/FeedbackActivity;->k:Landroid/webkit/WebView;

    .line 103
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 104
    return-void
.end method
