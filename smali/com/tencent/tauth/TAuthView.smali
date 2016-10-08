.class public Lcom/tencent/tauth/TAuthView;
.super Landroid/app/Activity;
.source "TAuthView.java"


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final AUTH_BROADCAST:Ljava/lang/String; = "com.tencent.auth.BROWSER"

.field public static final CALLBACK:Ljava/lang/String; = "callback"

.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final ERROR_DES:Ljava/lang/String; = "error_description"

.field public static final ERROR_RET:Ljava/lang/String; = "error"

.field public static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final SCOPE:Ljava/lang/String; = "scope"

.field public static final TARGET:Ljava/lang/String; = "target"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field private mAccessToken:Ljava/lang/String;

.field private mAuthResult:Ljava/lang/String;

.field private mCallback:Ljava/lang/String;

.field private mErrorDes:Ljava/lang/String;

.field private mExpiresIn:Ljava/lang/String;

.field private mGraphURL:Ljava/lang/String;

.field private mRet:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field protected root:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-string v0, "auth://tauth.qq.com/"

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->mCallback:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/tencent/tauth/TAuthView$1;

    invoke-direct {v0, p0}, Lcom/tencent/tauth/TAuthView$1;-><init>(Lcom/tencent/tauth/TAuthView;)V

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->handler:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->root:Landroid/widget/LinearLayout;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/tauth/TAuthView;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/tauth/TAuthView;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/tauth/TAuthView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->mCallback:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/tauth/TAuthView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/tencent/tauth/TAuthView;->parseResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/tencent/tauth/TAuthView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tencent/tauth/TAuthView;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/tencent/tauth/TAuthView;->returnResult()V

    return-void
.end method

.method private getIp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 179
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0

    .line 180
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 181
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 183
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 185
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "TAG"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMachine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method private parseResult(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 135
    iput-object p1, p0, Lcom/tencent/tauth/TAuthView;->mAuthResult:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView;->mCallback:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 146
    array-length v4, v2

    move v0, v1

    .line 148
    :goto_1
    if-lt v0, v4, :cond_1

    .line 154
    const-string v0, "access_token"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->mAccessToken:Ljava/lang/String;

    .line 155
    const-string v0, "expires_in"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->mExpiresIn:Ljava/lang/String;

    .line 156
    const-string v0, "error"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->mRet:Ljava/lang/String;

    .line 157
    const-string v0, "error_description"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->mErrorDes:Ljava/lang/String;

    .line 158
    return-void

    .line 140
    :cond_0
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    aget-object v5, v2, v0

    .line 150
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 151
    aget-object v6, v5, v1

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private returnResult()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/tencent/tauth/TAuthView;->sendBroadcastResult()V

    .line 162
    invoke-virtual {p0}, Lcom/tencent/tauth/TAuthView;->finish()V

    .line 163
    return-void
.end method

.method private sendBroadcastResult()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.auth.BROWSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v1, "raw"

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView;->mAuthResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "expires_in"

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView;->mExpiresIn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "error"

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView;->mRet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "error_description"

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView;->mErrorDes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Lcom/tencent/tauth/TAuthView;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->root:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0x800

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://graph.qq.com/oauth2.0/authorize?response_type=token&display=mobile&client_id=%s&scope=%s&redirect_uri=%s&status_userip=%s&status_os=%s&status_machine=%s&status_version=%s#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->mGraphURL:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/tencent/tauth/TAuthView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    const-string v1, "client_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v2, "scope"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string v3, "callback"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    iput-object v3, p0, Lcom/tencent/tauth/TAuthView;->mCallback:Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/tencent/tauth/TAuthView;->mGraphURL:Ljava/lang/String;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    aput-object v2, v4, v5

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView;->mCallback:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/tencent/tauth/TAuthView;->getIp()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/tencent/tauth/TAuthView;->getOS()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/tencent/tauth/TAuthView;->getMachine()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/tencent/tauth/TAuthView;->getVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "target"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v2, "_blank"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/tencent/tauth/TAuthView;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/tencent/tauth/TAuthView;->finish()V

    .line 132
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0, v5}, Lcom/tencent/tauth/TAuthView;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {p0}, Lcom/tencent/tauth/TAuthView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 108
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->root:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->root:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    .line 112
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->root:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 115
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/tauth/e;

    invoke-direct {v2, p0, v7}, Lcom/tencent/tauth/e;-><init>(Lcom/tencent/tauth/TAuthView;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 117
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 118
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 119
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 120
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/tauth/d;

    invoke-direct {v2, p0, v7}, Lcom/tencent/tauth/d;-><init>(Lcom/tencent/tauth/TAuthView;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/tauth/TAuthView;->setContentView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tauth/TAuthView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/tencent/tauth/TAuthView;->parseResult(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/tencent/tauth/TAuthView;->sendBroadcastResult()V

    .line 129
    invoke-virtual {p0}, Lcom/tencent/tauth/TAuthView;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 215
    :cond_0
    return-void
.end method
