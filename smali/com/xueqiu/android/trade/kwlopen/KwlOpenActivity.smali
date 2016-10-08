.class public Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;
.super Lcom/xueqiu/android/common/b;
.source "KwlOpenActivity.java"


# static fields
.field public static j:Lorg/apache/cordova/g;


# instance fields
.field private k:Landroid/view/View;

.field private p:Lcom/xueqiu/android/trade/kwlopen/a;

.field private q:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->k:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->q:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u5f00\u6237"

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6211\u8981\u9000\u51fa"

    new-instance v2, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity$1;-><init>(Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;)V

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u9000\u51fa\u540e\u9700\u91cd\u65b0\u5f00\u59cb\uff0c\u60a8\u786e\u8ba4\u8981\u9000\u51fa\u5f00\u6237\u6d41\u7a0b\u4e48\uff1f"

    .line 106
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->q:Landroid/app/AlertDialog;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->q:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 110
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f07045d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->setTitle(I)V

    .line 44
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->k:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->k:Landroid/view/View;

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 47
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->finish()V

    .line 62
    :goto_0
    return-void

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    invoke-static {v0}, Lcom/xueqiu/android/trade/kwlopen/a;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/kwlopen/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->p:Lcom/xueqiu/android/trade/kwlopen/a;

    .line 55
    invoke-virtual {p0}, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->c()Landroid/support/v4/a/q;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/q;->a()Landroid/support/v4/a/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->k:Landroid/view/View;

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->p:Lcom/xueqiu/android/trade/kwlopen/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/ac;->a(ILandroid/support/v4/a/i;)Landroid/support/v4/a/ac;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/a/ac;->d()I

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->setContentView(Landroid/view/View;)V

    .line 1267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/b;->m:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    sget-object v0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    iget-object v0, v0, Lorg/apache/cordova/g;->a:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    iget-object v1, v0, Lorg/apache/cordova/g;->a:Lorg/apache/cordova/CordovaWebView;

    .line 80
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 84
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 85
    sget-object v0, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    iput-object v2, v0, Lorg/apache/cordova/g;->a:Lorg/apache/cordova/CordovaWebView;

    .line 87
    :cond_1
    sput-object v2, Lcom/xueqiu/android/trade/kwlopen/KwlOpenActivity;->j:Lorg/apache/cordova/g;

    .line 89
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.updateBrokerList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 91
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 67
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 68
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onStop()V

    .line 73
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 74
    return-void
.end method
