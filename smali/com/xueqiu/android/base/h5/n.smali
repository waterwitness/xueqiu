.class public final Lcom/xueqiu/android/base/h5/n;
.super Landroid/webkit/WebViewClient;
.source "WebviewClientImpl.java"


# instance fields
.field private final a:Lcom/xueqiu/android/base/h5/l;

.field private b:Lcom/xueqiu/android/base/h5/o;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/base/h5/l;Lcom/xueqiu/android/base/h5/o;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/base/h5/n;->b:Lcom/xueqiu/android/base/h5/o;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/base/h5/n;->c:I

    .line 22
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/n;->a:Lcom/xueqiu/android/base/h5/l;

    .line 23
    iput-object p2, p0, Lcom/xueqiu/android/base/h5/n;->b:Lcom/xueqiu/android/base/h5/o;

    .line 24
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/n;->b:Lcom/xueqiu/android/base/h5/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/n;->b:Lcom/xueqiu/android/base/h5/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/o;->b()V

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/base/h5/n;->c:I

    .line 51
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 56
    iget v0, p0, Lcom/xueqiu/android/base/h5/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/base/h5/n;->c:I

    .line 57
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/n;->b:Lcom/xueqiu/android/base/h5/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/o;->c()V

    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/n;->a:Lcom/xueqiu/android/base/h5/l;

    .line 1341
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/l;->a:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->z()V

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 28
    iget-object v1, p0, Lcom/xueqiu/android/base/h5/n;->a:Lcom/xueqiu/android/base/h5/l;

    invoke-virtual {v1, p2}, Lcom/xueqiu/android/base/h5/l;->a(Ljava/lang/String;)Z

    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 40
    :goto_0
    return v0

    .line 36
    :cond_0
    iget v1, p0, Lcom/xueqiu/android/base/h5/n;->c:I

    if-lez v1, :cond_1

    .line 37
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    check-cast p1, Lcom/xueqiu/android/common/widget/SNBWebView;

    invoke-virtual {p1, p2}, Lcom/xueqiu/android/common/widget/SNBWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
