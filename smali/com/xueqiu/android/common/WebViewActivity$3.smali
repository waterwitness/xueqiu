.class final Lcom/xueqiu/android/common/WebViewActivity$3;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/WebViewActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/WebViewActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/xueqiu/android/common/WebViewActivity$3;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 332
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$3;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WebViewActivity;->i(Lcom/xueqiu/android/common/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$3;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WebViewActivity;->i(Lcom/xueqiu/android/common/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 339
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 340
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$3;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/WebViewActivity;->i(Lcom/xueqiu/android/common/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/xueqiu/android/common/WebViewActivity$3;->a:Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v0, p2}, Lcom/xueqiu/android/common/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method
