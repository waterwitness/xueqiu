.class public Lcom/sina/weibo/sdk/auth/WeiboDialog;
.super Landroid/app/Dialog;
.source "WeiboDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeiboDialog"

.field private static final WEBVIEW_CONTAINER_MARGIN_TOP:I = 0x19

.field private static final WEBVIEW_MARGIN:I = 0xa

.field private static theme:I


# instance fields
.field private mAuthUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsDetached:Z

.field private mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private mLoadingDlg:Landroid/app/ProgressDialog;

.field private mRootContainer:Landroid/widget/RelativeLayout;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewContainer:Landroid/widget/RelativeLayout;

.field private mWeibo:Lcom/sina/weibo/sdk/auth/WeiboAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const v0, 0x1030010

    sput v0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->theme:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;Lcom/sina/weibo/sdk/auth/WeiboAuth;)V
    .locals 1

    .prologue
    .line 93
    sget v0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->theme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z

    .line 94
    iput-object p2, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mAuthUrl:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 96
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;

    .line 97
    iput-object p4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWeibo:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    .line 98
    return-void
.end method

.method static synthetic access$0(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Lcom/sina/weibo/sdk/auth/WeiboAuth;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWeibo:Lcom/sina/weibo/sdk/auth/WeiboAuth;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/auth/WeiboDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->handleRedirectUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z

    return v0
.end method

.method static synthetic access$4(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/auth/WeiboDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private handleRedirectUrl(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 355
    invoke-static {p1}, Lcom/sina/weibo/sdk/utils/Utility;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 357
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 359
    const-string v3, "error_description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 362
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onComplete(Landroid/os/Bundle;)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    .line 365
    new-instance v4, Lcom/sina/weibo/sdk/exception/WeiboAuthException;

    invoke-direct {v4, v2, v1, v3}, Lcom/sina/weibo/sdk/exception/WeiboAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-interface {v0, v4}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0
.end method

.method private initCloseButton()V
    .locals 6

    .prologue
    const/4 v4, -0x2

    .line 250
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 251
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 252
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    new-instance v0, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog$1;-><init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x5

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 270
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x5

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 271
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    return-void
.end method

.method private initLoadingDlg()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 187
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    .line 189
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 191
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method

.method private initWebView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 199
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    .line 200
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    .line 201
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 204
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;-><init>(Lcom/sina/weibo/sdk/auth/WeiboDialog;Lcom/sina/weibo/sdk/auth/WeiboDialog$WeiboWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 205
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 206
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 207
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mAuthUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->clearCookies(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mAuthUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 213
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 220
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 221
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 222
    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 223
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 224
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getNinePatchDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 226
    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v3, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 232
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 242
    const/high16 v3, 0x41c80000    # 25.0f

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 243
    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void
.end method

.method private initWindow()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->requestWindowFeature(I)Z

    .line 174
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 175
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 177
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    .line 178
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 179
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mRootContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mLoadingDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z

    .line 131
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 132
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 108
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/auth/WeiboAuthListener;->onCancel()V

    .line 111
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->initWindow()V

    .line 162
    invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->initLoadingDlg()V

    .line 164
    invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->initWebView()V

    .line 166
    invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/WeiboDialog;->initCloseButton()V

    .line 167
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebViewContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 142
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 143
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mWebView:Landroid/webkit/WebView;

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/auth/WeiboDialog;->mIsDetached:Z

    .line 148
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 149
    return-void
.end method
